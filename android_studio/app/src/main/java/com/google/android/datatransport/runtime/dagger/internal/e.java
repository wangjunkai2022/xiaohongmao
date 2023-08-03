package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: DelegateFactory.java */
/* loaded from: classes2.dex */
public final class e<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    private u7.c<T> f20415a;

    public static <T> void b(u7.c<T> cVar, u7.c<T> cVar2) {
        p.b(cVar2);
        e eVar = (e) cVar;
        if (eVar.f20415a == null) {
            eVar.f20415a = cVar2;
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u7.c<T> a() {
        return (u7.c) p.b(this.f20415a);
    }

    @Deprecated
    public void c(u7.c<T> cVar) {
        b(this, cVar);
    }

    @Override // u7.c
    public T get() {
        u7.c<T> cVar = this.f20415a;
        if (cVar != null) {
            return cVar.get();
        }
        throw new IllegalStateException();
    }
}
