package com.google.android.datatransport.runtime;

/* compiled from: TransportRuntime_Factory.java */
/* loaded from: classes2.dex */
public final class v implements com.google.android.datatransport.runtime.dagger.internal.g<t> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20662a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20663b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.scheduling.e> f20664c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.l> f20665d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.p> f20666e;

    public v(u7.c<com.google.android.datatransport.runtime.time.a> cVar, u7.c<com.google.android.datatransport.runtime.time.a> cVar2, u7.c<com.google.android.datatransport.runtime.scheduling.e> cVar3, u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.l> cVar4, u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.p> cVar5) {
        this.f20662a = cVar;
        this.f20663b = cVar2;
        this.f20664c = cVar3;
        this.f20665d = cVar4;
        this.f20666e = cVar5;
    }

    public static v a(u7.c<com.google.android.datatransport.runtime.time.a> cVar, u7.c<com.google.android.datatransport.runtime.time.a> cVar2, u7.c<com.google.android.datatransport.runtime.scheduling.e> cVar3, u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.l> cVar4, u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.p> cVar5) {
        return new v(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static t c(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, com.google.android.datatransport.runtime.scheduling.e eVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.l lVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.p pVar) {
        return new t(aVar, aVar2, eVar, lVar, pVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public t get() {
        return c(this.f20662a.get(), this.f20663b.get(), this.f20664c.get(), this.f20665d.get(), this.f20666e.get());
    }
}
