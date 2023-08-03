package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.r;
import java.util.concurrent.Executor;

/* compiled from: DefaultScheduler_Factory.java */
/* loaded from: classes2.dex */
public final class d implements com.google.android.datatransport.runtime.dagger.internal.g<c> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Executor> f20480a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.backends.e> f20481b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<r> f20482c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> f20483d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<o2.a> f20484e;

    public d(u7.c<Executor> cVar, u7.c<com.google.android.datatransport.runtime.backends.e> cVar2, u7.c<r> cVar3, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar4, u7.c<o2.a> cVar5) {
        this.f20480a = cVar;
        this.f20481b = cVar2;
        this.f20482c = cVar3;
        this.f20483d = cVar4;
        this.f20484e = cVar5;
    }

    public static d a(u7.c<Executor> cVar, u7.c<com.google.android.datatransport.runtime.backends.e> cVar2, u7.c<r> cVar3, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar4, u7.c<o2.a> cVar5) {
        return new d(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static c c(Executor executor, com.google.android.datatransport.runtime.backends.e eVar, r rVar, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, o2.a aVar) {
        return new c(executor, eVar, rVar, cVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public c get() {
        return c(this.f20480a.get(), this.f20481b.get(), this.f20482c.get(), this.f20483d.get(), this.f20484e.get());
    }
}
