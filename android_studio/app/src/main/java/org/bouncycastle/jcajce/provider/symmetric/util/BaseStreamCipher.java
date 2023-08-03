package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.jcajce.PKCS12Key;
import org.bouncycastle.jcajce.PKCS12KeyWithParameters;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;

/* loaded from: classes5.dex */
public class BaseStreamCipher extends BaseWrapCipher implements PBE {
    private Class[] availableSpecs;
    private StreamCipher cipher;
    private int digest;
    private int ivLength;
    private ParametersWithIV ivParam;
    private int keySizeInBits;
    private String pbeAlgorithm;
    private PBEParameterSpec pbeSpec;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseStreamCipher(StreamCipher streamCipher, int i4) {
        this(streamCipher, i4, -1, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseStreamCipher(StreamCipher streamCipher, int i4, int i10) {
        this(streamCipher, i4, i10, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseStreamCipher(StreamCipher streamCipher, int i4, int i10, int i11) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.cipher = streamCipher;
        this.ivLength = i4;
        this.keySizeInBits = i10;
        this.digest = i11;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineDoFinal(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws ShortBufferException {
        if (i11 + i10 <= bArr2.length) {
            if (i10 != 0) {
                this.cipher.processBytes(bArr, i4, i10, bArr2, i11);
            }
            this.cipher.reset();
            return i10;
        }
        throw new ShortBufferException("output buffer too short for input.");
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected byte[] engineDoFinal(byte[] bArr, int i4, int i10) {
        if (i10 == 0) {
            this.cipher.reset();
            return new byte[0];
        }
        byte[] engineUpdate = engineUpdate(bArr, i4, i10);
        this.cipher.reset();
        return engineUpdate;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineGetBlockSize() {
        return 0;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected byte[] engineGetIV() {
        ParametersWithIV parametersWithIV = this.ivParam;
        if (parametersWithIV != null) {
            return parametersWithIV.getIV();
        }
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineGetOutputSize(int i4) {
        return i4;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected AlgorithmParameters engineGetParameters() {
        if (this.engineParams == null) {
            if (this.pbeSpec != null) {
                try {
                    AlgorithmParameters createParametersInstance = createParametersInstance(this.pbeAlgorithm);
                    createParametersInstance.init(this.pbeSpec);
                    return createParametersInstance;
                } catch (Exception unused) {
                    return null;
                }
            } else if (this.ivParam != null) {
                String algorithmName = this.cipher.getAlgorithmName();
                if (algorithmName.indexOf(47) >= 0) {
                    algorithmName = algorithmName.substring(0, algorithmName.indexOf(47));
                }
                if (algorithmName.startsWith("ChaCha7539")) {
                    algorithmName = "ChaCha7539";
                } else if (algorithmName.startsWith("Grain")) {
                    algorithmName = "Grainv1";
                } else if (algorithmName.startsWith("HC")) {
                    int indexOf = algorithmName.indexOf(45);
                    algorithmName = algorithmName.substring(0, indexOf) + algorithmName.substring(indexOf + 1);
                }
                try {
                    AlgorithmParameters createParametersInstance2 = createParametersInstance(algorithmName);
                    this.engineParams = createParametersInstance2;
                    createParametersInstance2.init(new IvParameterSpec(this.ivParam.getIV()));
                } catch (Exception e4) {
                    throw new RuntimeException(e4.toString());
                }
            }
        }
        return this.engineParams;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineInit(int i4, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec;
        if (algorithmParameters != null) {
            algorithmParameterSpec = SpecUtil.extractSpec(algorithmParameters, this.availableSpecs);
            if (algorithmParameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            algorithmParameterSpec = null;
        }
        engineInit(i4, key, algorithmParameterSpec, secureRandom);
        this.engineParams = algorithmParameters;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineInit(int i4, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i4, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e4) {
            throw new InvalidKeyException(e4.getMessage());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineInit(int i4, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        ParametersWithIV parametersWithIV;
        CipherParameters keyParameter;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.engineParams = null;
        if (!(key instanceof SecretKey)) {
            throw new InvalidKeyException("Key for algorithm " + key.getAlgorithm() + " not suitable for symmetric enryption.");
        }
        if (key instanceof PKCS12Key) {
            PKCS12Key pKCS12Key = (PKCS12Key) key;
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.pbeSpec = pBEParameterSpec;
            if ((pKCS12Key instanceof PKCS12KeyWithParameters) && pBEParameterSpec == null) {
                PKCS12KeyWithParameters pKCS12KeyWithParameters = (PKCS12KeyWithParameters) pKCS12Key;
                this.pbeSpec = new PBEParameterSpec(pKCS12KeyWithParameters.getSalt(), pKCS12KeyWithParameters.getIterationCount());
            }
            parametersWithIV = PBE.Util.makePBEParameters(pKCS12Key.getEncoded(), 2, this.digest, this.keySizeInBits, this.ivLength * 8, this.pbeSpec, this.cipher.getAlgorithmName());
        } else {
            if (key instanceof BCPBEKey) {
                BCPBEKey bCPBEKey = (BCPBEKey) key;
                this.pbeAlgorithm = bCPBEKey.getOID() != null ? bCPBEKey.getOID().getId() : bCPBEKey.getAlgorithm();
                if (bCPBEKey.getParam() != null) {
                    keyParameter = bCPBEKey.getParam();
                    this.pbeSpec = new PBEParameterSpec(bCPBEKey.getSalt(), bCPBEKey.getIterationCount());
                } else if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                } else {
                    CipherParameters makePBEParameters = PBE.Util.makePBEParameters(bCPBEKey, algorithmParameterSpec, this.cipher.getAlgorithmName());
                    this.pbeSpec = (PBEParameterSpec) algorithmParameterSpec;
                    keyParameter = makePBEParameters;
                }
                if (bCPBEKey.getIvSize() != 0) {
                    this.ivParam = (ParametersWithIV) keyParameter;
                }
            } else if (algorithmParameterSpec == null) {
                if (this.digest > 0) {
                    throw new InvalidKeyException("Algorithm requires a PBE key");
                }
                keyParameter = new KeyParameter(key.getEncoded());
            } else if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unknown parameter type.");
            } else {
                ParametersWithIV parametersWithIV2 = new ParametersWithIV(new KeyParameter(key.getEncoded()), ((IvParameterSpec) algorithmParameterSpec).getIV());
                this.ivParam = parametersWithIV2;
                parametersWithIV = parametersWithIV2;
            }
            parametersWithIV = keyParameter;
        }
        if (this.ivLength != 0 && !(parametersWithIV instanceof ParametersWithIV)) {
            if (secureRandom == null) {
                secureRandom = CryptoServicesRegistrar.getSecureRandom();
            }
            if (i4 != 1 && i4 != 3) {
                throw new InvalidAlgorithmParameterException("no IV set when one expected");
            }
            byte[] bArr = new byte[this.ivLength];
            secureRandom.nextBytes(bArr);
            ParametersWithIV parametersWithIV3 = new ParametersWithIV(parametersWithIV, bArr);
            this.ivParam = parametersWithIV3;
            parametersWithIV = parametersWithIV3;
        }
        try {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            throw new InvalidParameterException("unknown opmode " + i4 + " passed");
                        }
                    }
                }
                this.cipher.init(false, parametersWithIV);
                return;
            }
            this.cipher.init(true, parametersWithIV);
        } catch (Exception e4) {
            throw new InvalidKeyException(e4.getMessage());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineSetMode(String str) throws NoSuchAlgorithmException {
        if (str.equalsIgnoreCase("ECB") || str.equals("NONE")) {
            return;
        }
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineSetPadding(String str) throws NoSuchPaddingException {
        if (str.equalsIgnoreCase("NoPadding")) {
            return;
        }
        throw new NoSuchPaddingException("Padding " + str + " unknown.");
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineUpdate(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws ShortBufferException {
        if (i11 + i10 <= bArr2.length) {
            try {
                this.cipher.processBytes(bArr, i4, i10, bArr2, i11);
                return i10;
            } catch (DataLengthException e4) {
                throw new IllegalStateException(e4.getMessage());
            }
        }
        throw new ShortBufferException("output buffer too short for input.");
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected byte[] engineUpdate(byte[] bArr, int i4, int i10) {
        byte[] bArr2 = new byte[i10];
        this.cipher.processBytes(bArr, i4, i10, bArr2, 0);
        return bArr2;
    }
}
