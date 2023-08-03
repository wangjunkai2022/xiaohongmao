package dagger.internal;

/* compiled from: DelegateFactory.java */
/* loaded from: classes3.dex */
public final class f<T> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    private u7.c<T> f62060a;

    public static <T> void b(u7.c<T> cVar, u7.c<T> cVar2) {
        p.b(cVar2);
        f fVar = (f) cVar;
        if (fVar.f62060a == null) {
            fVar.f62060a = cVar2;
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u7.c<T> a() {
        return (u7.c) p.b(this.f62060a);
    }

    @Deprecated
    public void c(u7.c<T> cVar) {
        b(this, cVar);
    }

    @Override // u7.c
    public T get() {
        u7.c<T> cVar = this.f62060a;
        if (cVar != null) {
            return cVar.get();
        }
        throw new IllegalStateException();
    }
}
