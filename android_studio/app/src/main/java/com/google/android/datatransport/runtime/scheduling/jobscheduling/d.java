package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Objects;
import java.util.Set;

/* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
/* loaded from: classes2.dex */
final class d extends SchedulerConfig.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f20510a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20511b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<SchedulerConfig.Flag> f20512c;

    /* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
    /* loaded from: classes2.dex */
    static final class b extends SchedulerConfig.b.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20513a;

        /* renamed from: b  reason: collision with root package name */
        private Long f20514b;

        /* renamed from: c  reason: collision with root package name */
        private Set<SchedulerConfig.Flag> f20515c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b a() {
            String str = "";
            if (this.f20513a == null) {
                str = " delta";
            }
            if (this.f20514b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f20515c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new d(this.f20513a.longValue(), this.f20514b.longValue(), this.f20515c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a b(long j4) {
            this.f20513a = Long.valueOf(j4);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a c(Set<SchedulerConfig.Flag> set) {
            Objects.requireNonNull(set, "Null flags");
            this.f20515c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a d(long j4) {
            this.f20514b = Long.valueOf(j4);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long b() {
        return this.f20510a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    Set<SchedulerConfig.Flag> c() {
        return this.f20512c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long d() {
        return this.f20511b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchedulerConfig.b) {
            SchedulerConfig.b bVar = (SchedulerConfig.b) obj;
            return this.f20510a == bVar.b() && this.f20511b == bVar.d() && this.f20512c.equals(bVar.c());
        }
        return false;
    }

    public int hashCode() {
        long j4 = this.f20510a;
        long j10 = this.f20511b;
        return this.f20512c.hashCode() ^ ((((((int) (j4 ^ (j4 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f20510a + ", maxAllowedDelay=" + this.f20511b + ", flags=" + this.f20512c + com.alipay.sdk.util.i.f6967d;
    }

    private d(long j4, long j10, Set<SchedulerConfig.Flag> set) {
        this.f20510a = j4;
        this.f20511b = j10;
        this.f20512c = set;
    }
}
