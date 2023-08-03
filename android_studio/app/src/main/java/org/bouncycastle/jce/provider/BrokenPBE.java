package org.bouncycastle.jce.provider;

import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.generators.PKCS12ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S1ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey;

/* loaded from: classes5.dex */
public interface BrokenPBE {
    public static final int MD5 = 0;
    public static final int OLD_PKCS12 = 3;
    public static final int PKCS12 = 2;
    public static final int PKCS5S1 = 0;
    public static final int PKCS5S2 = 1;
    public static final int RIPEMD160 = 2;
    public static final int SHA1 = 1;

    /* loaded from: classes5.dex */
    public static class Util {
        private static PBEParametersGenerator makePBEGenerator(int i4, int i10) {
            if (i4 == 0) {
                if (i10 != 0) {
                    if (i10 == 1) {
                        return new PKCS5S1ParametersGenerator(new SHA1Digest());
                    }
                    throw new IllegalStateException("PKCS5 scheme 1 only supports only MD5 and SHA1.");
                }
                return new PKCS5S1ParametersGenerator(new MD5Digest());
            } else if (i4 == 1) {
                return new PKCS5S2ParametersGenerator();
            } else {
                if (i4 == 3) {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 2) {
                                return new OldPKCS12ParametersGenerator(new RIPEMD160Digest());
                            }
                            throw new IllegalStateException("unknown digest scheme for PBE encryption.");
                        }
                        return new OldPKCS12ParametersGenerator(new SHA1Digest());
                    }
                    return new OldPKCS12ParametersGenerator(new MD5Digest());
                } else if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            return new PKCS12ParametersGenerator(new RIPEMD160Digest());
                        }
                        throw new IllegalStateException("unknown digest scheme for PBE encryption.");
                    }
                    return new PKCS12ParametersGenerator(new SHA1Digest());
                } else {
                    return new PKCS12ParametersGenerator(new MD5Digest());
                }
            }
        }

        static CipherParameters makePBEMacParameters(BCPBEKey bCPBEKey, AlgorithmParameterSpec algorithmParameterSpec, int i4, int i10, int i11) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i4, i10);
            byte[] encoded = bCPBEKey.getEncoded();
            makePBEGenerator.init(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedMacParameters = makePBEGenerator.generateDerivedMacParameters(i11);
            for (int i12 = 0; i12 != encoded.length; i12++) {
                encoded[i12] = 0;
            }
            return generateDerivedMacParameters;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static CipherParameters makePBEParameters(BCPBEKey bCPBEKey, AlgorithmParameterSpec algorithmParameterSpec, int i4, int i10, String str, int i11, int i12) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i4, i10);
            byte[] encoded = bCPBEKey.getEncoded();
            makePBEGenerator.init(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedParameters = i12 != 0 ? makePBEGenerator.generateDerivedParameters(i11, i12) : makePBEGenerator.generateDerivedParameters(i11);
            if (str.startsWith("DES")) {
                if (generateDerivedParameters instanceof ParametersWithIV) {
                    setOddParity(((KeyParameter) ((ParametersWithIV) generateDerivedParameters).getParameters()).getKey());
                } else {
                    setOddParity(((KeyParameter) generateDerivedParameters).getKey());
                }
            }
            for (int i13 = 0; i13 != encoded.length; i13++) {
                encoded[i13] = 0;
            }
            return generateDerivedParameters;
        }

        private static void setOddParity(byte[] bArr) {
            for (int i4 = 0; i4 < bArr.length; i4++) {
                byte b10 = bArr[i4];
                bArr[i4] = (byte) ((((b10 >> 7) ^ ((((((b10 >> 1) ^ (b10 >> 2)) ^ (b10 >> 3)) ^ (b10 >> 4)) ^ (b10 >> 5)) ^ (b10 >> 6))) ^ 1) | (b10 & 254));
            }
        }
    }
}
