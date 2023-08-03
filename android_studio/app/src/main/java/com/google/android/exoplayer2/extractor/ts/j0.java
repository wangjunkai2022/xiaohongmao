package com.google.android.exoplayer2.extractor.ts;

/* compiled from: TsUtil.java */
/* loaded from: classes2.dex */
public final class j0 {
    private j0() {
    }

    public static int a(byte[] bArr, int i4, int i10) {
        while (i4 < i10 && bArr[i4] != 71) {
            i4++;
        }
        return i4;
    }

    public static boolean b(byte[] bArr, int i4, int i10, int i11) {
        int i12 = 0;
        for (int i13 = -4; i13 <= 4; i13++) {
            int i14 = (i13 * 188) + i11;
            if (i14 < i4 || i14 >= i10 || bArr[i14] != 71) {
                i12 = 0;
            } else {
                i12++;
                if (i12 == 5) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long c(com.google.android.exoplayer2.util.h0 h0Var, int i4, int i10) {
        h0Var.S(i4);
        if (h0Var.a() < 5) {
            return com.google.android.exoplayer2.i.f23649b;
        }
        int o9 = h0Var.o();
        if ((8388608 & o9) == 0 && ((2096896 & o9) >> 8) == i10) {
            if (((o9 & 32) != 0) && h0Var.G() >= 7 && h0Var.a() >= 7) {
                if ((h0Var.G() & 16) == 16) {
                    byte[] bArr = new byte[6];
                    h0Var.k(bArr, 0, 6);
                    return d(bArr);
                }
            }
            return com.google.android.exoplayer2.i.f23649b;
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    private static long d(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
