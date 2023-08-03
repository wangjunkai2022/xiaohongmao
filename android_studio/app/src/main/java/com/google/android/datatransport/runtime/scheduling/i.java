package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.p;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.r;

/* compiled from: SchedulingModule_WorkSchedulerFactory.java */
/* loaded from: classes2.dex */
public final class i implements com.google.android.datatransport.runtime.dagger.internal.g<r> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f20486a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> f20487b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<SchedulerConfig> f20488c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20489d;

    public i(u7.c<Context> cVar, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar2, u7.c<SchedulerConfig> cVar3, u7.c<com.google.android.datatransport.runtime.time.a> cVar4) {
        this.f20486a = cVar;
        this.f20487b = cVar2;
        this.f20488c = cVar3;
        this.f20489d = cVar4;
    }

    public static i a(u7.c<Context> cVar, u7.c<com.google.android.datatransport.runtime.scheduling.persistence.c> cVar2, u7.c<SchedulerConfig> cVar3, u7.c<com.google.android.datatransport.runtime.time.a> cVar4) {
        return new i(cVar, cVar2, cVar3, cVar4);
    }

    public static r c(Context context, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, SchedulerConfig schedulerConfig, com.google.android.datatransport.runtime.time.a aVar) {
        return (r) p.c(h.b(context, cVar, schedulerConfig, aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // u7.c
    /* renamed from: b */
    public r get() {
        return c(this.f20486a.get(), this.f20487b.get(), this.f20488c.get(), this.f20489d.get());
    }
}
