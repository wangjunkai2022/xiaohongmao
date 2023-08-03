package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;

/* compiled from: SchemaManager_Factory.java */
/* loaded from: classes2.dex */
public final class j0 implements com.google.android.datatransport.runtime.dagger.internal.g<i0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f20630a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<String> f20631b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<Integer> f20632c;

    public j0(u7.c<Context> cVar, u7.c<String> cVar2, u7.c<Integer> cVar3) {
        this.f20630a = cVar;
        this.f20631b = cVar2;
        this.f20632c = cVar3;
    }

    public static j0 a(u7.c<Context> cVar, u7.c<String> cVar2, u7.c<Integer> cVar3) {
        return new j0(cVar, cVar2, cVar3);
    }

    public static i0 c(Context context, String str, int i4) {
        return new i0(context, str, i4);
    }

    @Override // u7.c
    /* renamed from: b */
    public i0 get() {
        return c(this.f20630a.get(), this.f20631b.get(), this.f20632c.get().intValue());
    }
}
