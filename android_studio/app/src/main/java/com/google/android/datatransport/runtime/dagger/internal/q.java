package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: ProviderOfLazy.java */
/* loaded from: classes2.dex */
public final class q<T> implements u7.c<k2.e<T>> {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f20426b = false;

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<T> f20427a;

    private q(u7.c<T> cVar) {
        this.f20427a = cVar;
    }

    public static <T> u7.c<k2.e<T>> a(u7.c<T> cVar) {
        return new q((u7.c) p.b(cVar));
    }

    @Override // u7.c
    /* renamed from: b */
    public k2.e<T> get() {
        return f.a(this.f20427a);
    }
}
