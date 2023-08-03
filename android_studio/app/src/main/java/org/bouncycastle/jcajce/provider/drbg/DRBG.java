package org.bouncycastle.jcajce.provider.drbg;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.crypto.prng.EntropySourceProvider;
import org.bouncycastle.crypto.prng.SP800SecureRandom;
import org.bouncycastle.crypto.prng.SP800SecureRandomBuilder;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.ClassUtil;
import org.bouncycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.Properties;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class DRBG {
    private static final String PREFIX = "org.bouncycastle.jcajce.provider.drbg.DRBG";
    private static final String[][] initialEntropySourceNames = {new String[]{"sun.security.provider.Sun", "sun.security.provider.SecureRandom"}, new String[]{"org.apache.harmony.security.provider.crypto.CryptoProvider", "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"}, new String[]{"com.android.org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLRandom"}, new String[]{"org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLRandom"}};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class CoreSecureRandom extends SecureRandom {
        CoreSecureRandom(Object[] objArr) {
            super((SecureRandomSpi) objArr[1], (Provider) objArr[0]);
        }
    }

    /* loaded from: classes4.dex */
    public static class Default extends SecureRandomSpi {
        private static final SecureRandom random = DRBG.createBaseRandom(true);

        @Override // java.security.SecureRandomSpi
        protected byte[] engineGenerateSeed(int i4) {
            return random.generateSeed(i4);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineNextBytes(byte[] bArr) {
            random.nextBytes(bArr);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineSetSeed(byte[] bArr) {
            random.setSeed(bArr);
        }
    }

    /* loaded from: classes4.dex */
    private static class HybridRandomProvider extends Provider {
        protected HybridRandomProvider() {
            super("BCHEP", 1.0d, "Bouncy Castle Hybrid Entropy Provider");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class HybridSecureRandom extends SecureRandom {
        private final SecureRandom baseRandom;
        private final SP800SecureRandom drbg;
        private final AtomicInteger samples;
        private final AtomicBoolean seedAvailable;

        /* loaded from: classes4.dex */
        private class SignallingEntropySource implements EntropySource {
            private final int byteLength;
            private final AtomicReference entropy = new AtomicReference();
            private final AtomicBoolean scheduled = new AtomicBoolean(false);

            /* loaded from: classes4.dex */
            private class EntropyGatherer implements Runnable {
                private final int numBytes;

                EntropyGatherer(int i4) {
                    this.numBytes = i4;
                }

                private void sleep(long j4) {
                    try {
                        Thread.sleep(j4);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    String propertyValue = Properties.getPropertyValue("org.bouncycastle.drbg.gather_pause_secs");
                    long j4 = 5000;
                    if (propertyValue != null) {
                        try {
                            j4 = Long.parseLong(propertyValue) * 1000;
                        } catch (Exception unused) {
                        }
                    }
                    int i4 = this.numBytes;
                    byte[] bArr = new byte[i4];
                    for (int i10 = 0; i10 < SignallingEntropySource.this.byteLength / 8; i10++) {
                        sleep(j4);
                        byte[] generateSeed = HybridSecureRandom.this.baseRandom.generateSeed(8);
                        System.arraycopy(generateSeed, 0, bArr, i10 * 8, generateSeed.length);
                    }
                    int i11 = SignallingEntropySource.this.byteLength - ((SignallingEntropySource.this.byteLength / 8) * 8);
                    if (i11 != 0) {
                        sleep(j4);
                        byte[] generateSeed2 = HybridSecureRandom.this.baseRandom.generateSeed(i11);
                        System.arraycopy(generateSeed2, 0, bArr, i4 - generateSeed2.length, generateSeed2.length);
                    }
                    SignallingEntropySource.this.entropy.set(bArr);
                    HybridSecureRandom.this.seedAvailable.set(true);
                }
            }

            SignallingEntropySource(int i4) {
                this.byteLength = (i4 + 7) / 8;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public int entropySize() {
                return this.byteLength * 8;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public byte[] getEntropy() {
                byte[] bArr = (byte[]) this.entropy.getAndSet(null);
                if (bArr == null || bArr.length != this.byteLength) {
                    bArr = HybridSecureRandom.this.baseRandom.generateSeed(this.byteLength);
                } else {
                    this.scheduled.set(false);
                }
                if (!this.scheduled.getAndSet(true)) {
                    Thread thread = new Thread(new EntropyGatherer(this.byteLength));
                    thread.setDaemon(true);
                    thread.start();
                }
                return bArr;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public boolean isPredictionResistant() {
                return true;
            }
        }

        HybridSecureRandom() {
            super(null, new HybridRandomProvider());
            this.seedAvailable = new AtomicBoolean(false);
            this.samples = new AtomicInteger(0);
            SecureRandom createInitialEntropySource = DRBG.createInitialEntropySource();
            this.baseRandom = createInitialEntropySource;
            this.drbg = new SP800SecureRandomBuilder(new EntropySourceProvider() { // from class: org.bouncycastle.jcajce.provider.drbg.DRBG.HybridSecureRandom.1
                @Override // org.bouncycastle.crypto.prng.EntropySourceProvider
                public EntropySource get(int i4) {
                    return new SignallingEntropySource(i4);
                }
            }).setPersonalizationString(Strings.toByteArray("Bouncy Castle Hybrid Entropy Source")).buildHMAC(new HMac(new SHA512Digest()), createInitialEntropySource.generateSeed(32), false);
        }

        @Override // java.security.SecureRandom
        public byte[] generateSeed(int i4) {
            byte[] bArr = new byte[i4];
            if (this.samples.getAndIncrement() > 20 && this.seedAvailable.getAndSet(false)) {
                this.samples.set(0);
                this.drbg.reseed(null);
            }
            this.drbg.nextBytes(bArr);
            return bArr;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void setSeed(long j4) {
            SP800SecureRandom sP800SecureRandom = this.drbg;
            if (sP800SecureRandom != null) {
                sP800SecureRandom.setSeed(j4);
            }
        }

        @Override // java.security.SecureRandom
        public void setSeed(byte[] bArr) {
            SP800SecureRandom sP800SecureRandom = this.drbg;
            if (sP800SecureRandom != null) {
                sP800SecureRandom.setSeed(bArr);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class Mappings extends AsymmetricAlgorithmProvider {
        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("SecureRandom.DEFAULT", DRBG.PREFIX + "$Default");
            configurableProvider.addAlgorithm("SecureRandom.NONCEANDIV", DRBG.PREFIX + "$NonceAndIV");
        }
    }

    /* loaded from: classes4.dex */
    public static class NonceAndIV extends SecureRandomSpi {
        private static final SecureRandom random = DRBG.createBaseRandom(false);

        @Override // java.security.SecureRandomSpi
        protected byte[] engineGenerateSeed(int i4) {
            return random.generateSeed(i4);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineNextBytes(byte[] bArr) {
            random.nextBytes(bArr);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineSetSeed(byte[] bArr) {
            random.setSeed(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class URLSeededSecureRandom extends SecureRandom {
        private final InputStream seedStream;

        URLSeededSecureRandom(final URL url) {
            super(null, new HybridRandomProvider());
            this.seedStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() { // from class: org.bouncycastle.jcajce.provider.drbg.DRBG.URLSeededSecureRandom.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.security.PrivilegedAction
                public InputStream run() {
                    try {
                        return url.openStream();
                    } catch (IOException unused) {
                        throw new IllegalStateException("unable to open random source");
                    }
                }
            });
        }

        private int privilegedRead(final byte[] bArr, final int i4, final int i10) {
            return ((Integer) AccessController.doPrivileged(new PrivilegedAction<Integer>() { // from class: org.bouncycastle.jcajce.provider.drbg.DRBG.URLSeededSecureRandom.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.security.PrivilegedAction
                public Integer run() {
                    try {
                        return Integer.valueOf(URLSeededSecureRandom.this.seedStream.read(bArr, i4, i10));
                    } catch (IOException unused) {
                        throw new InternalError("unable to read random source");
                    }
                }
            })).intValue();
        }

        @Override // java.security.SecureRandom
        public byte[] generateSeed(int i4) {
            byte[] bArr;
            synchronized (this) {
                bArr = new byte[i4];
                int i10 = 0;
                while (i10 != i4) {
                    int privilegedRead = privilegedRead(bArr, i10, i4 - i10);
                    if (privilegedRead <= -1) {
                        break;
                    }
                    i10 += privilegedRead;
                }
                if (i10 != i4) {
                    throw new InternalError("unable to fully read random source");
                }
            }
            return bArr;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void setSeed(long j4) {
        }

        @Override // java.security.SecureRandom
        public void setSeed(byte[] bArr) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom createBaseRandom(boolean z9) {
        if (Properties.getPropertyValue("org.bouncycastle.drbg.entropysource") == null) {
            HybridSecureRandom hybridSecureRandom = new HybridSecureRandom();
            byte[] generateSeed = hybridSecureRandom.generateSeed(16);
            return new SP800SecureRandomBuilder(hybridSecureRandom, true).setPersonalizationString(z9 ? generateDefaultPersonalizationString(generateSeed) : generateNonceIVPersonalizationString(generateSeed)).buildHash(new SHA512Digest(), hybridSecureRandom.generateSeed(32), z9);
        }
        EntropySourceProvider createEntropySource = createEntropySource();
        EntropySource entropySource = createEntropySource.get(128);
        byte[] entropy = entropySource.getEntropy();
        return new SP800SecureRandomBuilder(createEntropySource).setPersonalizationString(z9 ? generateDefaultPersonalizationString(entropy) : generateNonceIVPersonalizationString(entropy)).buildHash(new SHA512Digest(), Arrays.concatenate(entropySource.getEntropy(), entropySource.getEntropy()), z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom createCoreSecureRandom() {
        if (Security.getProperty("securerandom.source") == null) {
            return new CoreSecureRandom(findSource());
        }
        try {
            return new URLSeededSecureRandom(new URL(Security.getProperty("securerandom.source")));
        } catch (Exception unused) {
            return new CoreSecureRandom(findSource());
        }
    }

    private static EntropySourceProvider createEntropySource() {
        final String propertyValue = Properties.getPropertyValue("org.bouncycastle.drbg.entropysource");
        return (EntropySourceProvider) AccessController.doPrivileged(new PrivilegedAction<EntropySourceProvider>() { // from class: org.bouncycastle.jcajce.provider.drbg.DRBG.3
            @Override // java.security.PrivilegedAction
            public EntropySourceProvider run() {
                try {
                    return (EntropySourceProvider) ClassUtil.loadClass(DRBG.class, propertyValue).newInstance();
                } catch (Exception e4) {
                    throw new IllegalStateException("entropy source " + propertyValue + " not created: " + e4.getMessage(), e4);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom createInitialEntropySource() {
        return ((Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: org.bouncycastle.jcajce.provider.drbg.DRBG.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public Boolean run() {
                try {
                    return Boolean.valueOf(SecureRandom.class.getMethod("getInstanceStrong", new Class[0]) != null);
                } catch (Exception unused) {
                    return Boolean.FALSE;
                }
            }
        })).booleanValue() ? (SecureRandom) AccessController.doPrivileged(new PrivilegedAction<SecureRandom>() { // from class: org.bouncycastle.jcajce.provider.drbg.DRBG.2
            @Override // java.security.PrivilegedAction
            public SecureRandom run() {
                try {
                    return (SecureRandom) SecureRandom.class.getMethod("getInstanceStrong", new Class[0]).invoke(null, new Object[0]);
                } catch (Exception unused) {
                    return DRBG.createCoreSecureRandom();
                }
            }
        }) : createCoreSecureRandom();
    }

    private static final Object[] findSource() {
        int i4 = 0;
        while (true) {
            String[][] strArr = initialEntropySourceNames;
            if (i4 >= strArr.length) {
                return null;
            }
            String[] strArr2 = strArr[i4];
            try {
                return new Object[]{Class.forName(strArr2[0]).newInstance(), Class.forName(strArr2[1]).newInstance()};
            } catch (Throwable unused) {
                i4++;
            }
        }
    }

    private static byte[] generateDefaultPersonalizationString(byte[] bArr) {
        return Arrays.concatenate(Strings.toByteArray("Default"), bArr, Pack.longToBigEndian(Thread.currentThread().getId()), Pack.longToBigEndian(System.currentTimeMillis()));
    }

    private static byte[] generateNonceIVPersonalizationString(byte[] bArr) {
        return Arrays.concatenate(Strings.toByteArray("Nonce"), bArr, Pack.longToLittleEndian(Thread.currentThread().getId()), Pack.longToLittleEndian(System.currentTimeMillis()));
    }
}
