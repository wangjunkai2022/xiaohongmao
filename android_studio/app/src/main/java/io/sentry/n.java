package io.sentry;

import m8.a;

/* compiled from: DiagnosticLogger.java */
@a.c
/* loaded from: classes4.dex */
public final class n implements o0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f83473a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final o0 f83474b;

    public n(@m8.g SentryOptions sentryOptions, @m8.h o0 o0Var) {
        this.f83473a = (SentryOptions) io.sentry.util.l.c(sentryOptions, "SentryOptions is required.");
        this.f83474b = o0Var;
    }

    @Override // io.sentry.o0
    public void a(@m8.g SentryLevel sentryLevel, @m8.h Throwable th, @m8.g String str, @m8.h Object... objArr) {
        if (this.f83474b == null || !d(sentryLevel)) {
            return;
        }
        this.f83474b.a(sentryLevel, th, str, objArr);
    }

    @Override // io.sentry.o0
    public void b(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Throwable th) {
        if (this.f83474b == null || !d(sentryLevel)) {
            return;
        }
        this.f83474b.b(sentryLevel, str, th);
    }

    @Override // io.sentry.o0
    public void c(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Object... objArr) {
        if (this.f83474b == null || !d(sentryLevel)) {
            return;
        }
        this.f83474b.c(sentryLevel, str, objArr);
    }

    @Override // io.sentry.o0
    public boolean d(@m8.h SentryLevel sentryLevel) {
        return sentryLevel != null && this.f83473a.isDebug() && sentryLevel.ordinal() >= this.f83473a.getDiagnosticLevel().ordinal();
    }

    @m8.h
    @m8.k
    public o0 e() {
        return this.f83474b;
    }
}
