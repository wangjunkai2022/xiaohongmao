package dagger.internal;

/* compiled from: DoubleCheck.java */
/* loaded from: classes3.dex */
public final class g<T> implements u7.c<T>, d6.e<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f62061c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f62062d = false;

    /* renamed from: a  reason: collision with root package name */
    private volatile u7.c<T> f62063a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f62064b = f62061c;

    private g(u7.c<T> cVar) {
        this.f62063a = cVar;
    }

    public static <P extends u7.c<T>, T> d6.e<T> a(P p9) {
        if (p9 instanceof d6.e) {
            return (d6.e) p9;
        }
        return new g((u7.c) p.b(p9));
    }

    public static <P extends u7.c<T>, T> u7.c<T> b(P p9) {
        p.b(p9);
        return p9 instanceof g ? p9 : new g(p9);
    }

    private static Object c(Object obj, Object obj2) {
        if (!(obj != f62061c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // u7.c
    public T get() {
        T t9 = (T) this.f62064b;
        Object obj = f62061c;
        if (t9 == obj) {
            synchronized (this) {
                t9 = this.f62064b;
                if (t9 == obj) {
                    t9 = this.f62063a.get();
                    this.f62064b = c(this.f62064b, t9);
                    this.f62063a = null;
                }
            }
        }
        return t9;
    }
}
