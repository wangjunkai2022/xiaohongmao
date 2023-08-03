package com.google.android.exoplayer2.source;

import android.os.Looper;
import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.extractor.e0;
import java.io.IOException;

/* compiled from: SampleQueue.java */
/* loaded from: classes2.dex */
public class w0 implements com.google.android.exoplayer2.extractor.e0 {
    @VisibleForTesting
    static final int L = 1000;
    private static final String M = "SampleQueue";
    private boolean A;
    private boolean D;
    @Nullable
    private Format E;
    @Nullable
    private Format F;
    private int G;
    private boolean H;
    private boolean I;
    private long J;
    private boolean K;

    /* renamed from: d  reason: collision with root package name */
    private final u0 f25193d;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f25196g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final s.a f25197h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Looper f25198i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private d f25199j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Format f25200k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private DrmSession f25201l;

    /* renamed from: t  reason: collision with root package name */
    private int f25209t;

    /* renamed from: u  reason: collision with root package name */
    private int f25210u;

    /* renamed from: v  reason: collision with root package name */
    private int f25211v;

    /* renamed from: w  reason: collision with root package name */
    private int f25212w;

    /* renamed from: e  reason: collision with root package name */
    private final b f25194e = new b();

    /* renamed from: m  reason: collision with root package name */
    private int f25202m = 1000;

    /* renamed from: n  reason: collision with root package name */
    private int[] f25203n = new int[1000];

    /* renamed from: o  reason: collision with root package name */
    private long[] f25204o = new long[1000];

    /* renamed from: r  reason: collision with root package name */
    private long[] f25207r = new long[1000];

    /* renamed from: q  reason: collision with root package name */
    private int[] f25206q = new int[1000];

    /* renamed from: p  reason: collision with root package name */
    private int[] f25205p = new int[1000];

    /* renamed from: s  reason: collision with root package name */
    private e0.a[] f25208s = new e0.a[1000];

    /* renamed from: f  reason: collision with root package name */
    private final f1<c> f25195f = new f1<>(v0.f25192a);

    /* renamed from: x  reason: collision with root package name */
    private long f25213x = Long.MIN_VALUE;

    /* renamed from: y  reason: collision with root package name */
    private long f25214y = Long.MIN_VALUE;

    /* renamed from: z  reason: collision with root package name */
    private long f25215z = Long.MIN_VALUE;
    private boolean C = true;
    private boolean B = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SampleQueue.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f25216a;

        /* renamed from: b  reason: collision with root package name */
        public long f25217b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public e0.a f25218c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SampleQueue.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Format f25219a;

        /* renamed from: b  reason: collision with root package name */
        public final u.b f25220b;

        private c(Format format, u.b bVar) {
            this.f25219a = format;
            this.f25220b = bVar;
        }
    }

    /* compiled from: SampleQueue.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(Format format);
    }

    protected w0(com.google.android.exoplayer2.upstream.b bVar, @Nullable Looper looper, @Nullable com.google.android.exoplayer2.drm.u uVar, @Nullable s.a aVar) {
        this.f25198i = looper;
        this.f25196g = uVar;
        this.f25197h = aVar;
        this.f25193d = new u0(bVar);
    }

    private long C(int i4) {
        long j4 = Long.MIN_VALUE;
        if (i4 == 0) {
            return Long.MIN_VALUE;
        }
        int E = E(i4 - 1);
        for (int i10 = 0; i10 < i4; i10++) {
            j4 = Math.max(j4, this.f25207r[E]);
            if ((this.f25206q[E] & 1) != 0) {
                break;
            }
            E--;
            if (E == -1) {
                E = this.f25202m - 1;
            }
        }
        return j4;
    }

    private int E(int i4) {
        int i10 = this.f25211v + i4;
        int i11 = this.f25202m;
        return i10 < i11 ? i10 : i10 - i11;
    }

    private boolean I() {
        return this.f25212w != this.f25209t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M(c cVar) {
        cVar.f25220b.release();
    }

    private boolean N(int i4) {
        DrmSession drmSession = this.f25201l;
        return drmSession == null || drmSession.getState() == 4 || ((this.f25206q[i4] & 1073741824) == 0 && this.f25201l.i());
    }

    private void P(Format format, com.google.android.exoplayer2.v0 v0Var) {
        Format format2 = this.f25200k;
        boolean z9 = format2 == null;
        DrmInitData drmInitData = z9 ? null : format2.drmInitData;
        this.f25200k = format;
        DrmInitData drmInitData2 = format.drmInitData;
        com.google.android.exoplayer2.drm.u uVar = this.f25196g;
        v0Var.f27763b = uVar != null ? format.copyWithExoMediaCryptoType(uVar.d(format)) : format;
        v0Var.f27762a = this.f25201l;
        if (this.f25196g == null) {
            return;
        }
        if (z9 || !com.google.android.exoplayer2.util.z0.c(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f25201l;
            DrmSession b10 = this.f25196g.b((Looper) com.google.android.exoplayer2.util.a.g(this.f25198i), this.f25197h, format);
            this.f25201l = b10;
            v0Var.f27762a = b10;
            if (drmSession != null) {
                drmSession.g(this.f25197h);
            }
        }
    }

    private synchronized int Q(com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, boolean z9, boolean z10, b bVar) {
        decoderInputBuffer.f21573d = false;
        if (!I()) {
            if (!z10 && !this.A) {
                Format format = this.F;
                if (format == null || (!z9 && format == this.f25200k)) {
                    return -3;
                }
                P((Format) com.google.android.exoplayer2.util.a.g(format), v0Var);
                return -5;
            }
            decoderInputBuffer.n(4);
            return -4;
        }
        Format format2 = this.f25195f.f(D()).f25219a;
        if (!z9 && format2 == this.f25200k) {
            int E = E(this.f25212w);
            if (!N(E)) {
                decoderInputBuffer.f21573d = true;
                return -3;
            }
            decoderInputBuffer.n(this.f25206q[E]);
            long j4 = this.f25207r[E];
            decoderInputBuffer.f21574e = j4;
            if (j4 < this.f25213x) {
                decoderInputBuffer.e(Integer.MIN_VALUE);
            }
            bVar.f25216a = this.f25205p[E];
            bVar.f25217b = this.f25204o[E];
            bVar.f25218c = this.f25208s[E];
            return -4;
        }
        P(format2, v0Var);
        return -5;
    }

    private void V() {
        DrmSession drmSession = this.f25201l;
        if (drmSession != null) {
            drmSession.g(this.f25197h);
            this.f25201l = null;
            this.f25200k = null;
        }
    }

    private synchronized void Y() {
        this.f25212w = 0;
        this.f25193d.o();
    }

    private synchronized boolean d0(Format format) {
        this.C = false;
        if (com.google.android.exoplayer2.util.z0.c(format, this.F)) {
            return false;
        }
        if (!this.f25195f.h() && this.f25195f.g().f25219a.equals(format)) {
            this.F = this.f25195f.g().f25219a;
        } else {
            this.F = format;
        }
        Format format2 = this.F;
        this.H = com.google.android.exoplayer2.util.a0.a(format2.sampleMimeType, format2.codecs);
        this.I = false;
        return true;
    }

    private synchronized boolean h(long j4) {
        if (this.f25209t == 0) {
            return j4 > this.f25214y;
        } else if (B() >= j4) {
            return false;
        } else {
            u(this.f25210u + j(j4));
            return true;
        }
    }

    private synchronized void i(long j4, int i4, long j10, int i10, @Nullable e0.a aVar) {
        u.b bVar;
        int i11 = this.f25209t;
        if (i11 > 0) {
            int E = E(i11 - 1);
            com.google.android.exoplayer2.util.a.a(this.f25204o[E] + ((long) this.f25205p[E]) <= j10);
        }
        this.A = (536870912 & i4) != 0;
        this.f25215z = Math.max(this.f25215z, j4);
        int E2 = E(this.f25209t);
        this.f25207r[E2] = j4;
        this.f25204o[E2] = j10;
        this.f25205p[E2] = i10;
        this.f25206q[E2] = i4;
        this.f25208s[E2] = aVar;
        this.f25203n[E2] = this.G;
        if (this.f25195f.h() || !this.f25195f.g().f25219a.equals(this.F)) {
            com.google.android.exoplayer2.drm.u uVar = this.f25196g;
            if (uVar != null) {
                bVar = uVar.c((Looper) com.google.android.exoplayer2.util.a.g(this.f25198i), this.f25197h, this.F);
            } else {
                bVar = u.b.f21820a;
            }
            this.f25195f.b(H(), new c((Format) com.google.android.exoplayer2.util.a.g(this.F), bVar));
        }
        int i12 = this.f25209t + 1;
        this.f25209t = i12;
        int i13 = this.f25202m;
        if (i12 == i13) {
            int i14 = i13 + 1000;
            int[] iArr = new int[i14];
            long[] jArr = new long[i14];
            long[] jArr2 = new long[i14];
            int[] iArr2 = new int[i14];
            int[] iArr3 = new int[i14];
            e0.a[] aVarArr = new e0.a[i14];
            int i15 = this.f25211v;
            int i16 = i13 - i15;
            System.arraycopy(this.f25204o, i15, jArr, 0, i16);
            System.arraycopy(this.f25207r, this.f25211v, jArr2, 0, i16);
            System.arraycopy(this.f25206q, this.f25211v, iArr2, 0, i16);
            System.arraycopy(this.f25205p, this.f25211v, iArr3, 0, i16);
            System.arraycopy(this.f25208s, this.f25211v, aVarArr, 0, i16);
            System.arraycopy(this.f25203n, this.f25211v, iArr, 0, i16);
            int i17 = this.f25211v;
            System.arraycopy(this.f25204o, 0, jArr, i16, i17);
            System.arraycopy(this.f25207r, 0, jArr2, i16, i17);
            System.arraycopy(this.f25206q, 0, iArr2, i16, i17);
            System.arraycopy(this.f25205p, 0, iArr3, i16, i17);
            System.arraycopy(this.f25208s, 0, aVarArr, i16, i17);
            System.arraycopy(this.f25203n, 0, iArr, i16, i17);
            this.f25204o = jArr;
            this.f25207r = jArr2;
            this.f25206q = iArr2;
            this.f25205p = iArr3;
            this.f25208s = aVarArr;
            this.f25203n = iArr;
            this.f25211v = 0;
            this.f25202m = i14;
        }
    }

    private int j(long j4) {
        int i4 = this.f25209t;
        int E = E(i4 - 1);
        while (i4 > this.f25212w && this.f25207r[E] >= j4) {
            i4--;
            E--;
            if (E == -1) {
                E = this.f25202m - 1;
            }
        }
        return i4;
    }

    public static w0 k(com.google.android.exoplayer2.upstream.b bVar, Looper looper, com.google.android.exoplayer2.drm.u uVar, s.a aVar) {
        return new w0(bVar, (Looper) com.google.android.exoplayer2.util.a.g(looper), (com.google.android.exoplayer2.drm.u) com.google.android.exoplayer2.util.a.g(uVar), (s.a) com.google.android.exoplayer2.util.a.g(aVar));
    }

    public static w0 l(com.google.android.exoplayer2.upstream.b bVar) {
        return new w0(bVar, null, null, null);
    }

    private synchronized long m(long j4, boolean z9, boolean z10) {
        int i4;
        int i10 = this.f25209t;
        if (i10 != 0) {
            long[] jArr = this.f25207r;
            int i11 = this.f25211v;
            if (j4 >= jArr[i11]) {
                if (z10 && (i4 = this.f25212w) != i10) {
                    i10 = i4 + 1;
                }
                int w9 = w(i11, i10, j4, z9);
                if (w9 == -1) {
                    return -1L;
                }
                return p(w9);
            }
        }
        return -1L;
    }

    private synchronized long n() {
        int i4 = this.f25209t;
        if (i4 == 0) {
            return -1L;
        }
        return p(i4);
    }

    @GuardedBy("this")
    private long p(int i4) {
        int i10;
        this.f25214y = Math.max(this.f25214y, C(i4));
        this.f25209t -= i4;
        int i11 = this.f25210u + i4;
        this.f25210u = i11;
        int i12 = this.f25211v + i4;
        this.f25211v = i12;
        int i13 = this.f25202m;
        if (i12 >= i13) {
            this.f25211v = i12 - i13;
        }
        int i14 = this.f25212w - i4;
        this.f25212w = i14;
        if (i14 < 0) {
            this.f25212w = 0;
        }
        this.f25195f.e(i11);
        if (this.f25209t == 0) {
            int i15 = this.f25211v;
            if (i15 == 0) {
                i15 = this.f25202m;
            }
            return this.f25204o[i15 - 1] + this.f25205p[i10];
        }
        return this.f25204o[this.f25211v];
    }

    private long u(int i4) {
        int H = H() - i4;
        boolean z9 = false;
        com.google.android.exoplayer2.util.a.a(H >= 0 && H <= this.f25209t - this.f25212w);
        int i10 = this.f25209t - H;
        this.f25209t = i10;
        this.f25215z = Math.max(this.f25214y, C(i10));
        if (H == 0 && this.A) {
            z9 = true;
        }
        this.A = z9;
        this.f25195f.d(i4);
        int i11 = this.f25209t;
        if (i11 != 0) {
            int E = E(i11 - 1);
            return this.f25204o[E] + this.f25205p[E];
        }
        return 0L;
    }

    private int w(int i4, int i10, long j4, boolean z9) {
        int i11 = -1;
        for (int i12 = 0; i12 < i10; i12++) {
            long[] jArr = this.f25207r;
            if (jArr[i4] > j4) {
                return i11;
            }
            if (!z9 || (this.f25206q[i4] & 1) != 0) {
                if (jArr[i4] == j4) {
                    return i12;
                }
                i11 = i12;
            }
            i4++;
            if (i4 == this.f25202m) {
                i4 = 0;
            }
        }
        return i11;
    }

    public final synchronized long A() {
        return this.f25215z;
    }

    public final synchronized long B() {
        return Math.max(this.f25214y, C(this.f25212w));
    }

    public final int D() {
        return this.f25210u + this.f25212w;
    }

    public final synchronized int F(long j4, boolean z9) {
        int E = E(this.f25212w);
        if (I() && j4 >= this.f25207r[E]) {
            if (j4 > this.f25215z && z9) {
                return this.f25209t - this.f25212w;
            }
            int w9 = w(E, this.f25209t - this.f25212w, j4, true);
            if (w9 == -1) {
                return 0;
            }
            return w9;
        }
        return 0;
    }

    @Nullable
    public final synchronized Format G() {
        return this.C ? null : this.F;
    }

    public final int H() {
        return this.f25210u + this.f25209t;
    }

    protected final void J() {
        this.D = true;
    }

    public final synchronized boolean K() {
        return this.A;
    }

    @CallSuper
    public synchronized boolean L(boolean z9) {
        Format format;
        boolean z10 = true;
        if (!I()) {
            if (!z9 && !this.A && ((format = this.F) == null || format == this.f25200k)) {
                z10 = false;
            }
            return z10;
        } else if (this.f25195f.f(D()).f25219a != this.f25200k) {
            return true;
        } else {
            return N(E(this.f25212w));
        }
    }

    @CallSuper
    public void O() throws IOException {
        DrmSession drmSession = this.f25201l;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.g(this.f25201l.e()));
        }
    }

    public final synchronized int R() {
        return I() ? this.f25203n[E(this.f25212w)] : this.G;
    }

    @CallSuper
    public void S() {
        r();
        V();
    }

    @CallSuper
    public int T(com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4, boolean z9) {
        int Q = Q(v0Var, decoderInputBuffer, (i4 & 2) != 0, z9, this.f25194e);
        if (Q == -4 && !decoderInputBuffer.l()) {
            boolean z10 = (i4 & 1) != 0;
            if ((i4 & 4) == 0) {
                if (z10) {
                    this.f25193d.f(decoderInputBuffer, this.f25194e);
                } else {
                    this.f25193d.m(decoderInputBuffer, this.f25194e);
                }
            }
            if (!z10) {
                this.f25212w++;
            }
        }
        return Q;
    }

    @CallSuper
    public void U() {
        X(true);
        V();
    }

    public final void W() {
        X(false);
    }

    @CallSuper
    public void X(boolean z9) {
        this.f25193d.n();
        this.f25209t = 0;
        this.f25210u = 0;
        this.f25211v = 0;
        this.f25212w = 0;
        this.B = true;
        this.f25213x = Long.MIN_VALUE;
        this.f25214y = Long.MIN_VALUE;
        this.f25215z = Long.MIN_VALUE;
        this.A = false;
        this.f25195f.c();
        if (z9) {
            this.E = null;
            this.F = null;
            this.C = true;
        }
    }

    public final synchronized boolean Z(int i4) {
        Y();
        int i10 = this.f25210u;
        if (i4 >= i10 && i4 <= this.f25209t + i10) {
            this.f25213x = Long.MIN_VALUE;
            this.f25212w = i4 - i10;
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public final int a(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9, int i10) throws IOException {
        return this.f25193d.p(iVar, i4, z9);
    }

    public final synchronized boolean a0(long j4, boolean z9) {
        Y();
        int E = E(this.f25212w);
        if (I() && j4 >= this.f25207r[E] && (j4 <= this.f25215z || z9)) {
            int w9 = w(E, this.f25209t - this.f25212w, j4, true);
            if (w9 == -1) {
                return false;
            }
            this.f25213x = j4;
            this.f25212w += w9;
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ int b(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9) {
        return com.google.android.exoplayer2.extractor.d0.a(this, iVar, i4, z9);
    }

    public final void b0(long j4) {
        if (this.J != j4) {
            this.J = j4;
            J();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ void c(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        com.google.android.exoplayer2.extractor.d0.b(this, h0Var, i4);
    }

    public final void c0(long j4) {
        this.f25213x = j4;
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public final void d(Format format) {
        Format x9 = x(format);
        this.D = false;
        this.E = format;
        boolean d02 = d0(x9);
        d dVar = this.f25199j;
        if (dVar == null || !d02) {
            return;
        }
        dVar.a(x9);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    @Override // com.google.android.exoplayer2.extractor.e0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void e(long r12, int r14, int r15, int r16, @androidx.annotation.Nullable com.google.android.exoplayer2.extractor.e0.a r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.D
            if (r0 == 0) goto L10
            com.google.android.exoplayer2.Format r0 = r8.E
            java.lang.Object r0 = com.google.android.exoplayer2.util.a.k(r0)
            com.google.android.exoplayer2.Format r0 = (com.google.android.exoplayer2.Format) r0
            r11.d(r0)
        L10:
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L18
            r3 = 1
            goto L19
        L18:
            r3 = 0
        L19:
            boolean r4 = r8.B
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.B = r1
        L22:
            long r4 = r8.J
            long r4 = r4 + r12
            boolean r6 = r8.H
            if (r6 == 0) goto L5e
            long r6 = r8.f25213x
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 >= 0) goto L30
            return
        L30:
            if (r0 != 0) goto L5e
            boolean r0 = r8.I
            if (r0 != 0) goto L5a
            com.google.android.exoplayer2.Format r0 = r8.F
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r6 = r0.length()
            int r6 = r6 + 50
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r6)
            java.lang.String r6 = "Overriding unexpected non-sync sample for format: "
            r7.append(r6)
            r7.append(r0)
            java.lang.String r0 = r7.toString()
            java.lang.String r6 = "SampleQueue"
            com.google.android.exoplayer2.util.w.n(r6, r0)
            r8.I = r2
        L5a:
            r0 = r14 | 1
            r6 = r0
            goto L5f
        L5e:
            r6 = r14
        L5f:
            boolean r0 = r8.K
            if (r0 == 0) goto L70
            if (r3 == 0) goto L6f
            boolean r0 = r11.h(r4)
            if (r0 != 0) goto L6c
            goto L6f
        L6c:
            r8.K = r1
            goto L70
        L6f:
            return
        L70:
            com.google.android.exoplayer2.source.u0 r0 = r8.f25193d
            long r0 = r0.e()
            r7 = r15
            long r2 = (long) r7
            long r0 = r0 - r2
            r2 = r16
            long r2 = (long) r2
            long r9 = r0 - r2
            r0 = r11
            r1 = r4
            r3 = r6
            r4 = r9
            r6 = r15
            r7 = r17
            r0.i(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.w0.e(long, int, int, int, com.google.android.exoplayer2.extractor.e0$a):void");
    }

    public final void e0(@Nullable d dVar) {
        this.f25199j = dVar;
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public final void f(com.google.android.exoplayer2.util.h0 h0Var, int i4, int i10) {
        this.f25193d.q(h0Var, i4);
    }

    public final synchronized void f0(int i4) {
        boolean z9;
        if (i4 >= 0) {
            try {
                if (this.f25212w + i4 <= this.f25209t) {
                    z9 = true;
                    com.google.android.exoplayer2.util.a.a(z9);
                    this.f25212w += i4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        z9 = false;
        com.google.android.exoplayer2.util.a.a(z9);
        this.f25212w += i4;
    }

    public final void g0(int i4) {
        this.G = i4;
    }

    public final void h0() {
        this.K = true;
    }

    public synchronized long o() {
        int i4 = this.f25212w;
        if (i4 == 0) {
            return -1L;
        }
        return p(i4);
    }

    public final void q(long j4, boolean z9, boolean z10) {
        this.f25193d.b(m(j4, z9, z10));
    }

    public final void r() {
        this.f25193d.b(n());
    }

    public final void s() {
        this.f25193d.b(o());
    }

    public final void t(long j4) {
        if (this.f25209t == 0) {
            return;
        }
        com.google.android.exoplayer2.util.a.a(j4 > B());
        v(this.f25210u + j(j4));
    }

    public final void v(int i4) {
        this.f25193d.c(u(i4));
    }

    @CallSuper
    protected Format x(Format format) {
        return (this.J == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) ? format : format.buildUpon().i0(format.subsampleOffsetUs + this.J).E();
    }

    public final int y() {
        return this.f25210u;
    }

    public final synchronized long z() {
        return this.f25209t == 0 ? Long.MIN_VALUE : this.f25207r[this.f25211v];
    }
}
