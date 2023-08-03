package com.google.android.exoplayer2.text.pgs;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* compiled from: PgsDecoder.java */
/* loaded from: classes2.dex */
public final class a extends com.google.android.exoplayer2.text.c {

    /* renamed from: s  reason: collision with root package name */
    private static final int f25578s = 20;

    /* renamed from: t  reason: collision with root package name */
    private static final int f25579t = 21;

    /* renamed from: u  reason: collision with root package name */
    private static final int f25580u = 22;

    /* renamed from: v  reason: collision with root package name */
    private static final int f25581v = 128;

    /* renamed from: w  reason: collision with root package name */
    private static final byte f25582w = 120;

    /* renamed from: o  reason: collision with root package name */
    private final h0 f25583o;

    /* renamed from: p  reason: collision with root package name */
    private final h0 f25584p;

    /* renamed from: q  reason: collision with root package name */
    private final C0182a f25585q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Inflater f25586r;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PgsDecoder.java */
    /* renamed from: com.google.android.exoplayer2.text.pgs.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0182a {

        /* renamed from: a  reason: collision with root package name */
        private final h0 f25587a = new h0();

        /* renamed from: b  reason: collision with root package name */
        private final int[] f25588b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        private boolean f25589c;

        /* renamed from: d  reason: collision with root package name */
        private int f25590d;

        /* renamed from: e  reason: collision with root package name */
        private int f25591e;

        /* renamed from: f  reason: collision with root package name */
        private int f25592f;

        /* renamed from: g  reason: collision with root package name */
        private int f25593g;

        /* renamed from: h  reason: collision with root package name */
        private int f25594h;

        /* renamed from: i  reason: collision with root package name */
        private int f25595i;

        /* JADX INFO: Access modifiers changed from: private */
        public void e(h0 h0Var, int i4) {
            int J;
            if (i4 < 4) {
                return;
            }
            h0Var.T(3);
            int i10 = i4 - 4;
            if ((h0Var.G() & 128) != 0) {
                if (i10 < 7 || (J = h0Var.J()) < 4) {
                    return;
                }
                this.f25594h = h0Var.M();
                this.f25595i = h0Var.M();
                this.f25587a.O(J - 4);
                i10 -= 7;
            }
            int e4 = this.f25587a.e();
            int f10 = this.f25587a.f();
            if (e4 >= f10 || i10 <= 0) {
                return;
            }
            int min = Math.min(i10, f10 - e4);
            h0Var.k(this.f25587a.d(), e4, min);
            this.f25587a.S(e4 + min);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(h0 h0Var, int i4) {
            if (i4 < 19) {
                return;
            }
            this.f25590d = h0Var.M();
            this.f25591e = h0Var.M();
            h0Var.T(11);
            this.f25592f = h0Var.M();
            this.f25593g = h0Var.M();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(h0 h0Var, int i4) {
            if (i4 % 5 != 2) {
                return;
            }
            h0Var.T(2);
            Arrays.fill(this.f25588b, 0);
            int i10 = i4 / 5;
            int i11 = 0;
            while (i11 < i10) {
                int G = h0Var.G();
                int G2 = h0Var.G();
                int G3 = h0Var.G();
                int G4 = h0Var.G();
                int G5 = h0Var.G();
                double d4 = G2;
                double d10 = G3 - 128;
                int i12 = i11;
                double d11 = G4 - 128;
                this.f25588b[G] = z0.t((int) (d4 + (d11 * 1.772d)), 0, 255) | (z0.t((int) ((d4 - (0.34414d * d11)) - (d10 * 0.71414d)), 0, 255) << 8) | (G5 << 24) | (z0.t((int) ((1.402d * d10) + d4), 0, 255) << 16);
                i11 = i12 + 1;
            }
            this.f25589c = true;
        }

        @Nullable
        public com.google.android.exoplayer2.text.a d() {
            int i4;
            if (this.f25590d == 0 || this.f25591e == 0 || this.f25594h == 0 || this.f25595i == 0 || this.f25587a.f() == 0 || this.f25587a.e() != this.f25587a.f() || !this.f25589c) {
                return null;
            }
            this.f25587a.S(0);
            int i10 = this.f25594h * this.f25595i;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int G = this.f25587a.G();
                if (G != 0) {
                    i4 = i11 + 1;
                    iArr[i11] = this.f25588b[G];
                } else {
                    int G2 = this.f25587a.G();
                    if (G2 != 0) {
                        i4 = ((G2 & 64) == 0 ? G2 & 63 : ((G2 & 63) << 8) | this.f25587a.G()) + i11;
                        Arrays.fill(iArr, i11, i4, (G2 & 128) == 0 ? 0 : this.f25588b[this.f25587a.G()]);
                    }
                }
                i11 = i4;
            }
            return new a.c().r(Bitmap.createBitmap(iArr, this.f25594h, this.f25595i, Bitmap.Config.ARGB_8888)).w(this.f25592f / this.f25590d).x(0).t(this.f25593g / this.f25591e, 0).u(0).z(this.f25594h / this.f25590d).s(this.f25595i / this.f25591e).a();
        }

        public void h() {
            this.f25590d = 0;
            this.f25591e = 0;
            this.f25592f = 0;
            this.f25593g = 0;
            this.f25594h = 0;
            this.f25595i = 0;
            this.f25587a.O(0);
            this.f25589c = false;
        }
    }

    public a() {
        super("PgsDecoder");
        this.f25583o = new h0();
        this.f25584p = new h0();
        this.f25585q = new C0182a();
    }

    private void B(h0 h0Var) {
        if (h0Var.a() <= 0 || h0Var.h() != 120) {
            return;
        }
        if (this.f25586r == null) {
            this.f25586r = new Inflater();
        }
        if (z0.A0(h0Var, this.f25584p, this.f25586r)) {
            h0Var.Q(this.f25584p.d(), this.f25584p.f());
        }
    }

    @Nullable
    private static com.google.android.exoplayer2.text.a C(h0 h0Var, C0182a c0182a) {
        int f10 = h0Var.f();
        int G = h0Var.G();
        int M = h0Var.M();
        int e4 = h0Var.e() + M;
        com.google.android.exoplayer2.text.a aVar = null;
        if (e4 > f10) {
            h0Var.S(f10);
            return null;
        }
        if (G != 128) {
            switch (G) {
                case 20:
                    c0182a.g(h0Var, M);
                    break;
                case 21:
                    c0182a.e(h0Var, M);
                    break;
                case 22:
                    c0182a.f(h0Var, M);
                    break;
            }
        } else {
            aVar = c0182a.d();
            c0182a.h();
        }
        h0Var.S(e4);
        return aVar;
    }

    @Override // com.google.android.exoplayer2.text.c
    protected e z(byte[] bArr, int i4, boolean z9) throws SubtitleDecoderException {
        this.f25583o.Q(bArr, i4);
        B(this.f25583o);
        this.f25585q.h();
        ArrayList arrayList = new ArrayList();
        while (this.f25583o.a() >= 3) {
            com.google.android.exoplayer2.text.a C = C(this.f25583o, this.f25585q);
            if (C != null) {
                arrayList.add(C);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
