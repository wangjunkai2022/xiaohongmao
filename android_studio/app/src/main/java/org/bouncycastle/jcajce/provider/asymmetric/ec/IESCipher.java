package org.bouncycastle.jcajce.provider.asymmetric.ec;

import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.KeyEncoder;
import org.bouncycastle.crypto.agreement.ECDHBasicAgreement;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.engines.IESEngine;
import org.bouncycastle.crypto.generators.ECKeyPairGenerator;
import org.bouncycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.bouncycastle.crypto.generators.KDF2BytesGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyGenerationParameters;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.IESWithCipherParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.parsers.ECIESPublicKeyParser;
import org.bouncycastle.crypto.util.DigestFactory;
import org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.bouncycastle.jcajce.provider.asymmetric.util.IESUtil;
import org.bouncycastle.jcajce.provider.util.BadBlockException;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.ECKey;
import org.bouncycastle.jce.interfaces.IESKey;
import org.bouncycastle.jce.spec.IESParameterSpec;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class IESCipher extends CipherSpi {
    private ByteArrayOutputStream buffer;
    private boolean dhaesMode;
    private IESEngine engine;
    private AlgorithmParameters engineParam;
    private IESParameterSpec engineSpec;
    private final JcaJceHelper helper;
    private int ivLength;
    private AsymmetricKeyParameter key;
    private AsymmetricKeyParameter otherKeyParameter;
    private SecureRandom random;
    private int state;

    /* loaded from: classes4.dex */
    public static class ECIES extends IESCipher {
        public ECIES() {
            this(DigestFactory.createSHA1(), DigestFactory.createSHA1());
        }

        public ECIES(Digest digest, Digest digest2) {
            super(new IESEngine(new ECDHBasicAgreement(), new KDF2BytesGenerator(digest), new HMac(digest2)));
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithAESCBC extends ECIESwithCipher {
        public ECIESwithAESCBC() {
            super(new CBCBlockCipher(new AESEngine()), 16);
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithCipher extends IESCipher {
        public ECIESwithCipher(BlockCipher blockCipher, int i4) {
            this(blockCipher, i4, DigestFactory.createSHA1(), DigestFactory.createSHA1());
        }

        public ECIESwithCipher(BlockCipher blockCipher, int i4, Digest digest, Digest digest2) {
            super(new IESEngine(new ECDHBasicAgreement(), new KDF2BytesGenerator(digest), new HMac(digest2), new PaddedBufferedBlockCipher(blockCipher)), i4);
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithDESedeCBC extends ECIESwithCipher {
        public ECIESwithDESedeCBC() {
            super(new CBCBlockCipher(new DESedeEngine()), 8);
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA256 extends ECIES {
        public ECIESwithSHA256() {
            super(DigestFactory.createSHA256(), DigestFactory.createSHA256());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA256andAESCBC extends ECIESwithCipher {
        public ECIESwithSHA256andAESCBC() {
            super(new CBCBlockCipher(new AESEngine()), 16, DigestFactory.createSHA256(), DigestFactory.createSHA256());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA256andDESedeCBC extends ECIESwithCipher {
        public ECIESwithSHA256andDESedeCBC() {
            super(new CBCBlockCipher(new DESedeEngine()), 8, DigestFactory.createSHA256(), DigestFactory.createSHA256());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA384 extends ECIES {
        public ECIESwithSHA384() {
            super(DigestFactory.createSHA384(), DigestFactory.createSHA384());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA384andAESCBC extends ECIESwithCipher {
        public ECIESwithSHA384andAESCBC() {
            super(new CBCBlockCipher(new AESEngine()), 16, DigestFactory.createSHA384(), DigestFactory.createSHA384());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA384andDESedeCBC extends ECIESwithCipher {
        public ECIESwithSHA384andDESedeCBC() {
            super(new CBCBlockCipher(new DESedeEngine()), 8, DigestFactory.createSHA384(), DigestFactory.createSHA384());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA512 extends ECIES {
        public ECIESwithSHA512() {
            super(DigestFactory.createSHA512(), DigestFactory.createSHA512());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA512andAESCBC extends ECIESwithCipher {
        public ECIESwithSHA512andAESCBC() {
            super(new CBCBlockCipher(new AESEngine()), 16, DigestFactory.createSHA512(), DigestFactory.createSHA512());
        }
    }

    /* loaded from: classes4.dex */
    public static class ECIESwithSHA512andDESedeCBC extends ECIESwithCipher {
        public ECIESwithSHA512andDESedeCBC() {
            super(new CBCBlockCipher(new DESedeEngine()), 8, DigestFactory.createSHA512(), DigestFactory.createSHA512());
        }
    }

    public IESCipher(IESEngine iESEngine) {
        this.helper = new BCJcaJceHelper();
        this.state = -1;
        this.buffer = new ByteArrayOutputStream();
        this.engineParam = null;
        this.engineSpec = null;
        this.dhaesMode = false;
        this.otherKeyParameter = null;
        this.engine = iESEngine;
        this.ivLength = 0;
    }

    public IESCipher(IESEngine iESEngine, int i4) {
        this.helper = new BCJcaJceHelper();
        this.state = -1;
        this.buffer = new ByteArrayOutputStream();
        this.engineParam = null;
        this.engineSpec = null;
        this.dhaesMode = false;
        this.otherKeyParameter = null;
        this.engine = iESEngine;
        this.ivLength = i4;
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i4, i10);
        System.arraycopy(engineDoFinal, 0, bArr2, i11, engineDoFinal.length);
        return engineDoFinal.length;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i4, int i10) throws IllegalBlockSizeException, BadPaddingException {
        if (i10 != 0) {
            this.buffer.write(bArr, i4, i10);
        }
        byte[] byteArray = this.buffer.toByteArray();
        this.buffer.reset();
        CipherParameters iESWithCipherParameters = new IESWithCipherParameters(this.engineSpec.getDerivationV(), this.engineSpec.getEncodingV(), this.engineSpec.getMacKeySize(), this.engineSpec.getCipherKeySize());
        if (this.engineSpec.getNonce() != null) {
            iESWithCipherParameters = new ParametersWithIV(iESWithCipherParameters, this.engineSpec.getNonce());
        }
        ECDomainParameters parameters = ((ECKeyParameters) this.key).getParameters();
        AsymmetricKeyParameter asymmetricKeyParameter = this.otherKeyParameter;
        if (asymmetricKeyParameter != null) {
            try {
                int i11 = this.state;
                if (i11 != 1 && i11 != 3) {
                    this.engine.init(false, this.key, asymmetricKeyParameter, iESWithCipherParameters);
                    return this.engine.processBlock(byteArray, 0, byteArray.length);
                }
                this.engine.init(true, asymmetricKeyParameter, this.key, iESWithCipherParameters);
                return this.engine.processBlock(byteArray, 0, byteArray.length);
            } catch (Exception e4) {
                throw new BadBlockException("unable to process block", e4);
            }
        }
        int i12 = this.state;
        if (i12 != 1 && i12 != 3) {
            if (i12 == 2 || i12 == 4) {
                try {
                    this.engine.init(this.key, iESWithCipherParameters, new ECIESPublicKeyParser(parameters));
                    return this.engine.processBlock(byteArray, 0, byteArray.length);
                } catch (InvalidCipherTextException e10) {
                    throw new BadBlockException("unable to process block", e10);
                }
            }
            throw new IllegalStateException("cipher not initialised");
        }
        ECKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
        eCKeyPairGenerator.init(new ECKeyGenerationParameters(parameters, this.random));
        final boolean pointCompression = this.engineSpec.getPointCompression();
        try {
            this.engine.init(this.key, iESWithCipherParameters, new EphemeralKeyPairGenerator(eCKeyPairGenerator, new KeyEncoder() { // from class: org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher.1
                @Override // org.bouncycastle.crypto.KeyEncoder
                public byte[] getEncoded(AsymmetricKeyParameter asymmetricKeyParameter2) {
                    return ((ECPublicKeyParameters) asymmetricKeyParameter2).getQ().getEncoded(pointCompression);
                }
            }));
            return this.engine.processBlock(byteArray, 0, byteArray.length);
        } catch (Exception e11) {
            throw new BadBlockException("unable to process block", e11);
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        if (this.engine.getCipher() != null) {
            return this.engine.getCipher().getBlockSize();
        }
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        IESParameterSpec iESParameterSpec = this.engineSpec;
        if (iESParameterSpec != null) {
            return iESParameterSpec.getNonce();
        }
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        if (key instanceof ECKey) {
            return ((ECKey) key).getParameters().getCurve().getFieldSize();
        }
        throw new IllegalArgumentException("not an EC key");
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i4) {
        BufferedBlockCipher cipher;
        if (this.key != null) {
            int macSize = this.engine.getMac().getMacSize();
            int fieldSize = this.otherKeyParameter == null ? ((((ECKeyParameters) this.key).getParameters().getCurve().getFieldSize() + 7) / 8) * 2 : 0;
            int size = this.buffer.size() + i4;
            if (this.engine.getCipher() != null) {
                int i10 = this.state;
                if (i10 == 1 || i10 == 3) {
                    cipher = this.engine.getCipher();
                } else if (i10 != 2 && i10 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                } else {
                    cipher = this.engine.getCipher();
                    size = (size - macSize) - fieldSize;
                }
                size = cipher.getOutputSize(size);
            }
            int i11 = this.state;
            if (i11 == 1 || i11 == 3) {
                return macSize + fieldSize + size;
            }
            if (i11 == 2 || i11 == 4) {
                return size;
            }
            throw new IllegalStateException("cipher not initialised");
        }
        throw new IllegalStateException("cipher not initialised");
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() {
        if (this.engineParam == null && this.engineSpec != null) {
            try {
                AlgorithmParameters createAlgorithmParameters = this.helper.createAlgorithmParameters("IES");
                this.engineParam = createAlgorithmParameters;
                createAlgorithmParameters.init(this.engineSpec);
            } catch (Exception e4) {
                throw new RuntimeException(e4.toString());
            }
        }
        return this.engineParam;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i4, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(IESParameterSpec.class);
            } catch (Exception e4) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e4.toString());
            }
        } else {
            parameterSpec = null;
        }
        this.engineParam = algorithmParameters;
        engineInit(i4, key, parameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i4, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i4, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e4) {
            throw new IllegalArgumentException("cannot handle supplied parameter spec: " + e4.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i4, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        IESParameterSpec iESParameterSpec;
        AsymmetricKeyParameter generatePublicKeyParameter;
        PrivateKey privateKey;
        byte[] bArr = null;
        this.otherKeyParameter = null;
        if (algorithmParameterSpec == null) {
            int i10 = this.ivLength;
            if (i10 != 0 && i4 == 1) {
                bArr = new byte[i10];
                secureRandom.nextBytes(bArr);
            }
            iESParameterSpec = IESUtil.guessParameterSpec(this.engine.getCipher(), bArr);
        } else if (!(algorithmParameterSpec instanceof IESParameterSpec)) {
            throw new InvalidAlgorithmParameterException("must be passed IES parameters");
        } else {
            iESParameterSpec = (IESParameterSpec) algorithmParameterSpec;
        }
        this.engineSpec = iESParameterSpec;
        byte[] nonce = this.engineSpec.getNonce();
        int i11 = this.ivLength;
        if (i11 != 0 && (nonce == null || nonce.length != i11)) {
            throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.ivLength + " bytes long");
        }
        if (i4 == 1 || i4 == 3) {
            if (!(key instanceof PublicKey)) {
                if (!(key instanceof IESKey)) {
                    throw new InvalidKeyException("must be passed recipient's public EC key for encryption");
                }
                IESKey iESKey = (IESKey) key;
                this.key = ECUtils.generatePublicKeyParameter(iESKey.getPublic());
                this.otherKeyParameter = ECUtil.generatePrivateKeyParameter(iESKey.getPrivate());
                this.random = secureRandom;
                this.state = i4;
                this.buffer.reset();
            }
            generatePublicKeyParameter = ECUtils.generatePublicKeyParameter((PublicKey) key);
        } else if (i4 != 2 && i4 != 4) {
            throw new InvalidKeyException("must be passed EC key");
        } else {
            if (key instanceof PrivateKey) {
                privateKey = (PrivateKey) key;
            } else if (!(key instanceof IESKey)) {
                throw new InvalidKeyException("must be passed recipient's private EC key for decryption");
            } else {
                IESKey iESKey2 = (IESKey) key;
                this.otherKeyParameter = ECUtils.generatePublicKeyParameter(iESKey2.getPublic());
                privateKey = iESKey2.getPrivate();
            }
            generatePublicKeyParameter = ECUtil.generatePrivateKeyParameter(privateKey);
        }
        this.key = generatePublicKeyParameter;
        this.random = secureRandom;
        this.state = i4;
        this.buffer.reset();
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        boolean z9;
        String upperCase = Strings.toUpperCase(str);
        if (upperCase.equals("NONE")) {
            z9 = false;
        } else if (!upperCase.equals("DHAES")) {
            throw new IllegalArgumentException("can't support mode " + str);
        } else {
            z9 = true;
        }
        this.dhaesMode = z9;
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        String upperCase = Strings.toUpperCase(str);
        if (!upperCase.equals("NOPADDING") && !upperCase.equals("PKCS5PADDING") && !upperCase.equals("PKCS7PADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        this.buffer.write(bArr, i4, i10);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i4, int i10) {
        this.buffer.write(bArr, i4, i10);
        return null;
    }
}
