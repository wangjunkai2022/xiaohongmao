package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.b;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.h4;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: AnrIntegration.java */
/* loaded from: classes4.dex */
public final class d0 implements io.sentry.z0, Closeable {
    @m8.h
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: c  reason: collision with root package name */
    private static b f82187c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final Object f82188d = new Object();
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f82189a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private SentryOptions f82190b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnrIntegration.java */
    /* loaded from: classes4.dex */
    public static final class a implements io.sentry.hints.b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f82191a;

        a(boolean z9) {
            this.f82191a = z9;
        }

        @Override // io.sentry.hints.b
        public boolean a() {
            return true;
        }

        @Override // io.sentry.hints.b
        public String b() {
            return this.f82191a ? "anr_background" : "anr_foreground";
        }
    }

    public d0(@m8.g Context context) {
        this.f82189a = context;
    }

    @m8.g
    private Throwable d(boolean z9, @m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g k0 k0Var) {
        String str = "ANR for at least " + sentryAndroidOptions.getAnrTimeoutIntervalMillis() + " ms.";
        if (z9) {
            str = "Background " + str;
        }
        k0 k0Var2 = new k0(str, k0Var.a());
        io.sentry.protocol.f fVar = new io.sentry.protocol.f();
        fVar.v("ANR");
        return new ExceptionMechanismException(fVar, k0Var2, k0Var2.a(), true);
    }

    private void k(@m8.g final io.sentry.n0 n0Var, @m8.g final SentryAndroidOptions sentryAndroidOptions) {
        io.sentry.o0 logger = sentryAndroidOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "AnrIntegration enabled: %s", Boolean.valueOf(sentryAndroidOptions.isAnrEnabled()));
        if (sentryAndroidOptions.isAnrEnabled()) {
            synchronized (f82188d) {
                if (f82187c == null) {
                    sentryAndroidOptions.getLogger().c(sentryLevel, "ANR timeout in milliseconds: %d", Long.valueOf(sentryAndroidOptions.getAnrTimeoutIntervalMillis()));
                    b bVar = new b(sentryAndroidOptions.getAnrTimeoutIntervalMillis(), sentryAndroidOptions.isAnrReportInDebug(), new b.a() { // from class: io.sentry.android.core.c0
                        @Override // io.sentry.android.core.b.a
                        public final void a(k0 k0Var) {
                            d0.this.i(n0Var, sentryAndroidOptions, k0Var);
                        }
                    }, sentryAndroidOptions.getLogger(), this.f82189a);
                    f82187c = bVar;
                    bVar.start();
                    sentryAndroidOptions.getLogger().c(sentryLevel, "AnrIntegration installed.", new Object[0]);
                }
            }
        }
    }

    @Override // io.sentry.z0
    public final void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        this.f82190b = (SentryOptions) io.sentry.util.l.c(sentryOptions, "SentryOptions is required");
        k(n0Var, (SentryAndroidOptions) sentryOptions);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (f82188d) {
            b bVar = f82187c;
            if (bVar != null) {
                bVar.interrupt();
                f82187c = null;
                SentryOptions sentryOptions = this.f82190b;
                if (sentryOptions != null) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "AnrIntegration removed.", new Object[0]);
                }
            }
        }
    }

    @m8.h
    @m8.k
    b h() {
        return f82187c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.k
    /* renamed from: p */
    public void i(@m8.g io.sentry.n0 n0Var, @m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g k0 k0Var) {
        sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "ANR triggered with message: %s", k0Var.getMessage());
        boolean equals = Boolean.TRUE.equals(j0.a().b());
        h4 h4Var = new h4(d(equals, sentryAndroidOptions, k0Var));
        h4Var.L0(SentryLevel.ERROR);
        n0Var.j(h4Var, io.sentry.util.h.e(new a(equals)));
    }
}
