package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.h0;
import com.google.android.exoplayer2.source.z;
import java.io.IOException;
import java.util.HashMap;

/* compiled from: CompositeMediaSource.java */
/* loaded from: classes2.dex */
public abstract class e<T> extends com.google.android.exoplayer2.source.a {

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<T, b<T>> f24910g = new HashMap<>();
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Handler f24911h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.p0 f24912i;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes2.dex */
    public final class a implements h0, com.google.android.exoplayer2.drm.s {
        @com.google.android.exoplayer2.util.w0

        /* renamed from: a  reason: collision with root package name */
        private final T f24913a;

        /* renamed from: b  reason: collision with root package name */
        private h0.a f24914b;

        /* renamed from: c  reason: collision with root package name */
        private s.a f24915c;

        public a(@com.google.android.exoplayer2.util.w0 T t9) {
            this.f24914b = e.this.t(null);
            this.f24915c = e.this.r(null);
            this.f24913a = t9;
        }

        private boolean a(int i4, @Nullable z.a aVar) {
            z.a aVar2;
            if (aVar != null) {
                aVar2 = e.this.E(this.f24913a, aVar);
                if (aVar2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int G = e.this.G(this.f24913a, i4);
            h0.a aVar3 = this.f24914b;
            if (aVar3.f24939a != G || !com.google.android.exoplayer2.util.z0.c(aVar3.f24940b, aVar2)) {
                this.f24914b = e.this.s(G, aVar2, 0L);
            }
            s.a aVar4 = this.f24915c;
            if (aVar4.f21813a == G && com.google.android.exoplayer2.util.z0.c(aVar4.f21814b, aVar2)) {
                return true;
            }
            this.f24915c = e.this.q(G, aVar2);
            return true;
        }

        private s b(s sVar) {
            long F = e.this.F(this.f24913a, sVar.f25169f);
            long F2 = e.this.F(this.f24913a, sVar.f25170g);
            return (F == sVar.f25169f && F2 == sVar.f25170g) ? sVar : new s(sVar.f25164a, sVar.f25165b, sVar.f25166c, sVar.f25167d, sVar.f25168e, F, F2);
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void H(int i4, @Nullable z.a aVar, s sVar) {
            if (a(i4, aVar)) {
                this.f24914b.j(b(sVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void I(int i4, @Nullable z.a aVar, o oVar, s sVar) {
            if (a(i4, aVar)) {
                this.f24914b.s(oVar, b(sVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void J(int i4, @Nullable z.a aVar, o oVar, s sVar) {
            if (a(i4, aVar)) {
                this.f24914b.B(oVar, b(sVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void N(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f24915c.i();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void O(int i4, z.a aVar) {
            com.google.android.exoplayer2.drm.l.d(this, i4, aVar);
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void W(int i4, @Nullable z.a aVar, s sVar) {
            if (a(i4, aVar)) {
                this.f24914b.E(b(sVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void Y(int i4, @Nullable z.a aVar, Exception exc) {
            if (a(i4, aVar)) {
                this.f24915c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void g0(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f24915c.h();
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void j0(int i4, @Nullable z.a aVar, o oVar, s sVar) {
            if (a(i4, aVar)) {
                this.f24914b.v(oVar, b(sVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void k0(int i4, @Nullable z.a aVar, int i10) {
            if (a(i4, aVar)) {
                this.f24915c.k(i10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void l0(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f24915c.m();
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void n0(int i4, @Nullable z.a aVar, o oVar, s sVar, IOException iOException, boolean z9) {
            if (a(i4, aVar)) {
                this.f24914b.y(oVar, b(sVar), iOException, z9);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void p0(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f24915c.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final z f24917a;

        /* renamed from: b  reason: collision with root package name */
        public final z.b f24918b;

        /* renamed from: c  reason: collision with root package name */
        public final e<T>.a f24919c;

        public b(z zVar, z.b bVar, e<T>.a aVar) {
            this.f24917a = zVar;
            this.f24918b = bVar;
            this.f24919c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    public void A() {
        for (b<T> bVar : this.f24910g.values()) {
            bVar.f24917a.b(bVar.f24918b);
            bVar.f24917a.d(bVar.f24919c);
            bVar.f24917a.m(bVar.f24919c);
        }
        this.f24910g.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void C(@com.google.android.exoplayer2.util.w0 T t9) {
        b bVar = (b) com.google.android.exoplayer2.util.a.g(this.f24910g.get(t9));
        bVar.f24917a.j(bVar.f24918b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void D(@com.google.android.exoplayer2.util.w0 T t9) {
        b bVar = (b) com.google.android.exoplayer2.util.a.g(this.f24910g.get(t9));
        bVar.f24917a.i(bVar.f24918b);
    }

    @Nullable
    protected z.a E(@com.google.android.exoplayer2.util.w0 T t9, z.a aVar) {
        return aVar;
    }

    protected long F(@com.google.android.exoplayer2.util.w0 T t9, long j4) {
        return j4;
    }

    protected int G(@com.google.android.exoplayer2.util.w0 T t9, int i4) {
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: I */
    public abstract void H(@com.google.android.exoplayer2.util.w0 T t9, z zVar, s2 s2Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void J(@com.google.android.exoplayer2.util.w0 final T t9, z zVar) {
        com.google.android.exoplayer2.util.a.a(!this.f24910g.containsKey(t9));
        z.b bVar = new z.b() { // from class: com.google.android.exoplayer2.source.d
            @Override // com.google.android.exoplayer2.source.z.b
            public final void a(z zVar2, s2 s2Var) {
                e.this.H(t9, zVar2, s2Var);
            }
        };
        a aVar = new a(t9);
        this.f24910g.put(t9, new b<>(zVar, bVar, aVar));
        zVar.c((Handler) com.google.android.exoplayer2.util.a.g(this.f24911h), aVar);
        zVar.l((Handler) com.google.android.exoplayer2.util.a.g(this.f24911h), aVar);
        zVar.h(bVar, this.f24912i);
        if (x()) {
            return;
        }
        zVar.j(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void K(@com.google.android.exoplayer2.util.w0 T t9) {
        b bVar = (b) com.google.android.exoplayer2.util.a.g(this.f24910g.remove(t9));
        bVar.f24917a.b(bVar.f24918b);
        bVar.f24917a.d(bVar.f24919c);
        bVar.f24917a.m(bVar.f24919c);
    }

    @Override // com.google.android.exoplayer2.source.z
    @CallSuper
    public void n() throws IOException {
        for (b<T> bVar : this.f24910g.values()) {
            bVar.f24917a.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    public void v() {
        for (b<T> bVar : this.f24910g.values()) {
            bVar.f24917a.j(bVar.f24918b);
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    protected void w() {
        for (b<T> bVar : this.f24910g.values()) {
            bVar.f24917a.i(bVar.f24918b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    public void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        this.f24912i = p0Var;
        this.f24911h = com.google.android.exoplayer2.util.z0.z();
    }
}
