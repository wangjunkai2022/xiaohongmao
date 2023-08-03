package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.h0;
import com.google.android.exoplayer2.source.z;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: BaseMediaSource.java */
/* loaded from: classes2.dex */
public abstract class a implements z {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<z.b> f24642a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<z.b> f24643b = new HashSet<>(1);

    /* renamed from: c  reason: collision with root package name */
    private final h0.a f24644c = new h0.a();

    /* renamed from: d  reason: collision with root package name */
    private final s.a f24645d = new s.a();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Looper f24646e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private s2 f24647f;

    protected abstract void A();

    @Override // com.google.android.exoplayer2.source.z
    public final void b(z.b bVar) {
        this.f24642a.remove(bVar);
        if (this.f24642a.isEmpty()) {
            this.f24646e = null;
            this.f24647f = null;
            this.f24643b.clear();
            A();
            return;
        }
        j(bVar);
    }

    @Override // com.google.android.exoplayer2.source.z
    public final void c(Handler handler, h0 h0Var) {
        com.google.android.exoplayer2.util.a.g(handler);
        com.google.android.exoplayer2.util.a.g(h0Var);
        this.f24644c.g(handler, h0Var);
    }

    @Override // com.google.android.exoplayer2.source.z
    public final void d(h0 h0Var) {
        this.f24644c.C(h0Var);
    }

    @Override // com.google.android.exoplayer2.source.z
    public /* synthetic */ Object f() {
        return y.b(this);
    }

    @Override // com.google.android.exoplayer2.source.z
    public final void h(z.b bVar, @Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f24646e;
        com.google.android.exoplayer2.util.a.a(looper == null || looper == myLooper);
        s2 s2Var = this.f24647f;
        this.f24642a.add(bVar);
        if (this.f24646e == null) {
            this.f24646e = myLooper;
            this.f24643b.add(bVar);
            y(p0Var);
        } else if (s2Var != null) {
            i(bVar);
            bVar.a(this, s2Var);
        }
    }

    @Override // com.google.android.exoplayer2.source.z
    public final void i(z.b bVar) {
        com.google.android.exoplayer2.util.a.g(this.f24646e);
        boolean isEmpty = this.f24643b.isEmpty();
        this.f24643b.add(bVar);
        if (isEmpty) {
            w();
        }
    }

    @Override // com.google.android.exoplayer2.source.z
    public final void j(z.b bVar) {
        boolean z9 = !this.f24643b.isEmpty();
        this.f24643b.remove(bVar);
        if (z9 && this.f24643b.isEmpty()) {
            v();
        }
    }

    @Override // com.google.android.exoplayer2.source.z
    public final void l(Handler handler, com.google.android.exoplayer2.drm.s sVar) {
        com.google.android.exoplayer2.util.a.g(handler);
        com.google.android.exoplayer2.util.a.g(sVar);
        this.f24645d.g(handler, sVar);
    }

    @Override // com.google.android.exoplayer2.source.z
    public final void m(com.google.android.exoplayer2.drm.s sVar) {
        this.f24645d.t(sVar);
    }

    @Override // com.google.android.exoplayer2.source.z
    public /* synthetic */ boolean o() {
        return y.c(this);
    }

    @Override // com.google.android.exoplayer2.source.z
    public /* synthetic */ s2 p() {
        return y.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s.a q(int i4, @Nullable z.a aVar) {
        return this.f24645d.u(i4, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s.a r(@Nullable z.a aVar) {
        return this.f24645d.u(0, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h0.a s(int i4, @Nullable z.a aVar, long j4) {
        return this.f24644c.F(i4, aVar, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h0.a t(@Nullable z.a aVar) {
        return this.f24644c.F(0, aVar, 0L);
    }

    protected final h0.a u(z.a aVar, long j4) {
        com.google.android.exoplayer2.util.a.g(aVar);
        return this.f24644c.F(0, aVar, j4);
    }

    protected void v() {
    }

    protected void w() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean x() {
        return !this.f24643b.isEmpty();
    }

    protected abstract void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void z(s2 s2Var) {
        this.f24647f = s2Var;
        Iterator<z.b> it = this.f24642a.iterator();
        while (it.hasNext()) {
            it.next().a(this, s2Var);
        }
    }
}
