package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* compiled from: MetadataBackendRegistry_Factory.java */
/* loaded from: classes2.dex */
public final class l implements com.google.android.datatransport.runtime.dagger.internal.g<k> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f20398a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<i> f20399b;

    public l(u7.c<Context> cVar, u7.c<i> cVar2) {
        this.f20398a = cVar;
        this.f20399b = cVar2;
    }

    public static l a(u7.c<Context> cVar, u7.c<i> cVar2) {
        return new l(cVar, cVar2);
    }

    public static k c(Context context, Object obj) {
        return new k(context, (i) obj);
    }

    @Override // u7.c
    /* renamed from: b */
    public k get() {
        return c(this.f20398a.get(), this.f20399b.get());
    }
}
