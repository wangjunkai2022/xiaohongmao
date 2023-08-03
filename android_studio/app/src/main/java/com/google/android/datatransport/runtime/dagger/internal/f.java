package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: DoubleCheck.java */
/* loaded from: classes2.dex */
public final class f<T> implements u7.c<T>, k2.e<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f20416c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f20417d = false;

    /* renamed from: a  reason: collision with root package name */
    private volatile u7.c<T> f20418a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f20419b = f20416c;

    private f(u7.c<T> cVar) {
        this.f20418a = cVar;
    }

    public static <P extends u7.c<T>, T> k2.e<T> a(P p9) {
        if (p9 instanceof k2.e) {
            return (k2.e) p9;
        }
        return new f((u7.c) p.b(p9));
    }

    public static <P extends u7.c<T>, T> u7.c<T> b(P p9) {
        p.b(p9);
        return p9 instanceof f ? p9 : new f(p9);
    }

    public static Object c(Object obj, Object obj2) {
        if (!((obj == f20416c || (obj instanceof o)) ? false : true) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // u7.c
    public T get() {
        T t9 = (T) this.f20419b;
        Object obj = f20416c;
        if (t9 == obj) {
            synchronized (this) {
                t9 = this.f20419b;
                if (t9 == obj) {
                    t9 = this.f20418a.get();
                    this.f20419b = c(this.f20419b, t9);
                    this.f20418a = null;
                }
            }
        }
        return t9;
    }
}
