package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Map;
import java.util.Objects;

/* compiled from: AutoValue_SchedulerConfig.java */
/* loaded from: classes2.dex */
final class c extends SchedulerConfig {

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20508e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<Priority, SchedulerConfig.b> f20509f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.google.android.datatransport.runtime.time.a aVar, Map<Priority, SchedulerConfig.b> map) {
        Objects.requireNonNull(aVar, "Null clock");
        this.f20508e = aVar;
        Objects.requireNonNull(map, "Null values");
        this.f20509f = map;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    com.google.android.datatransport.runtime.time.a e() {
        return this.f20508e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchedulerConfig) {
            SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
            return this.f20508e.equals(schedulerConfig.e()) && this.f20509f.equals(schedulerConfig.i());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f20508e.hashCode() ^ 1000003) * 1000003) ^ this.f20509f.hashCode();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    Map<Priority, SchedulerConfig.b> i() {
        return this.f20509f;
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f20508e + ", values=" + this.f20509f + com.alipay.sdk.util.i.f6967d;
    }
}
