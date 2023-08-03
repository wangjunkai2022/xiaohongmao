package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.dagger.internal.p;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;

/* compiled from: SchedulingConfigModule_ConfigFactory.java */
/* loaded from: classes2.dex */
public final class g implements com.google.android.datatransport.runtime.dagger.internal.g<SchedulerConfig> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20485a;

    public g(u7.c<com.google.android.datatransport.runtime.time.a> cVar) {
        this.f20485a = cVar;
    }

    public static SchedulerConfig a(com.google.android.datatransport.runtime.time.a aVar) {
        return (SchedulerConfig) p.c(f.a(aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static g b(u7.c<com.google.android.datatransport.runtime.time.a> cVar) {
        return new g(cVar);
    }

    @Override // u7.c
    /* renamed from: c */
    public SchedulerConfig get() {
        return a(this.f20485a.get());
    }
}
