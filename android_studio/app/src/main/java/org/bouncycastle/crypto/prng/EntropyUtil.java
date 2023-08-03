package org.bouncycastle.crypto.prng;

/* loaded from: classes4.dex */
public class EntropyUtil {
    public static byte[] generateSeed(EntropySource entropySource, int i4) {
        byte[] bArr = new byte[i4];
        if (i4 * 8 <= entropySource.entropySize()) {
            System.arraycopy(entropySource.getEntropy(), 0, bArr, 0, i4);
        } else {
            int entropySize = entropySource.entropySize() / 8;
            for (int i10 = 0; i10 < i4; i10 += entropySize) {
                byte[] entropy = entropySource.getEntropy();
                int i11 = i4 - i10;
                if (entropy.length <= i11) {
                    System.arraycopy(entropy, 0, bArr, i10, entropy.length);
                } else {
                    System.arraycopy(entropy, 0, bArr, i10, i11);
                }
            }
        }
        return bArr;
    }
}
