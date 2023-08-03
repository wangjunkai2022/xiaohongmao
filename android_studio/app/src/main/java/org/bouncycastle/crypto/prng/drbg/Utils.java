package org.bouncycastle.crypto.prng.drbg;

import java.util.Hashtable;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.pqc.crypto.sphincs.SPHINCSKeyParameters;
import org.bouncycastle.util.Integers;

/* loaded from: classes4.dex */
class Utils {
    static final Hashtable maxSecurityStrengths;

    static {
        Hashtable hashtable = new Hashtable();
        maxSecurityStrengths = hashtable;
        hashtable.put("SHA-1", Integers.valueOf(128));
        hashtable.put("SHA-224", Integers.valueOf(192));
        hashtable.put("SHA-256", Integers.valueOf(256));
        hashtable.put("SHA-384", Integers.valueOf(256));
        hashtable.put("SHA-512", Integers.valueOf(256));
        hashtable.put("SHA-512/224", Integers.valueOf(192));
        hashtable.put(SPHINCSKeyParameters.SHA512_256, Integers.valueOf(256));
    }

    Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getMaxSecurityStrength(Digest digest) {
        return ((Integer) maxSecurityStrengths.get(digest.getAlgorithmName())).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getMaxSecurityStrength(Mac mac) {
        String algorithmName = mac.getAlgorithmName();
        return ((Integer) maxSecurityStrengths.get(algorithmName.substring(0, algorithmName.indexOf("/")))).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] hash_df(Digest digest, byte[] bArr, int i4) {
        int i10 = (i4 + 7) / 8;
        byte[] bArr2 = new byte[i10];
        int digestSize = i10 / digest.getDigestSize();
        int digestSize2 = digest.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        int i11 = 1;
        int i12 = 0;
        for (int i13 = 0; i13 <= digestSize; i13++) {
            digest.update((byte) i11);
            digest.update((byte) (i4 >> 24));
            digest.update((byte) (i4 >> 16));
            digest.update((byte) (i4 >> 8));
            digest.update((byte) i4);
            digest.update(bArr, 0, bArr.length);
            digest.doFinal(bArr3, 0);
            int i14 = i13 * digestSize2;
            int i15 = i10 - i14;
            if (i15 > digestSize2) {
                i15 = digestSize2;
            }
            System.arraycopy(bArr3, 0, bArr2, i14, i15);
            i11++;
        }
        int i16 = i4 % 8;
        if (i16 != 0) {
            int i17 = 8 - i16;
            int i18 = 0;
            while (i12 != i10) {
                int i19 = bArr2[i12] & 255;
                bArr2[i12] = (byte) ((i18 << (8 - i17)) | (i19 >>> i17));
                i12++;
                i18 = i19;
            }
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTooLarge(byte[] bArr, int i4) {
        return bArr != null && bArr.length > i4;
    }
}
