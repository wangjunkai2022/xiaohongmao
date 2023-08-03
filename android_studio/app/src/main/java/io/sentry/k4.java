package io.sentry;

import java.time.Instant;

/* compiled from: SentryInstantDate.java */
/* loaded from: classes4.dex */
public final class k4 extends j3 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Instant f83372a;

    public k4() {
        this(Instant.now());
    }

    @Override // io.sentry.j3
    public long d() {
        return k.m(this.f83372a.getEpochSecond()) + this.f83372a.getNano();
    }

    public k4(@m8.g Instant instant) {
        this.f83372a = instant;
    }
}
