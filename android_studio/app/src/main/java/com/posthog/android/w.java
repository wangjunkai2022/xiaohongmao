package com.posthog.android;

import java.util.Map;

/* compiled from: StatsSnapshot.java */
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    public final long f47662a;

    /* renamed from: b  reason: collision with root package name */
    public final long f47663b;

    /* renamed from: c  reason: collision with root package name */
    public final long f47664c;

    /* renamed from: d  reason: collision with root package name */
    public final long f47665d;

    /* renamed from: e  reason: collision with root package name */
    public final long f47666e;

    /* renamed from: f  reason: collision with root package name */
    public final float f47667f;

    /* renamed from: g  reason: collision with root package name */
    public final Map<String, Long> f47668g;

    public w(long j4, long j10, long j11, long j12, long j13, Map<String, Long> map) {
        this.f47662a = j4;
        this.f47663b = j10;
        this.f47664c = j11;
        this.f47665d = j12;
        this.f47666e = j13;
        this.f47667f = j12 == 0 ? 0.0f : ((float) j13) / ((float) j12);
        this.f47668g = map;
    }

    public String toString() {
        return "StatsSnapshot{timestamp=" + this.f47662a + ", flushCount=" + this.f47663b + ", flushEventCount=" + this.f47664c + ", integrationOperationCount=" + this.f47665d + ", integrationOperationDuration=" + this.f47666e + ", integrationOperationAverageDuration=" + this.f47667f + ", integrationOperationDurationByIntegration=" + this.f47668g + '}';
    }
}
