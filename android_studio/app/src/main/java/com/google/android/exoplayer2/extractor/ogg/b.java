package com.google.android.exoplayer2.extractor.ogg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.ogg.i;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.s;
import com.google.android.exoplayer2.extractor.t;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: FlacReader.java */
/* loaded from: classes2.dex */
final class b extends i {

    /* renamed from: t  reason: collision with root package name */
    private static final byte f22878t = -1;

    /* renamed from: u  reason: collision with root package name */
    private static final int f22879u = 4;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private u f22880r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private a f22881s;

    /* compiled from: FlacReader.java */
    /* loaded from: classes2.dex */
    private static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        private u f22882a;

        /* renamed from: b  reason: collision with root package name */
        private u.a f22883b;

        /* renamed from: c  reason: collision with root package name */
        private long f22884c = -1;

        /* renamed from: d  reason: collision with root package name */
        private long f22885d = -1;

        public a(u uVar, u.a aVar) {
            this.f22882a = uVar;
            this.f22883b = aVar;
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public long a(l lVar) {
            long j4 = this.f22885d;
            if (j4 >= 0) {
                long j10 = -(j4 + 2);
                this.f22885d = -1L;
                return j10;
            }
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public b0 b() {
            com.google.android.exoplayer2.util.a.i(this.f22884c != -1);
            return new t(this.f22882a, this.f22884c);
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public void c(long j4) {
            long[] jArr = this.f22883b.f23485a;
            this.f22885d = jArr[z0.j(jArr, j4, true, true)];
        }

        public void d(long j4) {
            this.f22884c = j4;
        }
    }

    private int n(h0 h0Var) {
        int i4 = (h0Var.d()[2] & 255) >> 4;
        if (i4 == 6 || i4 == 7) {
            h0Var.T(4);
            h0Var.N();
        }
        int j4 = r.j(h0Var, i4);
        h0Var.S(0);
        return j4;
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean p(h0 h0Var) {
        return h0Var.a() >= 5 && h0Var.G() == 127 && h0Var.I() == 1179402563;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected long f(h0 h0Var) {
        if (o(h0Var.d())) {
            return n(h0Var);
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected boolean i(h0 h0Var, long j4, i.b bVar) {
        byte[] d4 = h0Var.d();
        u uVar = this.f22880r;
        if (uVar == null) {
            u uVar2 = new u(d4, 17);
            this.f22880r = uVar2;
            bVar.f22934a = uVar2.i(Arrays.copyOfRange(d4, 9, h0Var.f()), null);
            return true;
        } else if ((d4[0] & Byte.MAX_VALUE) == 3) {
            u.a h4 = s.h(h0Var);
            u c10 = uVar.c(h4);
            this.f22880r = c10;
            this.f22881s = new a(c10, h4);
            return true;
        } else if (o(d4)) {
            a aVar = this.f22881s;
            if (aVar != null) {
                aVar.d(j4);
                bVar.f22935b = this.f22881s;
            }
            com.google.android.exoplayer2.util.a.g(bVar.f22934a);
            return false;
        } else {
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected void l(boolean z9) {
        super.l(z9);
        if (z9) {
            this.f22880r = null;
            this.f22881s = null;
        }
    }
}
