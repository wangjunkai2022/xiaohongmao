package com.google.android.exoplayer2.extractor;

/* compiled from: CeaUtil.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f22126a = "CeaUtil";

    /* renamed from: b  reason: collision with root package name */
    public static final int f22127b = 1195456820;

    /* renamed from: c  reason: collision with root package name */
    public static final int f22128c = 3;

    /* renamed from: d  reason: collision with root package name */
    private static final int f22129d = 4;

    /* renamed from: e  reason: collision with root package name */
    private static final int f22130e = 181;

    /* renamed from: f  reason: collision with root package name */
    private static final int f22131f = 49;

    /* renamed from: g  reason: collision with root package name */
    private static final int f22132g = 47;

    private d() {
    }

    public static void a(long j4, com.google.android.exoplayer2.util.h0 h0Var, e0[] e0VarArr) {
        while (true) {
            if (h0Var.a() <= 1) {
                return;
            }
            int c10 = c(h0Var);
            int c11 = c(h0Var);
            int e4 = h0Var.e() + c11;
            if (c11 == -1 || c11 > h0Var.a()) {
                com.google.android.exoplayer2.util.w.n(f22126a, "Skipping remainder of malformed SEI NAL unit.");
                e4 = h0Var.f();
            } else if (c10 == 4 && c11 >= 8) {
                int G = h0Var.G();
                int M = h0Var.M();
                int o9 = M == 49 ? h0Var.o() : 0;
                int G2 = h0Var.G();
                if (M == 47) {
                    h0Var.T(1);
                }
                boolean z9 = G == f22130e && (M == 49 || M == 47) && G2 == 3;
                if (M == 49) {
                    z9 &= o9 == 1195456820;
                }
                if (z9) {
                    b(j4, h0Var, e0VarArr);
                }
            }
            h0Var.S(e4);
        }
    }

    public static void b(long j4, com.google.android.exoplayer2.util.h0 h0Var, e0[] e0VarArr) {
        int G = h0Var.G();
        if ((G & 64) != 0) {
            h0Var.T(1);
            int i4 = (G & 31) * 3;
            int e4 = h0Var.e();
            for (e0 e0Var : e0VarArr) {
                h0Var.S(e4);
                e0Var.c(h0Var, i4);
                e0Var.e(j4, 1, i4, 0, null);
            }
        }
    }

    private static int c(com.google.android.exoplayer2.util.h0 h0Var) {
        int i4 = 0;
        while (h0Var.a() != 0) {
            int G = h0Var.G();
            i4 += G;
            if (G != 255) {
                return i4;
            }
        }
        return -1;
    }
}
