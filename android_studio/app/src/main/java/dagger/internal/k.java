package dagger.internal;

/* compiled from: InstanceFactory.java */
/* loaded from: classes3.dex */
public final class k<T> implements h<T>, d6.e<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final k<Object> f62065b = new k<>(null);

    /* renamed from: a  reason: collision with root package name */
    private final T f62066a;

    private k(T t9) {
        this.f62066a = t9;
    }

    public static <T> h<T> a(T t9) {
        return new k(p.c(t9, "instance cannot be null"));
    }

    public static <T> h<T> b(T t9) {
        if (t9 == null) {
            return c();
        }
        return new k(t9);
    }

    private static <T> k<T> c() {
        return (k<T>) f62065b;
    }

    @Override // u7.c
    public T get() {
        return this.f62066a;
    }
}
