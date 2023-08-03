package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.s2;

/* compiled from: AbstractConcatenatedTimeline.java */
/* loaded from: classes2.dex */
public abstract class a extends s2 {

    /* renamed from: f  reason: collision with root package name */
    private final int f20705f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.z0 f20706g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f20707h;

    public a(boolean z9, com.google.android.exoplayer2.source.z0 z0Var) {
        this.f20707h = z9;
        this.f20706g = z0Var;
        this.f20705f = z0Var.getLength();
    }

    public static Object B(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object C(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object E(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int H(int i4, boolean z9) {
        if (z9) {
            return this.f20706g.c(i4);
        }
        if (i4 < this.f20705f - 1) {
            return i4 + 1;
        }
        return -1;
    }

    private int I(int i4, boolean z9) {
        if (z9) {
            return this.f20706g.b(i4);
        }
        if (i4 > 0) {
            return i4 - 1;
        }
        return -1;
    }

    protected abstract int A(int i4);

    protected abstract Object D(int i4);

    protected abstract int F(int i4);

    protected abstract int G(int i4);

    protected abstract s2 J(int i4);

    @Override // com.google.android.exoplayer2.s2
    public int e(boolean z9) {
        if (this.f20705f == 0) {
            return -1;
        }
        if (this.f20707h) {
            z9 = false;
        }
        int f10 = z9 ? this.f20706g.f() : 0;
        while (J(f10).v()) {
            f10 = H(f10, z9);
            if (f10 == -1) {
                return -1;
            }
        }
        return G(f10) + J(f10).e(z9);
    }

    @Override // com.google.android.exoplayer2.s2
    public final int f(Object obj) {
        int f10;
        if (obj instanceof Pair) {
            Object C = C(obj);
            Object B = B(obj);
            int y9 = y(C);
            if (y9 == -1 || (f10 = J(y9).f(B)) == -1) {
                return -1;
            }
            return F(y9) + f10;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.s2
    public int g(boolean z9) {
        int i4 = this.f20705f;
        if (i4 == 0) {
            return -1;
        }
        if (this.f20707h) {
            z9 = false;
        }
        int d4 = z9 ? this.f20706g.d() : i4 - 1;
        while (J(d4).v()) {
            d4 = I(d4, z9);
            if (d4 == -1) {
                return -1;
            }
        }
        return G(d4) + J(d4).g(z9);
    }

    @Override // com.google.android.exoplayer2.s2
    public int i(int i4, int i10, boolean z9) {
        if (this.f20707h) {
            if (i10 == 1) {
                i10 = 2;
            }
            z9 = false;
        }
        int A = A(i4);
        int G = G(A);
        int i11 = J(A).i(i4 - G, i10 != 2 ? i10 : 0, z9);
        if (i11 != -1) {
            return G + i11;
        }
        int H = H(A, z9);
        while (H != -1 && J(H).v()) {
            H = H(H, z9);
        }
        if (H != -1) {
            return G(H) + J(H).e(z9);
        }
        if (i10 == 2) {
            return e(z9);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.s2
    public final s2.b k(int i4, s2.b bVar, boolean z9) {
        int z10 = z(i4);
        int G = G(z10);
        J(z10).k(i4 - F(z10), bVar, z9);
        bVar.f24555c += G;
        if (z9) {
            bVar.f24554b = E(D(z10), com.google.android.exoplayer2.util.a.g(bVar.f24554b));
        }
        return bVar;
    }

    @Override // com.google.android.exoplayer2.s2
    public final s2.b l(Object obj, s2.b bVar) {
        Object C = C(obj);
        Object B = B(obj);
        int y9 = y(C);
        int G = G(y9);
        J(y9).l(B, bVar);
        bVar.f24555c += G;
        bVar.f24554b = obj;
        return bVar;
    }

    @Override // com.google.android.exoplayer2.s2
    public int p(int i4, int i10, boolean z9) {
        if (this.f20707h) {
            if (i10 == 1) {
                i10 = 2;
            }
            z9 = false;
        }
        int A = A(i4);
        int G = G(A);
        int p9 = J(A).p(i4 - G, i10 != 2 ? i10 : 0, z9);
        if (p9 != -1) {
            return G + p9;
        }
        int I = I(A, z9);
        while (I != -1 && J(I).v()) {
            I = I(I, z9);
        }
        if (I != -1) {
            return G(I) + J(I).g(z9);
        }
        if (i10 == 2) {
            return g(z9);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.s2
    public final Object q(int i4) {
        int z9 = z(i4);
        return E(D(z9), J(z9).q(i4 - F(z9)));
    }

    @Override // com.google.android.exoplayer2.s2
    public final s2.d s(int i4, s2.d dVar, long j4) {
        int A = A(i4);
        int G = G(A);
        int F = F(A);
        J(A).s(i4 - G, dVar, j4);
        Object D = D(A);
        if (!s2.d.f24564r.equals(dVar.f24573a)) {
            D = E(D, dVar.f24573a);
        }
        dVar.f24573a = D;
        dVar.f24587o += F;
        dVar.f24588p += F;
        return dVar;
    }

    protected abstract int y(Object obj);

    protected abstract int z(int i4);
}
