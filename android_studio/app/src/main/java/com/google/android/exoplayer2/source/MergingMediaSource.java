package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import com.google.common.collect.h3;
import com.google.common.collect.i3;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class MergingMediaSource extends e<Integer> {

    /* renamed from: u  reason: collision with root package name */
    private static final int f24627u = -1;

    /* renamed from: v  reason: collision with root package name */
    private static final com.google.android.exoplayer2.b1 f24628v = new b1.c().z("MergingMediaSource").a();

    /* renamed from: j  reason: collision with root package name */
    private final boolean f24629j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f24630k;

    /* renamed from: l  reason: collision with root package name */
    private final z[] f24631l;

    /* renamed from: m  reason: collision with root package name */
    private final s2[] f24632m;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayList<z> f24633n;

    /* renamed from: o  reason: collision with root package name */
    private final g f24634o;

    /* renamed from: p  reason: collision with root package name */
    private final Map<Object, Long> f24635p;

    /* renamed from: q  reason: collision with root package name */
    private final h3<Object, c> f24636q;

    /* renamed from: r  reason: collision with root package name */
    private int f24637r;

    /* renamed from: s  reason: collision with root package name */
    private long[][] f24638s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private IllegalMergeException f24639t;

    /* loaded from: classes2.dex */
    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface a {
        }

        public IllegalMergeException(int i4) {
            this.reason = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a extends m {

        /* renamed from: g  reason: collision with root package name */
        private final long[] f24640g;

        /* renamed from: h  reason: collision with root package name */
        private final long[] f24641h;

        public a(s2 s2Var, Map<Object, Long> map) {
            super(s2Var);
            int u9 = s2Var.u();
            this.f24641h = new long[s2Var.u()];
            s2.d dVar = new s2.d();
            for (int i4 = 0; i4 < u9; i4++) {
                this.f24641h[i4] = s2Var.r(i4, dVar).f24586n;
            }
            int m9 = s2Var.m();
            this.f24640g = new long[m9];
            s2.b bVar = new s2.b();
            for (int i10 = 0; i10 < m9; i10++) {
                s2Var.k(i10, bVar, true);
                long longValue = ((Long) com.google.android.exoplayer2.util.a.g(map.get(bVar.f24554b))).longValue();
                long[] jArr = this.f24640g;
                jArr[i10] = longValue == Long.MIN_VALUE ? bVar.f24556d : longValue;
                long j4 = bVar.f24556d;
                if (j4 != com.google.android.exoplayer2.i.f23649b) {
                    long[] jArr2 = this.f24641h;
                    int i11 = bVar.f24555c;
                    jArr2[i11] = jArr2[i11] - (j4 - jArr[i10]);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.b k(int i4, s2.b bVar, boolean z9) {
            super.k(i4, bVar, z9);
            bVar.f24556d = this.f24640g[i4];
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.d s(int i4, s2.d dVar, long j4) {
            long j10;
            super.s(i4, dVar, j4);
            long j11 = this.f24641h[i4];
            dVar.f24586n = j11;
            if (j11 != com.google.android.exoplayer2.i.f23649b) {
                long j12 = dVar.f24585m;
                if (j12 != com.google.android.exoplayer2.i.f23649b) {
                    j10 = Math.min(j12, j11);
                    dVar.f24585m = j10;
                    return dVar;
                }
            }
            j10 = dVar.f24585m;
            dVar.f24585m = j10;
            return dVar;
        }
    }

    public MergingMediaSource(z... zVarArr) {
        this(false, zVarArr);
    }

    private void L() {
        s2.b bVar = new s2.b();
        for (int i4 = 0; i4 < this.f24637r; i4++) {
            long j4 = -this.f24632m[0].j(i4, bVar).q();
            int i10 = 1;
            while (true) {
                s2[] s2VarArr = this.f24632m;
                if (i10 < s2VarArr.length) {
                    this.f24638s[i4][i10] = j4 - (-s2VarArr[i10].j(i4, bVar).q());
                    i10++;
                }
            }
        }
    }

    private void O() {
        s2[] s2VarArr;
        s2.b bVar = new s2.b();
        for (int i4 = 0; i4 < this.f24637r; i4++) {
            long j4 = Long.MIN_VALUE;
            int i10 = 0;
            while (true) {
                s2VarArr = this.f24632m;
                if (i10 >= s2VarArr.length) {
                    break;
                }
                long m9 = s2VarArr[i10].j(i4, bVar).m();
                if (m9 != com.google.android.exoplayer2.i.f23649b) {
                    long j10 = m9 + this.f24638s[i4][i10];
                    if (j4 == Long.MIN_VALUE || j10 < j4) {
                        j4 = j10;
                    }
                }
                i10++;
            }
            Object q9 = s2VarArr[0].q(i4);
            this.f24635p.put(q9, Long.valueOf(j4));
            for (c cVar : this.f24636q.get(q9)) {
                cVar.r(0L, j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void A() {
        super.A();
        Arrays.fill(this.f24632m, (Object) null);
        this.f24637r = -1;
        this.f24639t = null;
        this.f24633n.clear();
        Collections.addAll(this.f24633n, this.f24631l);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    @Nullable
    /* renamed from: M */
    public z.a E(Integer num, z.a aVar) {
        if (num.intValue() == 0) {
            return aVar;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: N */
    public void I(Integer num, z zVar, s2 s2Var) {
        if (this.f24639t != null) {
            return;
        }
        if (this.f24637r == -1) {
            this.f24637r = s2Var.m();
        } else if (s2Var.m() != this.f24637r) {
            this.f24639t = new IllegalMergeException(0);
            return;
        }
        if (this.f24638s.length == 0) {
            this.f24638s = (long[][]) Array.newInstance(long.class, this.f24637r, this.f24632m.length);
        }
        this.f24633n.remove(zVar);
        this.f24632m[num.intValue()] = s2Var;
        if (this.f24633n.isEmpty()) {
            if (this.f24629j) {
                L();
            }
            a aVar = this.f24632m[0];
            if (this.f24630k) {
                O();
                aVar = new a(aVar, this.f24635p);
            }
            z(aVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        int length = this.f24631l.length;
        w[] wVarArr = new w[length];
        int f10 = this.f24632m[0].f(aVar.f25221a);
        for (int i4 = 0; i4 < length; i4++) {
            wVarArr[i4] = this.f24631l[i4].a(aVar.a(this.f24632m[i4].q(f10)), bVar, j4 - this.f24638s[f10][i4]);
        }
        k0 k0Var = new k0(this.f24634o, this.f24638s[f10], wVarArr);
        if (this.f24630k) {
            c cVar = new c(k0Var, true, 0L, ((Long) com.google.android.exoplayer2.util.a.g(this.f24635p.get(aVar.f25221a))).longValue());
            this.f24636q.put(aVar.f25221a, cVar);
            return cVar;
        }
        return k0Var;
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        z[] zVarArr = this.f24631l;
        return zVarArr.length > 0 ? zVarArr[0].e() : f24628v;
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        z[] zVarArr = this.f24631l;
        if (zVarArr.length > 0) {
            return zVarArr[0].f();
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        if (this.f24630k) {
            c cVar = (c) wVar;
            Iterator<Map.Entry<Object, c>> it = this.f24636q.entries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Object, c> next = it.next();
                if (next.getValue().equals(cVar)) {
                    this.f24636q.remove(next.getKey(), next.getValue());
                    break;
                }
            }
            wVar = cVar.f24751a;
        }
        k0 k0Var = (k0) wVar;
        int i4 = 0;
        while (true) {
            z[] zVarArr = this.f24631l;
            if (i4 >= zVarArr.length) {
                return;
            }
            zVarArr[i4].g(k0Var.a(i4));
            i4++;
        }
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.z
    public void n() throws IOException {
        IllegalMergeException illegalMergeException = this.f24639t;
        if (illegalMergeException == null) {
            super.n();
            return;
        }
        throw illegalMergeException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        super.y(p0Var);
        for (int i4 = 0; i4 < this.f24631l.length; i4++) {
            J(Integer.valueOf(i4), this.f24631l[i4]);
        }
    }

    public MergingMediaSource(boolean z9, z... zVarArr) {
        this(z9, false, zVarArr);
    }

    public MergingMediaSource(boolean z9, boolean z10, z... zVarArr) {
        this(z9, z10, new j(), zVarArr);
    }

    public MergingMediaSource(boolean z9, boolean z10, g gVar, z... zVarArr) {
        this.f24629j = z9;
        this.f24630k = z10;
        this.f24631l = zVarArr;
        this.f24634o = gVar;
        this.f24633n = new ArrayList<>(Arrays.asList(zVarArr));
        this.f24637r = -1;
        this.f24632m = new s2[zVarArr.length];
        this.f24638s = new long[0];
        this.f24635p = new HashMap();
        this.f24636q = i3.d().a().a();
    }
}
