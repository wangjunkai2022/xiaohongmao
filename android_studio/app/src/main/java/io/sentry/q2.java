package io.sentry;

/* compiled from: SamplingContext.java */
/* loaded from: classes4.dex */
public final class q2 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final p5 f83929a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final j f83930b;

    public q2(@m8.g p5 p5Var, @m8.h j jVar) {
        this.f83929a = (p5) io.sentry.util.l.c(p5Var, "transactionContexts is required");
        this.f83930b = jVar;
    }

    @m8.h
    public j a() {
        return this.f83930b;
    }

    @m8.g
    public p5 b() {
        return this.f83929a;
    }
}
