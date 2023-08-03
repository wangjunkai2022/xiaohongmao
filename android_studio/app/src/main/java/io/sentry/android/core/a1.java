package io.sentry.android.core;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import io.sentry.SentryLevel;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import m8.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ManifestMetadataReader.java */
/* loaded from: classes4.dex */
public final class a1 {
    static final String A = "io.sentry.traces.user-interaction.enable";
    static final String B = "io.sentry.traces.profiling.enable";
    static final String C = "io.sentry.traces.profiling.sample-rate";
    @a.b
    static final String D = "io.sentry.traces.trace-sampling";
    @Deprecated
    static final String E = "io.sentry.traces.tracing-origins";
    static final String F = "io.sentry.traces.trace-propagation-targets";
    static final String G = "io.sentry.attach-threads";
    static final String H = "io.sentry.proguard-uuid";
    static final String I = "io.sentry.traces.idle-timeout";
    static final String J = "io.sentry.attach-screenshot";
    static final String K = "io.sentry.attach-view-hierarchy";
    static final String L = "io.sentry.send-client-reports";
    static final String M = "io.sentry.additional-context";
    static final String N = "io.sentry.send-default-pii";
    static final String O = "io.sentry.traces.frames-tracking";

    /* renamed from: a  reason: collision with root package name */
    static final String f82138a = "io.sentry.dsn";

    /* renamed from: b  reason: collision with root package name */
    static final String f82139b = "io.sentry.debug";

    /* renamed from: c  reason: collision with root package name */
    static final String f82140c = "io.sentry.debug.level";

    /* renamed from: d  reason: collision with root package name */
    static final String f82141d = "io.sentry.sample-rate";

    /* renamed from: e  reason: collision with root package name */
    static final String f82142e = "io.sentry.anr.enable";

    /* renamed from: f  reason: collision with root package name */
    static final String f82143f = "io.sentry.anr.report-debug";

    /* renamed from: g  reason: collision with root package name */
    static final String f82144g = "io.sentry.anr.timeout-interval-millis";

    /* renamed from: h  reason: collision with root package name */
    static final String f82145h = "io.sentry.auto-init";

    /* renamed from: i  reason: collision with root package name */
    static final String f82146i = "io.sentry.ndk.enable";

    /* renamed from: j  reason: collision with root package name */
    static final String f82147j = "io.sentry.ndk.scope-sync.enable";

    /* renamed from: k  reason: collision with root package name */
    static final String f82148k = "io.sentry.release";

    /* renamed from: l  reason: collision with root package name */
    static final String f82149l = "io.sentry.environment";

    /* renamed from: m  reason: collision with root package name */
    static final String f82150m = "io.sentry.sdk.name";

    /* renamed from: n  reason: collision with root package name */
    static final String f82151n = "io.sentry.sdk.version";

    /* renamed from: o  reason: collision with root package name */
    static final String f82152o = "io.sentry.session-tracking.enable";

    /* renamed from: p  reason: collision with root package name */
    static final String f82153p = "io.sentry.auto-session-tracking.enable";

    /* renamed from: q  reason: collision with root package name */
    static final String f82154q = "io.sentry.session-tracking.timeout-interval-millis";

    /* renamed from: r  reason: collision with root package name */
    static final String f82155r = "io.sentry.breadcrumbs.activity-lifecycle";

    /* renamed from: s  reason: collision with root package name */
    static final String f82156s = "io.sentry.breadcrumbs.app-lifecycle";

    /* renamed from: t  reason: collision with root package name */
    static final String f82157t = "io.sentry.breadcrumbs.system-events";

    /* renamed from: u  reason: collision with root package name */
    static final String f82158u = "io.sentry.breadcrumbs.app-components";

    /* renamed from: v  reason: collision with root package name */
    static final String f82159v = "io.sentry.breadcrumbs.user-interaction";

    /* renamed from: w  reason: collision with root package name */
    static final String f82160w = "io.sentry.uncaught-exception-handler.enable";

    /* renamed from: x  reason: collision with root package name */
    static final String f82161x = "io.sentry.traces.sample-rate";

    /* renamed from: y  reason: collision with root package name */
    static final String f82162y = "io.sentry.traces.activity.enable";

    /* renamed from: z  reason: collision with root package name */
    static final String f82163z = "io.sentry.traces.activity.auto-finish.enable";

    private a1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@m8.g Context context, @m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g m0 m0Var) {
        io.sentry.util.l.c(context, "The application context is required.");
        io.sentry.util.l.c(sentryAndroidOptions, "The options object is required.");
        try {
            Bundle b10 = b(context, sentryAndroidOptions.getLogger(), m0Var);
            io.sentry.o0 logger = sentryAndroidOptions.getLogger();
            if (b10 != null) {
                sentryAndroidOptions.setDebug(d(b10, logger, f82139b, sentryAndroidOptions.isDebug()));
                if (sentryAndroidOptions.isDebug()) {
                    String name = sentryAndroidOptions.getDiagnosticLevel().name();
                    Locale locale = Locale.ROOT;
                    String h4 = h(b10, logger, f82140c, name.toLowerCase(locale));
                    if (h4 != null) {
                        sentryAndroidOptions.setDiagnosticLevel(SentryLevel.valueOf(h4.toUpperCase(locale)));
                    }
                }
                sentryAndroidOptions.setAnrEnabled(d(b10, logger, f82142e, sentryAndroidOptions.isAnrEnabled()));
                sentryAndroidOptions.setEnableAutoSessionTracking(d(b10, logger, f82153p, d(b10, logger, f82152o, sentryAndroidOptions.isEnableAutoSessionTracking())));
                if (sentryAndroidOptions.getSampleRate() == null) {
                    Double e4 = e(b10, logger, f82141d);
                    if (e4.doubleValue() != -1.0d) {
                        sentryAndroidOptions.setSampleRate(e4);
                    }
                }
                sentryAndroidOptions.setAnrReportInDebug(d(b10, logger, f82143f, sentryAndroidOptions.isAnrReportInDebug()));
                sentryAndroidOptions.setAnrTimeoutIntervalMillis(g(b10, logger, f82144g, sentryAndroidOptions.getAnrTimeoutIntervalMillis()));
                String h10 = h(b10, logger, f82138a, sentryAndroidOptions.getDsn());
                if (h10 == null) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.FATAL, "DSN is required. Use empty string to disable SDK.", new Object[0]);
                } else if (h10.isEmpty()) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "DSN is empty, disabling sentry-android", new Object[0]);
                }
                sentryAndroidOptions.setDsn(h10);
                sentryAndroidOptions.setEnableNdk(d(b10, logger, f82146i, sentryAndroidOptions.isEnableNdk()));
                sentryAndroidOptions.setEnableScopeSync(d(b10, logger, f82147j, sentryAndroidOptions.isEnableScopeSync()));
                sentryAndroidOptions.setRelease(h(b10, logger, f82148k, sentryAndroidOptions.getRelease()));
                sentryAndroidOptions.setEnvironment(h(b10, logger, f82149l, sentryAndroidOptions.getEnvironment()));
                sentryAndroidOptions.setSessionTrackingIntervalMillis(g(b10, logger, f82154q, sentryAndroidOptions.getSessionTrackingIntervalMillis()));
                sentryAndroidOptions.setEnableActivityLifecycleBreadcrumbs(d(b10, logger, f82155r, sentryAndroidOptions.isEnableActivityLifecycleBreadcrumbs()));
                sentryAndroidOptions.setEnableAppLifecycleBreadcrumbs(d(b10, logger, f82156s, sentryAndroidOptions.isEnableAppComponentBreadcrumbs()));
                sentryAndroidOptions.setEnableSystemEventBreadcrumbs(d(b10, logger, f82157t, sentryAndroidOptions.isEnableSystemEventBreadcrumbs()));
                sentryAndroidOptions.setEnableAppComponentBreadcrumbs(d(b10, logger, f82158u, sentryAndroidOptions.isEnableAppComponentBreadcrumbs()));
                sentryAndroidOptions.setEnableUserInteractionBreadcrumbs(d(b10, logger, f82159v, sentryAndroidOptions.isEnableUserInteractionBreadcrumbs()));
                sentryAndroidOptions.setEnableUncaughtExceptionHandler(d(b10, logger, f82160w, sentryAndroidOptions.isEnableUncaughtExceptionHandler()));
                sentryAndroidOptions.setAttachThreads(d(b10, logger, G, sentryAndroidOptions.isAttachThreads()));
                sentryAndroidOptions.setAttachScreenshot(d(b10, logger, J, sentryAndroidOptions.isAttachScreenshot()));
                sentryAndroidOptions.setAttachViewHierarchy(d(b10, logger, K, sentryAndroidOptions.isAttachViewHierarchy()));
                sentryAndroidOptions.setSendClientReports(d(b10, logger, L, sentryAndroidOptions.isSendClientReports()));
                sentryAndroidOptions.setCollectAdditionalContext(d(b10, logger, M, sentryAndroidOptions.isCollectAdditionalContext()));
                if (sentryAndroidOptions.getTracesSampleRate() == null) {
                    Double e10 = e(b10, logger, f82161x);
                    if (e10.doubleValue() != -1.0d) {
                        sentryAndroidOptions.setTracesSampleRate(e10);
                    }
                }
                sentryAndroidOptions.setTraceSampling(d(b10, logger, D, sentryAndroidOptions.isTraceSampling()));
                sentryAndroidOptions.setEnableAutoActivityLifecycleTracing(d(b10, logger, f82162y, sentryAndroidOptions.isEnableAutoActivityLifecycleTracing()));
                sentryAndroidOptions.setEnableActivityLifecycleTracingAutoFinish(d(b10, logger, f82163z, sentryAndroidOptions.isEnableActivityLifecycleTracingAutoFinish()));
                sentryAndroidOptions.setProfilingEnabled(d(b10, logger, B, sentryAndroidOptions.isProfilingEnabled()));
                if (sentryAndroidOptions.getProfilesSampleRate() == null) {
                    Double e11 = e(b10, logger, C);
                    if (e11.doubleValue() != -1.0d) {
                        sentryAndroidOptions.setProfilesSampleRate(e11);
                    }
                }
                sentryAndroidOptions.setEnableUserInteractionTracing(d(b10, logger, A, sentryAndroidOptions.isEnableUserInteractionTracing()));
                long g4 = g(b10, logger, I, -1L);
                if (g4 != -1) {
                    sentryAndroidOptions.setIdleTimeout(Long.valueOf(g4));
                }
                List<String> f10 = f(b10, logger, F);
                if (!b10.containsKey(F) && (f10 == null || f10.isEmpty())) {
                    f10 = f(b10, logger, E);
                }
                if ((b10.containsKey(F) || b10.containsKey(E)) && f10 == null) {
                    sentryAndroidOptions.setTracePropagationTargets(Collections.emptyList());
                } else if (f10 != null) {
                    sentryAndroidOptions.setTracePropagationTargets(f10);
                }
                sentryAndroidOptions.setEnableFramesTracking(d(b10, logger, O, true));
                sentryAndroidOptions.setProguardUuid(h(b10, logger, H, sentryAndroidOptions.getProguardUuid()));
                io.sentry.protocol.l sdkVersion = sentryAndroidOptions.getSdkVersion();
                if (sdkVersion == null) {
                    sdkVersion = new io.sentry.protocol.l("", "");
                }
                sdkVersion.i(i(b10, logger, f82150m, sdkVersion.f()));
                sdkVersion.j(i(b10, logger, f82151n, sdkVersion.h()));
                sentryAndroidOptions.setSdkVersion(sdkVersion);
                sentryAndroidOptions.setSendDefaultPii(d(b10, logger, N, sentryAndroidOptions.isSendDefaultPii()));
            }
            sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "Retrieving configuration from AndroidManifest.xml", new Object[0]);
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to read configuration from android manifest metadata.", th);
        }
    }

    @m8.h
    private static Bundle b(@m8.g Context context, @m8.g io.sentry.o0 o0Var, @m8.h m0 m0Var) throws PackageManager.NameNotFoundException {
        if (m0Var == null) {
            m0Var = new m0(o0Var);
        }
        return n0.a(context, 128L, m0Var).metaData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(@m8.g Context context, @m8.g io.sentry.o0 o0Var) {
        io.sentry.util.l.c(context, "The application context is required.");
        try {
            Bundle b10 = b(context, o0Var, null);
            r1 = b10 != null ? d(b10, o0Var, f82145h, true) : true;
            o0Var.c(SentryLevel.INFO, "Retrieving auto-init from AndroidManifest.xml", new Object[0]);
        } catch (Throwable th) {
            o0Var.b(SentryLevel.ERROR, "Failed to read auto-init from android manifest metadata.", th);
        }
        return r1;
    }

    private static boolean d(@m8.g Bundle bundle, @m8.g io.sentry.o0 o0Var, @m8.g String str, boolean z9) {
        boolean z10 = bundle.getBoolean(str, z9);
        o0Var.c(SentryLevel.DEBUG, "%s read: %s", str, Boolean.valueOf(z10));
        return z10;
    }

    @m8.g
    private static Double e(@m8.g Bundle bundle, @m8.g io.sentry.o0 o0Var, @m8.g String str) {
        Double valueOf = Double.valueOf(Float.valueOf(bundle.getFloat(str, -1.0f)).doubleValue());
        o0Var.c(SentryLevel.DEBUG, "%s read: %s", str, valueOf);
        return valueOf;
    }

    @m8.h
    private static List<String> f(@m8.g Bundle bundle, @m8.g io.sentry.o0 o0Var, @m8.g String str) {
        String string = bundle.getString(str);
        o0Var.c(SentryLevel.DEBUG, "%s read: %s", str, string);
        if (string != null) {
            return Arrays.asList(string.split(",", -1));
        }
        return null;
    }

    private static long g(@m8.g Bundle bundle, @m8.g io.sentry.o0 o0Var, @m8.g String str, long j4) {
        long j10 = bundle.getInt(str, (int) j4);
        o0Var.c(SentryLevel.DEBUG, "%s read: %s", str, Long.valueOf(j10));
        return j10;
    }

    @m8.h
    private static String h(@m8.g Bundle bundle, @m8.g io.sentry.o0 o0Var, @m8.g String str, @m8.h String str2) {
        String string = bundle.getString(str, str2);
        o0Var.c(SentryLevel.DEBUG, "%s read: %s", str, string);
        return string;
    }

    @m8.g
    private static String i(@m8.g Bundle bundle, @m8.g io.sentry.o0 o0Var, @m8.g String str, @m8.g String str2) {
        String string = bundle.getString(str, str2);
        o0Var.c(SentryLevel.DEBUG, "%s read: %s", str, string);
        return string;
    }
}
