package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: SingleCheck.java */
/* loaded from: classes2.dex */
public final class t<T> implements u7.c<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f20436c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f20437d = false;

    /* renamed from: a  reason: collision with root package name */
    private volatile u7.c<T> f20438a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f20439b = f20436c;

    private t(u7.c<T> cVar) {
        this.f20438a = cVar;
    }

    public static <P extends u7.c<T>, T> u7.c<T> a(P p9) {
        return ((p9 instanceof t) || (p9 instanceof f)) ? p9 : new t((u7.c) p.b(p9));
    }

    @Override // u7.c
    public T get() {
        T t9 = (T) this.f20439b;
        if (t9 == f20436c) {
            u7.c<T> cVar = this.f20438a;
            if (cVar == null) {
                return (T) this.f20439b;
            }
            T t10 = cVar.get();
            this.f20439b = t10;
            this.f20438a = null;
            return t10;
        }
        return t9;
    }
}
