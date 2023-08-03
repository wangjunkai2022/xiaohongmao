package org.brotli.dec;

/* compiled from: Huffman.java */
/* loaded from: classes5.dex */
final class g {

    /* renamed from: a  reason: collision with root package name */
    static final int f91625a = 1080;

    /* renamed from: b  reason: collision with root package name */
    private static final int f91626b = 15;

    g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int[] iArr, int i4, int i10, int[] iArr2, int i11) {
        int[] iArr3 = new int[i11];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = iArr2[i13];
            iArr4[i14] = iArr4[i14] + 1;
        }
        iArr5[1] = 0;
        int i15 = 1;
        while (i15 < 15) {
            int i16 = i15 + 1;
            iArr5[i16] = iArr5[i15] + iArr4[i15];
            i15 = i16;
        }
        for (int i17 = 0; i17 < i11; i17++) {
            if (iArr2[i17] != 0) {
                int i18 = iArr2[i17];
                int i19 = iArr5[i18];
                iArr5[i18] = i19 + 1;
                iArr3[i19] = i17;
            }
        }
        int i20 = 1 << i10;
        if (iArr5[15] == 1) {
            for (int i21 = 0; i21 < i20; i21++) {
                iArr[i4 + i21] = iArr3[0];
            }
            return;
        }
        int i22 = 2;
        int i23 = 0;
        int i24 = 1;
        int i25 = 2;
        while (i24 <= i10) {
            while (iArr4[i24] > 0) {
                d(iArr, i4 + i23, i25, i20, iArr3[i12] | (i24 << 16));
                i23 = b(i23, i24);
                iArr4[i24] = iArr4[i24] - 1;
                i12++;
            }
            i24++;
            i25 <<= 1;
        }
        int i26 = i20 - 1;
        int i27 = -1;
        int i28 = i10 + 1;
        int i29 = i4;
        while (i28 <= 15) {
            while (iArr4[i28] > 0) {
                int i30 = i23 & i26;
                if (i30 != i27) {
                    i29 += i20;
                    int c10 = c(iArr4, i28, i10);
                    iArr[i4 + i30] = ((c10 + i10) << 16) | ((i29 - i4) - i30);
                    i20 = 1 << c10;
                    i27 = i30;
                }
                d(iArr, (i23 >> i10) + i29, i22, i20, ((i28 - i10) << 16) | iArr3[i12]);
                i23 = b(i23, i28);
                iArr4[i28] = iArr4[i28] - 1;
                i12++;
            }
            i28++;
            i22 <<= 1;
        }
    }

    private static int b(int i4, int i10) {
        int i11 = 1 << (i10 - 1);
        while ((i4 & i11) != 0) {
            i11 >>= 1;
        }
        return (i4 & (i11 - 1)) + i11;
    }

    private static int c(int[] iArr, int i4, int i10) {
        int i11;
        int i12 = 1 << (i4 - i10);
        while (i4 < 15 && (i11 = i12 - iArr[i4]) > 0) {
            i4++;
            i12 = i11 << 1;
        }
        return i4 - i10;
    }

    private static void d(int[] iArr, int i4, int i10, int i11, int i12) {
        do {
            i11 -= i10;
            iArr[i4 + i11] = i12;
        } while (i11 > 0);
    }
}
