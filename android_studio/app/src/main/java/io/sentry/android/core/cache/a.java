package io.sentry.android.core.cache;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.i0;
import io.sentry.b0;
import io.sentry.cache.d;
import io.sentry.hints.e;
import io.sentry.l3;
import io.sentry.transport.o;
import io.sentry.util.h;
import io.sentry.util.l;
import java.io.File;
import m8.a;
import m8.g;
import m8.k;

/* compiled from: AndroidEnvelopeCache.java */
@a.c
/* loaded from: classes4.dex */
public final class a extends d {
    @g

    /* renamed from: m  reason: collision with root package name */
    private final o f82184m;

    public a(@g SentryAndroidOptions sentryAndroidOptions) {
        this(sentryAndroidOptions, io.sentry.android.core.internal.util.a.b());
    }

    public static boolean E(@g SentryOptions sentryOptions) {
        if (sentryOptions.getOutboxPath() == null) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Outbox path is null, the startup crash marker file does not exist", new Object[0]);
            return false;
        }
        File file = new File(sentryOptions.getOutboxPath(), d.f83063l);
        try {
            boolean exists = file.exists();
            if (exists && !file.delete()) {
                sentryOptions.getLogger().c(SentryLevel.ERROR, "Failed to delete the startup crash marker file. %s.", file.getAbsolutePath());
            }
            return exists;
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Error reading/deleting the startup crash marker file on the disk", th);
            return false;
        }
    }

    private void F() {
        if (this.f83053a.getOutboxPath() == null) {
            this.f83053a.getLogger().c(SentryLevel.DEBUG, "Outbox path is null, the startup crash marker file will not be written", new Object[0]);
            return;
        }
        try {
            new File(this.f83053a.getOutboxPath(), d.f83063l).createNewFile();
        } catch (Throwable th) {
            this.f83053a.getLogger().b(SentryLevel.ERROR, "Error writing the startup crash marker file to the disk", th);
        }
    }

    @g
    @k
    public File D() {
        return this.f83055c;
    }

    @Override // io.sentry.cache.d, io.sentry.cache.f
    public void y(@g l3 l3Var, @g b0 b0Var) {
        super.y(l3Var, b0Var);
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) this.f83053a;
        Long b10 = i0.d().b();
        if (!h.g(b0Var, e.class) || b10 == null) {
            return;
        }
        long a10 = this.f82184m.a() - b10.longValue();
        if (a10 <= sentryAndroidOptions.getStartupCrashDurationThresholdMillis()) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk.", Long.valueOf(a10));
            F();
        }
    }

    a(@g SentryAndroidOptions sentryAndroidOptions, @g o oVar) {
        super(sentryAndroidOptions, (String) l.c(sentryAndroidOptions.getCacheDirPath(), "cacheDirPath must not be null"), sentryAndroidOptions.getMaxCacheItems());
        this.f82184m = oVar;
    }
}
