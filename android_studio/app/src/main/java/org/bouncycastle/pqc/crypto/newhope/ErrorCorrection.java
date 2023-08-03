package org.bouncycastle.pqc.crypto.newhope;

import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
class ErrorCorrection {
    ErrorCorrection() {
    }

    static short LDDecode(int i4, int i10, int i11, int i12) {
        return (short) (((((g(i4) + g(i10)) + g(i11)) + g(i12)) - 98312) >>> 31);
    }

    static int abs(int i4) {
        int i10 = i4 >> 31;
        return (i4 ^ i10) - i10;
    }

    static int f(int[] iArr, int i4, int i10, int i11) {
        int i12 = (i11 * 2730) >> 25;
        int i13 = i12 - ((12288 - (i11 - (i12 * 12289))) >> 31);
        iArr[i4] = (i13 >> 1) + (i13 & 1);
        int i14 = i13 - 1;
        iArr[i10] = (i14 >> 1) + (i14 & 1);
        return abs(i11 - ((iArr[i4] * 2) * 12289));
    }

    static int g(int i4) {
        int i10 = (i4 * 2730) >> 27;
        int i11 = i10 - ((49155 - (i4 - (49156 * i10))) >> 31);
        return abs((((i11 >> 1) + (i11 & 1)) * 98312) - i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void helpRec(short[] sArr, short[] sArr2, byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b10;
        byte[] bArr3 = new byte[32];
        ChaCha20.process(bArr, bArr2, bArr3, 0, 32);
        int[] iArr = new int[8];
        int[] iArr2 = new int[4];
        for (int i4 = 0; i4 < 256; i4++) {
            int i10 = i4 + 0;
            int i11 = ((bArr3[i4 >>> 3] >>> (i4 & 7)) & 1) * 4;
            int i12 = i4 + 256;
            int i13 = i4 + 512;
            int i14 = i4 + 768;
            int f10 = (24577 - (((f(iArr, 0, 4, (sArr2[i10] * 8) + i11) + f(iArr, 1, 5, (sArr2[i12] * 8) + i11)) + f(iArr, 2, 6, (sArr2[i13] * 8) + i11)) + f(iArr, 3, 7, (sArr2[i14] * 8) + i11))) >> 31;
            int i15 = ~f10;
            iArr2[0] = (i15 & iArr[0]) ^ (f10 & iArr[4]);
            iArr2[1] = (i15 & iArr[1]) ^ (f10 & iArr[5]);
            iArr2[2] = (i15 & iArr[2]) ^ (f10 & iArr[6]);
            iArr2[3] = (i15 & iArr[3]) ^ (iArr[7] & f10);
            sArr[i10] = (short) ((iArr2[0] - iArr2[3]) & 3);
            sArr[i12] = (short) ((iArr2[1] - iArr2[3]) & 3);
            sArr[i13] = (short) ((iArr2[2] - iArr2[3]) & 3);
            sArr[i14] = (short) (3 & ((-f10) + (iArr2[3] * 2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void rec(byte[] bArr, short[] sArr, short[] sArr2) {
        Arrays.fill(bArr, (byte) 0);
        int[] iArr = new int[4];
        for (int i4 = 0; i4 < 256; i4++) {
            int i10 = i4 + 0;
            int i11 = i4 + 768;
            iArr[0] = ((sArr[i10] * 8) + 196624) - (((sArr2[i10] * 2) + sArr2[i11]) * 12289);
            int i12 = i4 + 256;
            iArr[1] = ((sArr[i12] * 8) + 196624) - (((sArr2[i12] * 2) + sArr2[i11]) * 12289);
            int i13 = i4 + 512;
            iArr[2] = ((sArr[i13] * 8) + 196624) - (((sArr2[i13] * 2) + sArr2[i11]) * 12289);
            iArr[3] = ((sArr[i11] * 8) + 196624) - (sArr2[i11] * 12289);
            int i14 = i4 >>> 3;
            bArr[i14] = (byte) ((LDDecode(iArr[0], iArr[1], iArr[2], iArr[3]) << (i4 & 7)) | bArr[i14]);
        }
    }
}
