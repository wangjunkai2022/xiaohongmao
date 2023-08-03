package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* compiled from: CreationContextFactory_Factory.java */
/* loaded from: classes2.dex */
public final class j implements com.google.android.datatransport.runtime.dagger.internal.g<i> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f20388a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20389b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20390c;

    public j(u7.c<Context> cVar, u7.c<com.google.android.datatransport.runtime.time.a> cVar2, u7.c<com.google.android.datatransport.runtime.time.a> cVar3) {
        this.f20388a = cVar;
        this.f20389b = cVar2;
        this.f20390c = cVar3;
    }

    public static j a(u7.c<Context> cVar, u7.c<com.google.android.datatransport.runtime.time.a> cVar2, u7.c<com.google.android.datatransport.runtime.time.a> cVar3) {
        return new j(cVar, cVar2, cVar3);
    }

    public static i c(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        return new i(context, aVar, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public i get() {
        return c(this.f20388a.get(), this.f20389b.get(), this.f20390c.get());
    }
}
