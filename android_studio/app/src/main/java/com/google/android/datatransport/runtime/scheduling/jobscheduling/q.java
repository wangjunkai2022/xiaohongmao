package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.concurrent.Executor;

/* compiled from: WorkInitializer_Factory.java */
/* loaded from: classes2.dex */
public final class q implements com.google.android.datatransport.runtime.dagger.internal.g<p> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Executor> f20562a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> f20563b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<r> f20564c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<o2.a> f20565d;

    public q(u7.c<Executor> cVar, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar2, u7.c<r> cVar3, u7.c<o2.a> cVar4) {
        this.f20562a = cVar;
        this.f20563b = cVar2;
        this.f20564c = cVar3;
        this.f20565d = cVar4;
    }

    public static q a(u7.c<Executor> cVar, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar2, u7.c<r> cVar3, u7.c<o2.a> cVar4) {
        return new q(cVar, cVar2, cVar3, cVar4);
    }

    public static p c(Executor executor, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, r rVar, o2.a aVar) {
        return new p(executor, cVar, rVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public p get() {
        return c(this.f20562a.get(), this.f20563b.get(), this.f20564c.get(), this.f20565d.get());
    }
}
