package org.bouncycastle.jcajce.provider.symmetric.util;

import com.facebook.imagepipeline.memory.c;
import com.qennnsad.aknkaksd.util.a1;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import java.util.Map;
import javax.crypto.MacSpi;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.RC2Parameters;
import org.bouncycastle.crypto.params.SkeinParameters;
import org.bouncycastle.jcajce.PKCS12Key;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;
import org.bouncycastle.jcajce.spec.AEADParameterSpec;
import org.bouncycastle.jcajce.spec.SkeinParameterSpec;

/* loaded from: classes5.dex */
public class BaseMac extends MacSpi implements PBE {
    private static final Class gcmSpecClass = ClassUtil.loadClass(BaseMac.class, "javax.crypto.spec.GCMParameterSpec");
    private int keySize;
    private Mac macEngine;
    private int pbeHash;
    private int scheme;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseMac(Mac mac) {
        this.scheme = 2;
        this.pbeHash = 1;
        this.keySize = a1.f54532a;
        this.macEngine = mac;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseMac(Mac mac, int i4, int i10, int i11) {
        this.macEngine = mac;
        this.scheme = i4;
        this.pbeHash = i10;
        this.keySize = i11;
    }

    private static Hashtable copyMap(Map map) {
        Hashtable hashtable = new Hashtable();
        for (Object obj : map.keySet()) {
            hashtable.put(obj, map.get(obj));
        }
        return hashtable;
    }

    @Override // javax.crypto.MacSpi
    protected byte[] engineDoFinal() {
        byte[] bArr = new byte[engineGetMacLength()];
        this.macEngine.doFinal(bArr, 0);
        return bArr;
    }

    @Override // javax.crypto.MacSpi
    protected int engineGetMacLength() {
        return this.macEngine.getMacSize();
    }

    @Override // javax.crypto.MacSpi
    protected void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters makePBEMacParameters;
        if (key == null) {
            throw new InvalidKeyException("key is null");
        }
        if (key instanceof PKCS12Key) {
            try {
                SecretKey secretKey = (SecretKey) key;
                try {
                    PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
                    if ((secretKey instanceof PBEKey) && pBEParameterSpec == null) {
                        PBEKey pBEKey = (PBEKey) secretKey;
                        pBEParameterSpec = new PBEParameterSpec(pBEKey.getSalt(), pBEKey.getIterationCount());
                    }
                    int i4 = 1;
                    int i10 = 256;
                    if (this.macEngine.getAlgorithmName().startsWith("GOST")) {
                        i4 = 6;
                    } else {
                        Mac mac = this.macEngine;
                        if ((mac instanceof HMac) && !mac.getAlgorithmName().startsWith("SHA-1")) {
                            if (this.macEngine.getAlgorithmName().startsWith("SHA-224")) {
                                i4 = 7;
                                i10 = 224;
                            } else if (this.macEngine.getAlgorithmName().startsWith("SHA-256")) {
                                i4 = 4;
                            } else if (this.macEngine.getAlgorithmName().startsWith("SHA-384")) {
                                i4 = 8;
                                i10 = c.f12563b;
                            } else if (this.macEngine.getAlgorithmName().startsWith("SHA-512")) {
                                i4 = 9;
                                i10 = 512;
                            } else if (!this.macEngine.getAlgorithmName().startsWith("RIPEMD160")) {
                                throw new InvalidAlgorithmParameterException("no PKCS12 mapping for HMAC: " + this.macEngine.getAlgorithmName());
                            } else {
                                i4 = 2;
                            }
                        }
                        i10 = a1.f54532a;
                    }
                    makePBEMacParameters = PBE.Util.makePBEMacParameters(secretKey, 2, i4, i10, pBEParameterSpec);
                } catch (Exception unused) {
                    throw new InvalidAlgorithmParameterException("PKCS12 requires a PBEParameterSpec");
                }
            } catch (Exception unused2) {
                throw new InvalidKeyException("PKCS12 requires a SecretKey/PBEKey");
            }
        } else if (key instanceof BCPBEKey) {
            BCPBEKey bCPBEKey = (BCPBEKey) key;
            if (bCPBEKey.getParam() != null) {
                makePBEMacParameters = bCPBEKey.getParam();
            } else if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
            } else {
                makePBEMacParameters = PBE.Util.makePBEMacParameters(bCPBEKey, algorithmParameterSpec);
            }
        } else if (algorithmParameterSpec instanceof PBEParameterSpec) {
            throw new InvalidAlgorithmParameterException("inappropriate parameter type: " + algorithmParameterSpec.getClass().getName());
        } else {
            makePBEMacParameters = new KeyParameter(key.getEncoded());
        }
        KeyParameter keyParameter = makePBEMacParameters instanceof ParametersWithIV ? (KeyParameter) makePBEMacParameters.getParameters() : makePBEMacParameters;
        if (algorithmParameterSpec instanceof AEADParameterSpec) {
            AEADParameterSpec aEADParameterSpec = (AEADParameterSpec) algorithmParameterSpec;
            makePBEMacParameters = new AEADParameters(keyParameter, aEADParameterSpec.getMacSizeInBits(), aEADParameterSpec.getNonce(), aEADParameterSpec.getAssociatedData());
        } else if (algorithmParameterSpec instanceof IvParameterSpec) {
            makePBEMacParameters = new ParametersWithIV(keyParameter, ((IvParameterSpec) algorithmParameterSpec).getIV());
        } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
            RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
            makePBEMacParameters = new ParametersWithIV(new RC2Parameters(keyParameter.getKey(), rC2ParameterSpec.getEffectiveKeyBits()), rC2ParameterSpec.getIV());
        } else if (algorithmParameterSpec instanceof SkeinParameterSpec) {
            makePBEMacParameters = new SkeinParameters.Builder(copyMap(((SkeinParameterSpec) algorithmParameterSpec).getParameters())).setKey(keyParameter.getKey()).build();
        } else if (algorithmParameterSpec == null) {
            makePBEMacParameters = new KeyParameter(key.getEncoded());
        } else {
            Class cls = gcmSpecClass;
            if (cls != null && cls.isAssignableFrom(algorithmParameterSpec.getClass())) {
                makePBEMacParameters = GcmSpecUtil.extractAeadParameters(keyParameter, algorithmParameterSpec);
            } else if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unknown parameter type: " + algorithmParameterSpec.getClass().getName());
            }
        }
        try {
            this.macEngine.init(makePBEMacParameters);
        } catch (Exception e4) {
            throw new InvalidAlgorithmParameterException("cannot initialize MAC: " + e4.getMessage());
        }
    }

    @Override // javax.crypto.MacSpi
    protected void engineReset() {
        this.macEngine.reset();
    }

    @Override // javax.crypto.MacSpi
    protected void engineUpdate(byte b10) {
        this.macEngine.update(b10);
    }

    @Override // javax.crypto.MacSpi
    protected void engineUpdate(byte[] bArr, int i4, int i10) {
        this.macEngine.update(bArr, i4, i10);
    }
}
