package io.sentry;

import java.io.PrintWriter;
import java.io.StringWriter;

/* compiled from: SystemOutLogger.java */
/* loaded from: classes4.dex */
public final class l5 implements o0 {
    @m8.g
    private String e(@m8.g Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @Override // io.sentry.o0
    public void a(@m8.g SentryLevel sentryLevel, @m8.h Throwable th, @m8.g String str, @m8.h Object... objArr) {
        if (th == null) {
            c(sentryLevel, str, objArr);
        } else {
            System.out.println(String.format("%s: %s \n %s\n%s", sentryLevel, String.format(str, objArr), th.toString(), e(th)));
        }
    }

    @Override // io.sentry.o0
    public void b(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Throwable th) {
        if (th == null) {
            c(sentryLevel, str, new Object[0]);
        } else {
            System.out.println(String.format("%s: %s\n%s", sentryLevel, String.format(str, th.toString()), e(th)));
        }
    }

    @Override // io.sentry.o0
    public void c(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Object... objArr) {
        System.out.println(String.format("%s: %s", sentryLevel, String.format(str, objArr)));
    }

    @Override // io.sentry.o0
    public boolean d(@m8.h SentryLevel sentryLevel) {
        return true;
    }
}
