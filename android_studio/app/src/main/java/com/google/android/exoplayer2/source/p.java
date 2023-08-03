package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.source.z0;
import java.util.HashMap;
import java.util.Map;

/* compiled from: LoopingMediaSource.java */
@Deprecated
/* loaded from: classes2.dex */
public final class p extends e<Void> {

    /* renamed from: j  reason: collision with root package name */
    private final r f25063j;

    /* renamed from: k  reason: collision with root package name */
    private final int f25064k;

    /* renamed from: l  reason: collision with root package name */
    private final Map<z.a, z.a> f25065l;

    /* renamed from: m  reason: collision with root package name */
    private final Map<w, z.a> f25066m;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LoopingMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class a extends m {
        public a(s2 s2Var) {
            super(s2Var);
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public int i(int i4, int i10, boolean z9) {
            int i11 = this.f25005f.i(i4, i10, z9);
            return i11 == -1 ? e(z9) : i11;
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public int p(int i4, int i10, boolean z9) {
            int p9 = this.f25005f.p(i4, i10, z9);
            return p9 == -1 ? g(z9) : p9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LoopingMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class b extends com.google.android.exoplayer2.a {

        /* renamed from: i  reason: collision with root package name */
        private final s2 f25067i;

        /* renamed from: j  reason: collision with root package name */
        private final int f25068j;

        /* renamed from: k  reason: collision with root package name */
        private final int f25069k;

        /* renamed from: l  reason: collision with root package name */
        private final int f25070l;

        public b(s2 s2Var, int i4) {
            super(false, new z0.b(i4));
            this.f25067i = s2Var;
            int m9 = s2Var.m();
            this.f25068j = m9;
            this.f25069k = s2Var.u();
            this.f25070l = i4;
            if (m9 > 0) {
                com.google.android.exoplayer2.util.a.j(i4 <= Integer.MAX_VALUE / m9, "LoopingMediaSource contains too many periods");
            }
        }

        @Override // com.google.android.exoplayer2.a
        protected int A(int i4) {
            return i4 / this.f25069k;
        }

        @Override // com.google.android.exoplayer2.a
        protected Object D(int i4) {
            return Integer.valueOf(i4);
        }

        @Override // com.google.android.exoplayer2.a
        protected int F(int i4) {
            return i4 * this.f25068j;
        }

        @Override // com.google.android.exoplayer2.a
        protected int G(int i4) {
            return i4 * this.f25069k;
        }

        @Override // com.google.android.exoplayer2.a
        protected s2 J(int i4) {
            return this.f25067i;
        }

        @Override // com.google.android.exoplayer2.s2
        public int m() {
            return this.f25068j * this.f25070l;
        }

        @Override // com.google.android.exoplayer2.s2
        public int u() {
            return this.f25069k * this.f25070l;
        }

        @Override // com.google.android.exoplayer2.a
        protected int y(Object obj) {
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.a
        protected int z(int i4) {
            return i4 / this.f25068j;
        }
    }

    public p(z zVar) {
        this(zVar, Integer.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    @Nullable
    /* renamed from: L */
    public z.a E(Void r22, z.a aVar) {
        return this.f25064k != Integer.MAX_VALUE ? this.f25065l.get(aVar) : aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: M */
    public void I(Void r12, z zVar, s2 s2Var) {
        s2 aVar;
        if (this.f25064k != Integer.MAX_VALUE) {
            aVar = new b(s2Var, this.f25064k);
        } else {
            aVar = new a(s2Var);
        }
        z(aVar);
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        if (this.f25064k == Integer.MAX_VALUE) {
            return this.f25063j.a(aVar, bVar, j4);
        }
        z.a a10 = aVar.a(com.google.android.exoplayer2.a.B(aVar.f25221a));
        this.f25065l.put(a10, aVar);
        q a11 = this.f25063j.a(a10, bVar, j4);
        this.f25066m.put(a11, a10);
        return a11;
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        return this.f25063j.e();
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        return this.f25063j.f();
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        this.f25063j.g(wVar);
        z.a remove = this.f25066m.remove(wVar);
        if (remove != null) {
            this.f25065l.remove(remove);
        }
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    public boolean o() {
        return false;
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    public s2 p() {
        if (this.f25064k != Integer.MAX_VALUE) {
            return new b(this.f25063j.P(), this.f25064k);
        }
        return new a(this.f25063j.P());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        super.y(p0Var);
        J(null, this.f25063j);
    }

    public p(z zVar, int i4) {
        com.google.android.exoplayer2.util.a.a(i4 > 0);
        this.f25063j = new r(zVar, false);
        this.f25064k = i4;
        this.f25065l = new HashMap();
        this.f25066m = new HashMap();
    }
}
