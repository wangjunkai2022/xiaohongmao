package io.sentry;

/* compiled from: ILogger.java */
/* loaded from: classes4.dex */
public interface o0 {
    void a(@m8.g SentryLevel sentryLevel, @m8.h Throwable th, @m8.g String str, @m8.h Object... objArr);

    void b(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Throwable th);

    void c(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Object... objArr);

    boolean d(@m8.h SentryLevel sentryLevel);
}
