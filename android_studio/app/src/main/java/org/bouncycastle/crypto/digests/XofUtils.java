package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class XofUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] encode(byte b10) {
        return Arrays.concatenate(leftEncode(8L), new byte[]{b10});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] encode(byte[] bArr, int i4, int i10) {
        return bArr.length == i10 ? Arrays.concatenate(leftEncode(i10 * 8), bArr) : Arrays.concatenate(leftEncode(i10 * 8), Arrays.copyOfRange(bArr, i4, i10 + i4));
    }

    public static byte[] leftEncode(long j4) {
        byte b10 = 1;
        long j10 = j4;
        while (true) {
            j10 >>= 8;
            if (j10 == 0) {
                break;
            }
            b10 = (byte) (b10 + 1);
        }
        byte[] bArr = new byte[b10 + 1];
        bArr[0] = b10;
        for (int i4 = 1; i4 <= b10; i4++) {
            bArr[i4] = (byte) (j4 >> ((b10 - i4) * 8));
        }
        return bArr;
    }

    public static byte[] rightEncode(long j4) {
        byte b10 = 1;
        long j10 = j4;
        while (true) {
            j10 >>= 8;
            if (j10 == 0) {
                break;
            }
            b10 = (byte) (b10 + 1);
        }
        byte[] bArr = new byte[b10 + 1];
        bArr[b10] = b10;
        for (int i4 = 0; i4 < b10; i4++) {
            bArr[i4] = (byte) (j4 >> (((b10 - i4) - 1) * 8));
        }
        return bArr;
    }
}
