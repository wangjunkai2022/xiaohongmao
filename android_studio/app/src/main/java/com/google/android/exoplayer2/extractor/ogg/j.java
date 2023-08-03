package com.google.android.exoplayer2.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.g0;
import com.google.android.exoplayer2.extractor.ogg.i;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: VorbisReader.java */
/* loaded from: classes2.dex */
final class j extends i {
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private a f22936r;

    /* renamed from: s  reason: collision with root package name */
    private int f22937s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f22938t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private g0.d f22939u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private g0.b f22940v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VorbisReader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final g0.d f22941a;

        /* renamed from: b  reason: collision with root package name */
        public final g0.b f22942b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f22943c;

        /* renamed from: d  reason: collision with root package name */
        public final g0.c[] f22944d;

        /* renamed from: e  reason: collision with root package name */
        public final int f22945e;

        public a(g0.d dVar, g0.b bVar, byte[] bArr, g0.c[] cVarArr, int i4) {
            this.f22941a = dVar;
            this.f22942b = bVar;
            this.f22943c = bArr;
            this.f22944d = cVarArr;
            this.f22945e = i4;
        }
    }

    @VisibleForTesting
    static void n(h0 h0Var, long j4) {
        if (h0Var.b() < h0Var.f() + 4) {
            h0Var.P(Arrays.copyOf(h0Var.d(), h0Var.f() + 4));
        } else {
            h0Var.R(h0Var.f() + 4);
        }
        byte[] d4 = h0Var.d();
        d4[h0Var.f() - 4] = (byte) (j4 & 255);
        d4[h0Var.f() - 3] = (byte) ((j4 >>> 8) & 255);
        d4[h0Var.f() - 2] = (byte) ((j4 >>> 16) & 255);
        d4[h0Var.f() - 1] = (byte) ((j4 >>> 24) & 255);
    }

    private static int o(byte b10, a aVar) {
        if (!aVar.f22944d[p(b10, aVar.f22945e, 1)].f22265a) {
            return aVar.f22941a.f22275g;
        }
        return aVar.f22941a.f22276h;
    }

    @VisibleForTesting
    static int p(byte b10, int i4, int i10) {
        return (b10 >> i10) & (255 >>> (8 - i4));
    }

    public static boolean r(h0 h0Var) {
        try {
            return g0.l(1, h0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.ogg.i
    public void e(long j4) {
        super.e(j4);
        this.f22938t = j4 != 0;
        g0.d dVar = this.f22939u;
        this.f22937s = dVar != null ? dVar.f22275g : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected long f(h0 h0Var) {
        if ((h0Var.d()[0] & 1) == 1) {
            return -1L;
        }
        int o9 = o(h0Var.d()[0], (a) com.google.android.exoplayer2.util.a.k(this.f22936r));
        long j4 = this.f22938t ? (this.f22937s + o9) / 4 : 0;
        n(h0Var, j4);
        this.f22938t = true;
        this.f22937s = o9;
        return j4;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected boolean i(h0 h0Var, long j4, i.b bVar) throws IOException {
        if (this.f22936r != null) {
            com.google.android.exoplayer2.util.a.g(bVar.f22934a);
            return false;
        }
        a q9 = q(h0Var);
        this.f22936r = q9;
        if (q9 == null) {
            return true;
        }
        g0.d dVar = q9.f22941a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.f22278j);
        arrayList.add(q9.f22943c);
        bVar.f22934a = new Format.b().e0(a0.T).G(dVar.f22273e).Z(dVar.f22272d).H(dVar.f22270b).f0(dVar.f22271c).T(arrayList).E();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.ogg.i
    public void l(boolean z9) {
        super.l(z9);
        if (z9) {
            this.f22936r = null;
            this.f22939u = null;
            this.f22940v = null;
        }
        this.f22937s = 0;
        this.f22938t = false;
    }

    @Nullable
    @VisibleForTesting
    a q(h0 h0Var) throws IOException {
        g0.d dVar = this.f22939u;
        if (dVar == null) {
            this.f22939u = g0.j(h0Var);
            return null;
        }
        g0.b bVar = this.f22940v;
        if (bVar == null) {
            this.f22940v = g0.h(h0Var);
            return null;
        }
        byte[] bArr = new byte[h0Var.f()];
        System.arraycopy(h0Var.d(), 0, bArr, 0, h0Var.f());
        g0.c[] k10 = g0.k(h0Var, dVar.f22270b);
        return new a(dVar, bVar, bArr, k10, g0.a(k10.length - 1));
    }
}
