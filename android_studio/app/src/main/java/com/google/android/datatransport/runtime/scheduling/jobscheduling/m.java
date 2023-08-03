package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: Uploader_Factory.java */
/* loaded from: classes2.dex */
public final class m implements com.google.android.datatransport.runtime.dagger.internal.g<l> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f20549a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.backends.e> f20550b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> f20551c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<r> f20552d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<Executor> f20553e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<o2.a> f20554f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20555g;

    public m(u7.c<Context> cVar, u7.c<com.google.android.datatransport.runtime.backends.e> cVar2, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar3, u7.c<r> cVar4, u7.c<Executor> cVar5, u7.c<o2.a> cVar6, u7.c<com.google.android.datatransport.runtime.time.a> cVar7) {
        this.f20549a = cVar;
        this.f20550b = cVar2;
        this.f20551c = cVar3;
        this.f20552d = cVar4;
        this.f20553e = cVar5;
        this.f20554f = cVar6;
        this.f20555g = cVar7;
    }

    public static m a(u7.c<Context> cVar, u7.c<com.google.android.datatransport.runtime.backends.e> cVar2, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar3, u7.c<r> cVar4, u7.c<Executor> cVar5, u7.c<o2.a> cVar6, u7.c<com.google.android.datatransport.runtime.time.a> cVar7) {
        return new m(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7);
    }

    public static l c(Context context, com.google.android.datatransport.runtime.backends.e eVar, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, r rVar, Executor executor, o2.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        return new l(context, eVar, cVar, rVar, executor, aVar, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public l get() {
        return c(this.f20549a.get(), this.f20550b.get(), this.f20551c.get(), this.f20552d.get(), this.f20553e.get(), this.f20554f.get(), this.f20555g.get());
    }
}
