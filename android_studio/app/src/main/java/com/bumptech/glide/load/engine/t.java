package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.util.pool.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LockedResource.java */
/* loaded from: classes.dex */
public final class t<Z> implements u<Z>, a.f {

    /* renamed from: e  reason: collision with root package name */
    private static final Pools.Pool<t<?>> f8979e = com.bumptech.glide.util.pool.a.e(20, new a());

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.util.pool.c f8980a = com.bumptech.glide.util.pool.c.a();

    /* renamed from: b  reason: collision with root package name */
    private u<Z> f8981b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8982c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8983d;

    /* compiled from: LockedResource.java */
    /* loaded from: classes.dex */
    class a implements a.d<t<?>> {
        a() {
        }

        @Override // com.bumptech.glide.util.pool.a.d
        /* renamed from: b */
        public t<?> a() {
            return new t<>();
        }
    }

    t() {
    }

    private void b(u<Z> uVar) {
        this.f8983d = false;
        this.f8982c = true;
        this.f8981b = uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static <Z> t<Z> c(u<Z> uVar) {
        t<Z> tVar = (t) com.bumptech.glide.util.m.d(f8979e.acquire());
        tVar.b(uVar);
        return tVar;
    }

    private void e() {
        this.f8981b = null;
        f8979e.release(this);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Z> a() {
        return this.f8981b.a();
    }

    @Override // com.bumptech.glide.util.pool.a.f
    @NonNull
    public com.bumptech.glide.util.pool.c d() {
        return this.f8980a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f() {
        this.f8980a.c();
        if (this.f8982c) {
            this.f8982c = false;
            if (this.f8983d) {
                recycle();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Z get() {
        return this.f8981b.get();
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f8981b.getSize();
    }

    @Override // com.bumptech.glide.load.engine.u
    public synchronized void recycle() {
        this.f8980a.c();
        this.f8983d = true;
        if (!this.f8982c) {
            this.f8981b.recycle();
            e();
        }
    }
}
