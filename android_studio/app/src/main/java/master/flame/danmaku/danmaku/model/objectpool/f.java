package master.flame.danmaku.danmaku.model.objectpool;

import master.flame.danmaku.danmaku.model.objectpool.c;

/* compiled from: SynchronizedPool.java */
/* loaded from: classes4.dex */
class f<T extends c<T>> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    private final b<T> f87337a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f87338b;

    public f(b<T> bVar) {
        this.f87337a = bVar;
        this.f87338b = this;
    }

    @Override // master.flame.danmaku.danmaku.model.objectpool.b
    public void a(T t9) {
        synchronized (this.f87338b) {
            this.f87337a.a(t9);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.objectpool.b
    public T acquire() {
        T acquire;
        synchronized (this.f87338b) {
            acquire = this.f87337a.acquire();
        }
        return acquire;
    }

    public f(b<T> bVar, Object obj) {
        this.f87337a = bVar;
        this.f87338b = obj;
    }
}
