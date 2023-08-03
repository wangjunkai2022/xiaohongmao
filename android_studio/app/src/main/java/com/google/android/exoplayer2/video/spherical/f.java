package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.g0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.video.spherical.e;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* compiled from: ProjectionDecoder.java */
/* loaded from: classes2.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final int f28056a = 2037673328;

    /* renamed from: b  reason: collision with root package name */
    private static final int f28057b = 1836279920;

    /* renamed from: c  reason: collision with root package name */
    private static final int f28058c = 1918990112;

    /* renamed from: d  reason: collision with root package name */
    private static final int f28059d = 1684433976;

    /* renamed from: e  reason: collision with root package name */
    private static final int f28060e = 1835365224;

    /* renamed from: f  reason: collision with root package name */
    private static final int f28061f = 1886547818;

    /* renamed from: g  reason: collision with root package name */
    private static final int f28062g = 10000;

    /* renamed from: h  reason: collision with root package name */
    private static final int f28063h = 32000;

    /* renamed from: i  reason: collision with root package name */
    private static final int f28064i = 128000;

    private f() {
    }

    @Nullable
    public static e a(byte[] bArr, int i4) {
        ArrayList<e.b> arrayList;
        h0 h0Var = new h0(bArr);
        try {
            arrayList = c(h0Var) ? f(h0Var) : e(h0Var);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size != 1) {
            if (size != 2) {
                return null;
            }
            return new e(arrayList.get(0), arrayList.get(1), i4);
        }
        return new e(arrayList.get(0), i4);
    }

    private static int b(int i4) {
        return (-(i4 & 1)) ^ (i4 >> 1);
    }

    private static boolean c(h0 h0Var) {
        h0Var.T(4);
        int o9 = h0Var.o();
        h0Var.S(0);
        return o9 == 1886547818;
    }

    @Nullable
    private static e.b d(h0 h0Var) {
        int o9 = h0Var.o();
        if (o9 > 10000) {
            return null;
        }
        float[] fArr = new float[o9];
        for (int i4 = 0; i4 < o9; i4++) {
            fArr[i4] = h0Var.n();
        }
        int o10 = h0Var.o();
        if (o10 > f28063h) {
            return null;
        }
        double d4 = 2.0d;
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(o9 * 2.0d) / log);
        g0 g0Var = new g0(h0Var.d());
        int i10 = 8;
        g0Var.q(h0Var.e() * 8);
        float[] fArr2 = new float[o10 * 5];
        int i11 = 5;
        int[] iArr = new int[5];
        int i12 = 0;
        int i13 = 0;
        while (i12 < o10) {
            int i14 = 0;
            while (i14 < i11) {
                int b10 = iArr[i14] + b(g0Var.h(ceil));
                if (b10 >= o9 || b10 < 0) {
                    return null;
                }
                fArr2[i13] = fArr[b10];
                iArr[i14] = b10;
                i14++;
                i13++;
                i11 = 5;
            }
            i12++;
            i11 = 5;
        }
        g0Var.q((g0Var.e() + 7) & (-8));
        int i15 = 32;
        int h4 = g0Var.h(32);
        e.c[] cVarArr = new e.c[h4];
        int i16 = 0;
        while (i16 < h4) {
            int h10 = g0Var.h(i10);
            int h11 = g0Var.h(i10);
            int h12 = g0Var.h(i15);
            if (h12 > f28064i) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(o10 * d4) / log);
            float[] fArr3 = new float[h12 * 3];
            float[] fArr4 = new float[h12 * 2];
            int i17 = 0;
            for (int i18 = 0; i18 < h12; i18++) {
                i17 += b(g0Var.h(ceil2));
                if (i17 < 0 || i17 >= o10) {
                    return null;
                }
                int i19 = i18 * 3;
                int i20 = i17 * 5;
                fArr3[i19] = fArr2[i20];
                fArr3[i19 + 1] = fArr2[i20 + 1];
                fArr3[i19 + 2] = fArr2[i20 + 2];
                int i21 = i18 * 2;
                fArr4[i21] = fArr2[i20 + 3];
                fArr4[i21 + 1] = fArr2[i20 + 4];
            }
            cVarArr[i16] = new e.c(h10, fArr3, fArr4, h11);
            i16++;
            i15 = 32;
            d4 = 2.0d;
            i10 = 8;
        }
        return new e.b(cVarArr);
    }

    @Nullable
    private static ArrayList<e.b> e(h0 h0Var) {
        if (h0Var.G() != 0) {
            return null;
        }
        h0Var.T(7);
        int o9 = h0Var.o();
        if (o9 == f28059d) {
            h0 h0Var2 = new h0();
            Inflater inflater = new Inflater(true);
            try {
                if (!z0.A0(h0Var, h0Var2, inflater)) {
                    return null;
                }
                inflater.end();
                h0Var = h0Var2;
            } finally {
                inflater.end();
            }
        } else if (o9 != f28058c) {
            return null;
        }
        return g(h0Var);
    }

    @Nullable
    private static ArrayList<e.b> f(h0 h0Var) {
        int o9;
        h0Var.T(8);
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        while (e4 < f10 && (o9 = h0Var.o() + e4) > e4 && o9 <= f10) {
            int o10 = h0Var.o();
            if (o10 != f28056a && o10 != f28057b) {
                h0Var.S(o9);
                e4 = o9;
            } else {
                h0Var.R(o9);
                return e(h0Var);
            }
        }
        return null;
    }

    @Nullable
    private static ArrayList<e.b> g(h0 h0Var) {
        ArrayList<e.b> arrayList = new ArrayList<>();
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        while (e4 < f10) {
            int o9 = h0Var.o() + e4;
            if (o9 <= e4 || o9 > f10) {
                return null;
            }
            if (h0Var.o() == f28060e) {
                e.b d4 = d(h0Var);
                if (d4 == null) {
                    return null;
                }
                arrayList.add(d4);
            }
            h0Var.S(o9);
            e4 = o9;
        }
        return arrayList;
    }
}
