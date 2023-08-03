package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.d;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

@AutoValue
/* loaded from: classes2.dex */
public abstract class SchedulerConfig {

    /* renamed from: a  reason: collision with root package name */
    private static final long f20490a = 86400000;

    /* renamed from: b  reason: collision with root package name */
    private static final long f20491b = 30000;

    /* renamed from: c  reason: collision with root package name */
    private static final long f20492c = 1000;

    /* renamed from: d  reason: collision with root package name */
    private static final long f20493d = 10000;

    /* loaded from: classes2.dex */
    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private com.google.android.datatransport.runtime.time.a f20495a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Priority, b> f20496b = new HashMap();

        public a a(Priority priority, b bVar) {
            this.f20496b.put(priority, bVar);
            return this;
        }

        public SchedulerConfig b() {
            Objects.requireNonNull(this.f20495a, "missing required property: clock");
            if (this.f20496b.keySet().size() >= Priority.values().length) {
                Map<Priority, b> map = this.f20496b;
                this.f20496b = new HashMap();
                return SchedulerConfig.d(this.f20495a, map);
            }
            throw new IllegalStateException("Not all priorities have been configured");
        }

        public a c(com.google.android.datatransport.runtime.time.a aVar) {
            this.f20495a = aVar;
            return this;
        }
    }

    @AutoValue
    /* loaded from: classes2.dex */
    public static abstract class b {

        @AutoValue.Builder
        /* loaded from: classes2.dex */
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j4);

            public abstract a c(Set<Flag> set);

            public abstract a d(long j4);
        }

        public static a a() {
            return new d.b().c(Collections.emptySet());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Set<Flag> c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long d();
    }

    private long a(int i4, long j4) {
        int i10;
        return (long) (Math.pow(3.0d, i4 - 1) * j4 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j4 > 1 ? j4 : 2L) * i10)));
    }

    public static a b() {
        return new a();
    }

    static SchedulerConfig d(com.google.android.datatransport.runtime.time.a aVar, Map<Priority, b> map) {
        return new c(aVar, map);
    }

    public static SchedulerConfig f(com.google.android.datatransport.runtime.time.a aVar) {
        return b().a(Priority.DEFAULT, b.a().b(f20491b).d(f20490a).a()).a(Priority.HIGHEST, b.a().b(1000L).d(f20490a).a()).a(Priority.VERY_LOW, b.a().b(f20490a).d(f20490a).c(j(Flag.NETWORK_UNMETERED, Flag.DEVICE_IDLE)).a()).c(aVar).b();
    }

    private static <T> Set<T> j(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    @RequiresApi(api = 21)
    private void k(JobInfo.Builder builder, Set<Flag> set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    @RequiresApi(api = 21)
    public JobInfo.Builder c(JobInfo.Builder builder, Priority priority, long j4, int i4) {
        builder.setMinimumLatency(h(priority, j4, i4));
        k(builder, i().get(priority).c());
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract com.google.android.datatransport.runtime.time.a e();

    public Set<Flag> g(Priority priority) {
        return i().get(priority).c();
    }

    public long h(Priority priority, long j4, int i4) {
        long a10 = j4 - e().a();
        b bVar = i().get(priority);
        return Math.min(Math.max(a(i4, bVar.b()), a10), bVar.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map<Priority, b> i();
}
