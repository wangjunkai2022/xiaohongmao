package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: State.java */
/* loaded from: classes5.dex */
public final class l {
    byte[] A;
    int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    byte[] H;
    int I;
    int J;
    int K;
    int L;
    int M;
    int N;
    int O;
    int P;
    int U;
    int V;
    int W;
    int X;
    int Y;
    byte[] Z;

    /* renamed from: b  reason: collision with root package name */
    int f91654b;

    /* renamed from: d  reason: collision with root package name */
    byte[] f91656d;

    /* renamed from: g  reason: collision with root package name */
    int f91659g;

    /* renamed from: h  reason: collision with root package name */
    boolean f91660h;

    /* renamed from: i  reason: collision with root package name */
    boolean f91661i;

    /* renamed from: j  reason: collision with root package name */
    boolean f91662j;

    /* renamed from: w  reason: collision with root package name */
    int f91675w;

    /* renamed from: x  reason: collision with root package name */
    int f91676x;

    /* renamed from: y  reason: collision with root package name */
    int f91677y;

    /* renamed from: z  reason: collision with root package name */
    byte[] f91678z;

    /* renamed from: a  reason: collision with root package name */
    int f91653a = 0;

    /* renamed from: c  reason: collision with root package name */
    final a f91655c = new a();

    /* renamed from: e  reason: collision with root package name */
    final int[] f91657e = new int[3240];

    /* renamed from: f  reason: collision with root package name */
    final int[] f91658f = new int[3240];

    /* renamed from: k  reason: collision with root package name */
    final h f91663k = new h();

    /* renamed from: l  reason: collision with root package name */
    final h f91664l = new h();

    /* renamed from: m  reason: collision with root package name */
    final h f91665m = new h();

    /* renamed from: n  reason: collision with root package name */
    final int[] f91666n = new int[3];

    /* renamed from: o  reason: collision with root package name */
    final int[] f91667o = new int[3];

    /* renamed from: p  reason: collision with root package name */
    final int[] f91668p = new int[6];

    /* renamed from: q  reason: collision with root package name */
    final int[] f91669q = {16, 15, 11, 4};

    /* renamed from: r  reason: collision with root package name */
    int f91670r = 0;

    /* renamed from: s  reason: collision with root package name */
    int f91671s = 0;

    /* renamed from: t  reason: collision with root package name */
    int f91672t = 0;

    /* renamed from: u  reason: collision with root package name */
    boolean f91673u = false;

    /* renamed from: v  reason: collision with root package name */
    int f91674v = 0;
    int Q = 0;
    long R = 0;
    byte[] S = new byte[0];
    int T = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(l lVar) throws IOException {
        int i4 = lVar.f91653a;
        if (i4 == 0) {
            throw new IllegalStateException("State MUST be initialized");
        }
        if (i4 == 11) {
            return;
        }
        lVar.f91653a = 11;
        a.b(lVar.f91655c);
    }

    private static int b(a aVar) {
        if (a.i(aVar, 1) == 0) {
            return 16;
        }
        int i4 = a.i(aVar, 3);
        if (i4 != 0) {
            return i4 + 17;
        }
        int i10 = a.i(aVar, 3);
        if (i10 != 0) {
            return i10 + 8;
        }
        return 17;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(l lVar, InputStream inputStream) {
        if (lVar.f91653a == 0) {
            a.e(lVar.f91655c, inputStream);
            int b10 = b(lVar.f91655c);
            if (b10 != 9) {
                int i4 = 1 << b10;
                lVar.P = i4;
                lVar.O = i4 - 16;
                lVar.f91653a = 1;
                return;
            }
            throw new c("Invalid 'windowBits' code");
        }
        throw new IllegalStateException("State MUST be uninitialized");
    }
}
