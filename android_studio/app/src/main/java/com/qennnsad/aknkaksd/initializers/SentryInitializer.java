package com.qennnsad.aknkaksd.initializers;

import android.content.Context;
import androidx.startup.Initializer;
import com.qennnsad.aknkaksd.e;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.l1;
import io.sentry.android.timber.SentryTimberIntegration;
import io.sentry.c3;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: SentryInitializer.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\t0\bH\u0016¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/initializers/SentryInitializer;", "Landroidx/startup/Initializer;", "", "()V", "create", "context", "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryInitializer implements Initializer<Object> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(String env, SentryAndroidOptions options) {
        Intrinsics.checkNotNullParameter(env, "$env");
        Intrinsics.checkNotNullParameter(options, "options");
        options.setEnvironment(env);
        options.setSendDefaultPii(true);
        options.setEnableUserInteractionTracing(true);
        options.enableAllAutoBreadcrumbs(true);
        options.addIntegration(new SentryTimberIntegration(SentryLevel.ERROR, SentryLevel.INFO));
        options.setTag("im", e.f48528t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        Intrinsics.checkNotNullParameter(thread, "thread");
        if (th != null) {
            Timber.f93860a.d("Uncaught Exception: ", th);
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        }
    }

    @Override // androidx.startup.Initializer
    @g
    public Object create(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Timber.f93860a.a("...", new Object[0]);
        l1.g(context, new c3.a() { // from class: com.qennnsad.aknkaksd.initializers.c
            @Override // io.sentry.c3.a
            public final void a(SentryOptions sentryOptions) {
                SentryInitializer.c(r1, (SentryAndroidOptions) sentryOptions);
            }
        });
        com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().c();
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.qennnsad.aknkaksd.initializers.d
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                SentryInitializer.d(defaultUncaughtExceptionHandler, thread, th);
            }
        });
        return new Object();
    }

    @Override // androidx.startup.Initializer
    @g
    public List<Class<? extends Initializer<?>>> dependencies() {
        return new ArrayList();
    }
}
