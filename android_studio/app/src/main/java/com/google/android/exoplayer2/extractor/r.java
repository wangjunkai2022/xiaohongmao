package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: FlacFrameReader.java */
/* loaded from: classes2.dex */
public final class r {

    /* compiled from: FlacFrameReader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f22947a;
    }

    private r() {
    }

    private static boolean a(com.google.android.exoplayer2.util.h0 h0Var, u uVar, int i4) {
        int j4 = j(h0Var, i4);
        return j4 != -1 && j4 <= uVar.f23474b;
    }

    private static boolean b(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        return h0Var.G() == z0.x(h0Var.d(), i4, h0Var.e() - 1, 0);
    }

    private static boolean c(com.google.android.exoplayer2.util.h0 h0Var, u uVar, boolean z9, a aVar) {
        try {
            long N = h0Var.N();
            if (!z9) {
                N *= uVar.f23474b;
            }
            aVar.f22947a = N;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(com.google.android.exoplayer2.util.h0 h0Var, u uVar, int i4, a aVar) {
        int e4 = h0Var.e();
        long I = h0Var.I();
        long j4 = I >>> 16;
        if (j4 != i4) {
            return false;
        }
        return g((int) (15 & (I >> 4)), uVar) && f((int) ((I >> 1) & 7), uVar) && !(((I & 1) > 1L ? 1 : ((I & 1) == 1L ? 0 : -1)) == 0) && c(h0Var, uVar, ((j4 & 1) > 1L ? 1 : ((j4 & 1) == 1L ? 0 : -1)) == 0, aVar) && a(h0Var, uVar, (int) ((I >> 12) & 15)) && e(h0Var, uVar, (int) ((I >> 8) & 15)) && b(h0Var, e4);
    }

    private static boolean e(com.google.android.exoplayer2.util.h0 h0Var, u uVar, int i4) {
        int i10 = uVar.f23477e;
        if (i4 == 0) {
            return true;
        }
        if (i4 <= 11) {
            return i4 == uVar.f23478f;
        } else if (i4 == 12) {
            return h0Var.G() * 1000 == i10;
        } else if (i4 <= 14) {
            int M = h0Var.M();
            if (i4 == 14) {
                M *= 10;
            }
            return M == i10;
        } else {
            return false;
        }
    }

    private static boolean f(int i4, u uVar) {
        return i4 == 0 || i4 == uVar.f23481i;
    }

    private static boolean g(int i4, u uVar) {
        return i4 <= 7 ? i4 == uVar.f23479g - 1 : i4 <= 10 && uVar.f23479g == 2;
    }

    public static boolean h(l lVar, u uVar, int i4, a aVar) throws IOException {
        long j4 = lVar.j();
        byte[] bArr = new byte[2];
        lVar.s(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i4) {
            lVar.h();
            lVar.k((int) (j4 - lVar.getPosition()));
            return false;
        }
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(16);
        System.arraycopy(bArr, 0, h0Var.d(), 0, 2);
        h0Var.R(n.b(lVar, h0Var.d(), 2, 14));
        lVar.h();
        lVar.k((int) (j4 - lVar.getPosition()));
        return d(h0Var, uVar, i4, aVar);
    }

    public static long i(l lVar, u uVar) throws IOException {
        lVar.h();
        lVar.k(1);
        byte[] bArr = new byte[1];
        lVar.s(bArr, 0, 1);
        boolean z9 = (bArr[0] & 1) == 1;
        lVar.k(2);
        int i4 = z9 ? 7 : 6;
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(i4);
        h0Var.R(n.b(lVar, h0Var.d(), 0, i4));
        lVar.h();
        a aVar = new a();
        if (c(h0Var, uVar, z9, aVar)) {
            return aVar.f22947a;
        }
        throw new ParserException();
    }

    public static int j(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        switch (i4) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i4 - 2);
            case 6:
                return h0Var.G() + 1;
            case 7:
                return h0Var.M() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i4 - 8);
            default:
                return -1;
        }
    }
}
