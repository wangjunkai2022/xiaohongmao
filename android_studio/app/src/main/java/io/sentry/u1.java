package io.sentry;

/* compiled from: NoOpLogger.java */
/* loaded from: classes4.dex */
public final class u1 implements o0 {

    /* renamed from: a  reason: collision with root package name */
    private static final u1 f84057a = new u1();

    private u1() {
    }

    public static u1 e() {
        return f84057a;
    }

    @Override // io.sentry.o0
    public void a(@m8.g SentryLevel sentryLevel, @m8.h Throwable th, @m8.g String str, @m8.h Object... objArr) {
    }

    @Override // io.sentry.o0
    public void b(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Throwable th) {
    }

    @Override // io.sentry.o0
    public void c(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Object... objArr) {
    }

    @Override // io.sentry.o0
    public boolean d(@m8.h SentryLevel sentryLevel) {
        return false;
    }
}
