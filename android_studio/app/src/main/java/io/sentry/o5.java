package io.sentry;

import m8.a;

/* compiled from: TracesSamplingDecision.java */
@a.c
/* loaded from: classes4.dex */
public final class o5 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f83505a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final Double f83506b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f83507c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final Double f83508d;

    public o5(@m8.g Boolean bool) {
        this(bool, null);
    }

    @m8.h
    public Double a() {
        return this.f83508d;
    }

    @m8.g
    public Boolean b() {
        return this.f83507c;
    }

    @m8.h
    public Double c() {
        return this.f83506b;
    }

    @m8.g
    public Boolean d() {
        return this.f83505a;
    }

    public o5(@m8.g Boolean bool, @m8.h Double d4) {
        this(bool, d4, Boolean.FALSE, null);
    }

    public o5(@m8.g Boolean bool, @m8.h Double d4, @m8.g Boolean bool2, @m8.h Double d10) {
        this.f83505a = bool;
        this.f83506b = d4;
        this.f83507c = Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
        this.f83508d = d10;
    }
}
