package io.sentry.android.core;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import io.sentry.SentryLevel;
import io.sentry.android.fragment.FragmentLifecycleIntegration;
import io.sentry.android.timber.SentryTimberIntegration;
import io.sentry.compose.gestures.ComposeGestureTargetLocator;
import io.sentry.u2;
import io.sentry.x2;
import io.sentry.y2;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidOptionsInitializer.java */
/* loaded from: classes4.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    static final String f82604a = "io.sentry.compose.gestures.ComposeGestureTargetLocator";

    /* renamed from: b  reason: collision with root package name */
    static final String f82605b = "androidx.compose.ui.node.Owner";

    private v() {
    }

    @m8.h
    private static String c(@m8.g Context context, @m8.g io.sentry.o0 o0Var) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(context.getAssets().open("sentry-debug-meta.properties"));
            try {
                Properties properties = new Properties();
                properties.load(bufferedInputStream);
                String property = properties.getProperty("io.sentry.ProguardUuids");
                o0Var.c(SentryLevel.DEBUG, "Proguard UUID found: %s", property);
                bufferedInputStream.close();
                return property;
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException unused) {
            o0Var.c(SentryLevel.INFO, "sentry-debug-meta.properties file was not found.", new Object[0]);
            return null;
        } catch (IOException e4) {
            o0Var.b(SentryLevel.ERROR, "Error getting Proguard UUIDs.", e4);
            return null;
        } catch (RuntimeException e10) {
            o0Var.b(SentryLevel.ERROR, "sentry-debug-meta.properties file is malformed.", e10);
            return null;
        }
    }

    @m8.g
    private static String d(@m8.g PackageInfo packageInfo, @m8.g String str) {
        return packageInfo.packageName + "@" + packageInfo.versionName + "+" + str;
    }

    private static void e(@m8.g Context context, @m8.g SentryAndroidOptions sentryAndroidOptions) {
        sentryAndroidOptions.setCacheDirPath(new File(context.getCacheDir(), "sentry").getAbsolutePath());
    }

    @m8.k
    static void f(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g Context context) {
        g(sentryAndroidOptions, context, new m0(new r()), new y0(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g Context context, @m8.g m0 m0Var, @m8.g y0 y0Var, boolean z9, boolean z10) {
        if (sentryAndroidOptions.getCacheDirPath() != null && (sentryAndroidOptions.getEnvelopeDiskCache() instanceof io.sentry.transport.s)) {
            sentryAndroidOptions.setEnvelopeDiskCache(new io.sentry.android.core.cache.a(sentryAndroidOptions));
        }
        g gVar = new g(y0Var, sentryAndroidOptions);
        h(context, sentryAndroidOptions, m0Var, y0Var, gVar, z9, z10);
        sentryAndroidOptions.addEventProcessor(new r0(context, m0Var, sentryAndroidOptions));
        sentryAndroidOptions.addEventProcessor(new d1(sentryAndroidOptions, gVar));
        sentryAndroidOptions.addEventProcessor(new g1(sentryAndroidOptions, m0Var));
        sentryAndroidOptions.addEventProcessor(new s1(sentryAndroidOptions));
        sentryAndroidOptions.setTransportGate(new b0(context, sentryAndroidOptions.getLogger()));
        sentryAndroidOptions.setTransactionProfiler(new a0(context, sentryAndroidOptions, m0Var, new io.sentry.android.core.internal.util.n(context, sentryAndroidOptions, m0Var)));
        sentryAndroidOptions.setModulesLoader(new io.sentry.android.core.internal.modules.a(context, sentryAndroidOptions.getLogger()));
        boolean b10 = y0Var.b("androidx.core.view.ScrollingView", sentryAndroidOptions);
        if (sentryAndroidOptions.getGestureTargetLocators().isEmpty()) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(new io.sentry.android.core.internal.gestures.a(b10));
            if (y0Var.b(f82605b, sentryAndroidOptions) && y0Var.b(f82604a, sentryAndroidOptions)) {
                arrayList.add(new ComposeGestureTargetLocator());
            }
            sentryAndroidOptions.setGestureTargetLocators(arrayList);
        }
        sentryAndroidOptions.setMainThreadChecker(io.sentry.android.core.internal.util.b.e());
        if (sentryAndroidOptions.getCollectors().isEmpty()) {
            sentryAndroidOptions.addCollector(new s());
            sentryAndroidOptions.addCollector(new p(sentryAndroidOptions.getLogger(), m0Var));
        }
    }

    private static void h(@m8.g Context context, @m8.g final SentryAndroidOptions sentryAndroidOptions, @m8.g m0 m0Var, @m8.g y0 y0Var, @m8.g g gVar, boolean z9, boolean z10) {
        boolean E = io.sentry.android.core.cache.a.E(sentryAndroidOptions);
        sentryAndroidOptions.addIntegration(new i1(new x2(new u2.b() { // from class: io.sentry.android.core.u
            @Override // io.sentry.u2.b
            public final String a() {
                String cacheDirPath;
                cacheDirPath = SentryAndroidOptions.this.getCacheDirPath();
                return cacheDirPath;
            }
        }), E));
        sentryAndroidOptions.addIntegration(new b1(i(m0Var) ? y0Var.c(b1.f82176c, sentryAndroidOptions.getLogger()) : null));
        sentryAndroidOptions.addIntegration(u0.b());
        sentryAndroidOptions.addIntegration(new i1(new y2(new u2.b() { // from class: io.sentry.android.core.t
            @Override // io.sentry.u2.b
            public final String a() {
                String outboxPath;
                outboxPath = SentryAndroidOptions.this.getOutboxPath();
                return outboxPath;
            }
        }), E));
        sentryAndroidOptions.addIntegration(new h0());
        sentryAndroidOptions.addIntegration(new d0(context));
        if (context instanceof Application) {
            Application application = (Application) context;
            sentryAndroidOptions.addIntegration(new o(application, m0Var, gVar));
            sentryAndroidOptions.addIntegration(new p0(application));
            sentryAndroidOptions.addIntegration(new r1(application, y0Var));
            if (z9) {
                sentryAndroidOptions.addIntegration(new FragmentLifecycleIntegration(application, true, true));
            }
        } else {
            sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed.", new Object[0]);
        }
        if (z10) {
            sentryAndroidOptions.addIntegration(new SentryTimberIntegration());
        }
        sentryAndroidOptions.addIntegration(new e0(context));
        sentryAndroidOptions.addIntegration(new p1(context));
        sentryAndroidOptions.addIntegration(new q1(context));
        sentryAndroidOptions.addIntegration(new e1(context));
    }

    private static boolean i(@m8.g m0 m0Var) {
        return m0Var.d() >= 16;
    }

    @m8.k
    static void l(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g Context context) {
        r rVar = new r();
        m(sentryAndroidOptions, context, rVar, new m0(rVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void m(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g Context context, @m8.g io.sentry.o0 o0Var, @m8.g m0 m0Var) {
        io.sentry.util.l.c(context, "The context is required.");
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        io.sentry.util.l.c(sentryAndroidOptions, "The options object is required.");
        io.sentry.util.l.c(o0Var, "The ILogger object is required.");
        sentryAndroidOptions.setLogger(o0Var);
        sentryAndroidOptions.setDateProvider(new m1());
        a1.a(context, sentryAndroidOptions, m0Var);
        e(context, sentryAndroidOptions);
        n(sentryAndroidOptions, context, m0Var);
    }

    private static void n(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g Context context, @m8.g m0 m0Var) {
        PackageInfo c10 = n0.c(context, sentryAndroidOptions.getLogger(), m0Var);
        if (c10 != null) {
            if (sentryAndroidOptions.getRelease() == null) {
                sentryAndroidOptions.setRelease(d(c10, n0.d(c10, m0Var)));
            }
            String str = c10.packageName;
            if (str != null && !str.startsWith("android.")) {
                sentryAndroidOptions.addInAppInclude(str);
            }
        }
        if (sentryAndroidOptions.getDistinctId() == null) {
            try {
                sentryAndroidOptions.setDistinctId(w0.a(context));
            } catch (RuntimeException e4) {
                sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Could not generate distinct Id.", e4);
            }
        }
        if (sentryAndroidOptions.getProguardUuid() == null) {
            sentryAndroidOptions.setProguardUuid(c(context, sentryAndroidOptions.getLogger()));
        }
    }
}
