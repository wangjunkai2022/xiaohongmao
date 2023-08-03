package master.flame.danmaku.danmaku.model.objectpool;

import master.flame.danmaku.danmaku.model.objectpool.c;

/* compiled from: FinitePool.java */
/* loaded from: classes4.dex */
class a<T extends c<T>> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    private final d<T> f87332a;

    /* renamed from: b  reason: collision with root package name */
    private final int f87333b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f87334c;

    /* renamed from: d  reason: collision with root package name */
    private T f87335d;

    /* renamed from: e  reason: collision with root package name */
    private int f87336e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(d<T> dVar) {
        this.f87332a = dVar;
        this.f87333b = 0;
        this.f87334c = true;
    }

    @Override // master.flame.danmaku.danmaku.model.objectpool.b
    public void a(T t9) {
        if (!t9.d()) {
            if (this.f87334c || this.f87336e < this.f87333b) {
                this.f87336e++;
                t9.j(this.f87335d);
                t9.a(true);
                this.f87335d = t9;
            }
            this.f87332a.a(t9);
            return;
        }
        System.out.print("[FinitePool] Element is already in pool: " + t9);
    }

    @Override // master.flame.danmaku.danmaku.model.objectpool.b
    public T acquire() {
        T t9 = this.f87335d;
        if (t9 != null) {
            this.f87335d = (T) t9.c();
            this.f87336e--;
        } else {
            t9 = this.f87332a.b();
        }
        if (t9 != null) {
            t9.j(null);
            t9.a(false);
            this.f87332a.c(t9);
        }
        return t9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(d<T> dVar, int i4) {
        if (i4 > 0) {
            this.f87332a = dVar;
            this.f87333b = i4;
            this.f87334c = false;
            return;
        }
        throw new IllegalArgumentException("The pool limit must be > 0");
    }
}
