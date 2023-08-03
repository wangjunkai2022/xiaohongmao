package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;

/* compiled from: EngineResource.java */
/* loaded from: classes.dex */
class p<Z> implements u<Z> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f8935a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f8936b;

    /* renamed from: c  reason: collision with root package name */
    private final u<Z> f8937c;

    /* renamed from: d  reason: collision with root package name */
    private final a f8938d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.c f8939e;

    /* renamed from: f  reason: collision with root package name */
    private int f8940f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8941g;

    /* compiled from: EngineResource.java */
    /* loaded from: classes.dex */
    interface a {
        void d(com.bumptech.glide.load.c cVar, p<?> pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(u<Z> uVar, boolean z9, boolean z10, com.bumptech.glide.load.c cVar, a aVar) {
        this.f8937c = (u) com.bumptech.glide.util.m.d(uVar);
        this.f8935a = z9;
        this.f8936b = z10;
        this.f8939e = cVar;
        this.f8938d = (a) com.bumptech.glide.util.m.d(aVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Z> a() {
        return this.f8937c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        if (!this.f8941g) {
            this.f8940f++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u<Z> c() {
        return this.f8937c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.f8935a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        boolean z9;
        synchronized (this) {
            int i4 = this.f8940f;
            if (i4 > 0) {
                z9 = true;
                int i10 = i4 - 1;
                this.f8940f = i10;
                if (i10 != 0) {
                    z9 = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z9) {
            this.f8938d.d(this.f8939e, this);
        }
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Z get() {
        return this.f8937c.get();
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f8937c.getSize();
    }

    @Override // com.bumptech.glide.load.engine.u
    public synchronized void recycle() {
        if (this.f8940f <= 0) {
            if (!this.f8941g) {
                this.f8941g = true;
                if (this.f8936b) {
                    this.f8937c.recycle();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f8935a + ", listener=" + this.f8938d + ", key=" + this.f8939e + ", acquired=" + this.f8940f + ", isRecycled=" + this.f8941g + ", resource=" + this.f8937c + '}';
    }
}
