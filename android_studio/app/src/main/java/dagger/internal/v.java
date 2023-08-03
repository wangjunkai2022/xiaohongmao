package dagger.internal;

/* compiled from: SingleCheck.java */
/* loaded from: classes3.dex */
public final class v<T> implements u7.c<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f62081c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f62082d = false;

    /* renamed from: a  reason: collision with root package name */
    private volatile u7.c<T> f62083a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f62084b = f62081c;

    private v(u7.c<T> cVar) {
        this.f62083a = cVar;
    }

    public static <P extends u7.c<T>, T> u7.c<T> a(P p9) {
        return ((p9 instanceof v) || (p9 instanceof g)) ? p9 : new v((u7.c) p.b(p9));
    }

    @Override // u7.c
    public T get() {
        T t9 = (T) this.f62084b;
        if (t9 == f62081c) {
            u7.c<T> cVar = this.f62083a;
            if (cVar == null) {
                return (T) this.f62084b;
            }
            T t10 = cVar.get();
            this.f62084b = t10;
            this.f62083a = null;
            return t10;
        }
        return t9;
    }
}
