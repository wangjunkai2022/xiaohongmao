package org.bouncycastle.pqc.crypto.qtesla;

import org.bouncycastle.crypto.digests.CSHAKEDigest;
import org.bouncycastle.crypto.digests.SHAKEDigest;

/* loaded from: classes5.dex */
class HashUtils {
    static final int SECURE_HASH_ALGORITHM_KECCAK_128_RATE = 168;
    static final int SECURE_HASH_ALGORITHM_KECCAK_256_RATE = 136;

    HashUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void customizableSecureHashAlgorithmKECCAK128Simple(byte[] bArr, int i4, int i10, short s9, byte[] bArr2, int i11, int i12) {
        CSHAKEDigest cSHAKEDigest = new CSHAKEDigest(128, null, new byte[]{(byte) s9, (byte) (s9 >> 8)});
        cSHAKEDigest.update(bArr2, i11, i12);
        cSHAKEDigest.doFinal(bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void customizableSecureHashAlgorithmKECCAK256Simple(byte[] bArr, int i4, int i10, short s9, byte[] bArr2, int i11, int i12) {
        CSHAKEDigest cSHAKEDigest = new CSHAKEDigest(256, null, new byte[]{(byte) s9, (byte) (s9 >> 8)});
        cSHAKEDigest.update(bArr2, i11, i12);
        cSHAKEDigest.doFinal(bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void secureHashAlgorithmKECCAK128(byte[] bArr, int i4, int i10, byte[] bArr2, int i11, int i12) {
        SHAKEDigest sHAKEDigest = new SHAKEDigest(128);
        sHAKEDigest.update(bArr2, i11, i12);
        sHAKEDigest.doFinal(bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void secureHashAlgorithmKECCAK256(byte[] bArr, int i4, int i10, byte[] bArr2, int i11, int i12) {
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr2, i11, i12);
        sHAKEDigest.doFinal(bArr, i4, i10);
    }
}
