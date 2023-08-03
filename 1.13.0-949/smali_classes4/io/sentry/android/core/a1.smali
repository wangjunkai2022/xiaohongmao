.class final Lio/sentry/android/core/a1;
.super Ljava/lang/Object;
.source "ManifestMetadataReader.java"


# static fields
.field static final A:Ljava/lang/String; = "io.sentry.traces.user-interaction.enable"

.field static final B:Ljava/lang/String; = "io.sentry.traces.profiling.enable"

.field static final C:Ljava/lang/String; = "io.sentry.traces.profiling.sample-rate"

.field static final D:Ljava/lang/String; = "io.sentry.traces.trace-sampling"
    .annotation build Lm8/a$b;
    .end annotation
.end field

.field static final E:Ljava/lang/String; = "io.sentry.traces.tracing-origins"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final F:Ljava/lang/String; = "io.sentry.traces.trace-propagation-targets"

.field static final G:Ljava/lang/String; = "io.sentry.attach-threads"

.field static final H:Ljava/lang/String; = "io.sentry.proguard-uuid"

.field static final I:Ljava/lang/String; = "io.sentry.traces.idle-timeout"

.field static final J:Ljava/lang/String; = "io.sentry.attach-screenshot"

.field static final K:Ljava/lang/String; = "io.sentry.attach-view-hierarchy"

.field static final L:Ljava/lang/String; = "io.sentry.send-client-reports"

.field static final M:Ljava/lang/String; = "io.sentry.additional-context"

.field static final N:Ljava/lang/String; = "io.sentry.send-default-pii"

.field static final O:Ljava/lang/String; = "io.sentry.traces.frames-tracking"

.field static final a:Ljava/lang/String; = "io.sentry.dsn"

.field static final b:Ljava/lang/String; = "io.sentry.debug"

.field static final c:Ljava/lang/String; = "io.sentry.debug.level"

.field static final d:Ljava/lang/String; = "io.sentry.sample-rate"

.field static final e:Ljava/lang/String; = "io.sentry.anr.enable"

.field static final f:Ljava/lang/String; = "io.sentry.anr.report-debug"

.field static final g:Ljava/lang/String; = "io.sentry.anr.timeout-interval-millis"

.field static final h:Ljava/lang/String; = "io.sentry.auto-init"

.field static final i:Ljava/lang/String; = "io.sentry.ndk.enable"

.field static final j:Ljava/lang/String; = "io.sentry.ndk.scope-sync.enable"

.field static final k:Ljava/lang/String; = "io.sentry.release"

.field static final l:Ljava/lang/String; = "io.sentry.environment"

.field static final m:Ljava/lang/String; = "io.sentry.sdk.name"

.field static final n:Ljava/lang/String; = "io.sentry.sdk.version"

.field static final o:Ljava/lang/String; = "io.sentry.session-tracking.enable"

.field static final p:Ljava/lang/String; = "io.sentry.auto-session-tracking.enable"

.field static final q:Ljava/lang/String; = "io.sentry.session-tracking.timeout-interval-millis"

.field static final r:Ljava/lang/String; = "io.sentry.breadcrumbs.activity-lifecycle"

.field static final s:Ljava/lang/String; = "io.sentry.breadcrumbs.app-lifecycle"

.field static final t:Ljava/lang/String; = "io.sentry.breadcrumbs.system-events"

.field static final u:Ljava/lang/String; = "io.sentry.breadcrumbs.app-components"

.field static final v:Ljava/lang/String; = "io.sentry.breadcrumbs.user-interaction"

.field static final w:Ljava/lang/String; = "io.sentry.uncaught-exception-handler.enable"

.field static final x:Ljava/lang/String; = "io.sentry.traces.sample-rate"

.field static final y:Ljava/lang/String; = "io.sentry.traces.activity.enable"

.field static final z:Ljava/lang/String; = "io.sentry.traces.activity.auto-finish.enable"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;)V
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, ""

    const-string v1, "io.sentry.traces.trace-propagation-targets"

    const-string v2, "The application context is required."

    .line 1
    invoke-static {p0, v2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "The options object is required."

    .line 2
    invoke-static {p1, v2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lio/sentry/android/core/a1;->b(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)Landroid/os/Bundle;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p0, :cond_d

    const-string v3, "io.sentry.debug"

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setDebug(Z)V

    .line 6
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "io.sentry.debug.level"

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDiagnosticLevel()Lio/sentry/SentryLevel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/a1;->h(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setDiagnosticLevel(Lio/sentry/SentryLevel;)V

    :cond_0
    const-string v3, "io.sentry.anr.enable"

    .line 10
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    const-string v3, "io.sentry.session-tracking.enable"

    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v4

    .line 12
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "io.sentry.auto-session-tracking.enable"

    .line 13
    invoke-static {p0, p2, v4, v3}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 14
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setEnableAutoSessionTracking(Z)V

    .line 15
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-nez v3, :cond_1

    const-string v3, "io.sentry.sample-rate"

    .line 16
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/a1;->e(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_1

    .line 18
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setSampleRate(Ljava/lang/Double;)V

    :cond_1
    const-string v3, "io.sentry.anr.report-debug"

    .line 19
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 20
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrReportInDebug(Z)V

    const-string v3, "io.sentry.anr.timeout-interval-millis"

    .line 21
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v6

    .line 22
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/a1;->g(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;J)J

    move-result-wide v6

    .line 23
    invoke-virtual {p1, v6, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrTimeoutIntervalMillis(J)V

    const-string v3, "io.sentry.dsn"

    .line 24
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->h(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 25
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v8, "DSN is required. Use empty string to disable SDK."

    new-array v9, v2, [Ljava/lang/Object;

    .line 26
    invoke-interface {v6, v7, v8, v9}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 28
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "DSN is empty, disabling sentry-android"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_3
    :goto_0
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    const-string v3, "io.sentry.ndk.enable"

    .line 30
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableNdk()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setEnableNdk(Z)V

    const-string v3, "io.sentry.ndk.scope-sync.enable"

    .line 31
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 32
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setEnableScopeSync(Z)V

    const-string v3, "io.sentry.release"

    .line 33
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->h(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    const-string v3, "io.sentry.environment"

    .line 34
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->h(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    const-string v3, "io.sentry.session-tracking.timeout-interval-millis"

    .line 35
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionTrackingIntervalMillis()J

    move-result-wide v6

    .line 36
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/a1;->g(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;J)J

    move-result-wide v6

    .line 37
    invoke-virtual {p1, v6, v7}, Lio/sentry/SentryOptions;->setSessionTrackingIntervalMillis(J)V

    const-string v3, "io.sentry.breadcrumbs.activity-lifecycle"

    .line 38
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v6

    .line 39
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 40
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.app-lifecycle"

    .line 41
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v6

    .line 42
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 43
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppLifecycleBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.system-events"

    .line 44
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v6

    .line 45
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 46
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.app-components"

    .line 47
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v6

    .line 48
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 49
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.user-interaction"

    .line 50
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v6

    .line 51
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 52
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    const-string v3, "io.sentry.uncaught-exception-handler.enable"

    .line 53
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v6

    .line 54
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 55
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setEnableUncaughtExceptionHandler(Z)V

    const-string v3, "io.sentry.attach-threads"

    .line 56
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isAttachThreads()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 57
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setAttachThreads(Z)V

    const-string v3, "io.sentry.attach-screenshot"

    .line 58
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 59
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    const-string v3, "io.sentry.attach-view-hierarchy"

    .line 60
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 61
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    const-string v3, "io.sentry.send-client-reports"

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isSendClientReports()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 63
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setSendClientReports(Z)V

    const-string v3, "io.sentry.additional-context"

    .line 64
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    move-result v6

    .line 65
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 66
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectAdditionalContext(Z)V

    .line 67
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "io.sentry.traces.sample-rate"

    .line 68
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/a1;->e(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_4

    .line 70
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    :cond_4
    const-string v3, "io.sentry.traces.trace-sampling"

    .line 71
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 72
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setTraceSampling(Z)V

    const-string v3, "io.sentry.traces.activity.enable"

    .line 73
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result v6

    .line 74
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 75
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoActivityLifecycleTracing(Z)V

    const-string v3, "io.sentry.traces.activity.auto-finish.enable"

    .line 76
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v6

    .line 77
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 78
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleTracingAutoFinish(Z)V

    const-string v3, "io.sentry.traces.profiling.enable"

    .line 79
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 80
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setProfilingEnabled(Z)V

    .line 81
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "io.sentry.traces.profiling.sample-rate"

    .line 82
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/a1;->e(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_5

    .line 84
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    :cond_5
    const-string v3, "io.sentry.traces.user-interaction.enable"

    .line 85
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUserInteractionTracing()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v3

    .line 86
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setEnableUserInteractionTracing(Z)V

    const-string v3, "io.sentry.traces.idle-timeout"

    const-wide/16 v4, -0x1

    .line 87
    invoke-static {p0, p2, v3, v4, v5}, Lio/sentry/android/core/a1;->g(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_6

    .line 88
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 89
    :cond_6
    invoke-static {p0, p2, v1}, Lio/sentry/android/core/a1;->f(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "io.sentry.traces.tracing-origins"

    if-nez v4, :cond_8

    if-eqz v3, :cond_7

    .line 91
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 92
    :cond_7
    invoke-static {p0, p2, v5}, Lio/sentry/android/core/a1;->f(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 93
    :cond_8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 94
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    if-nez v3, :cond_a

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    goto :goto_1

    :cond_a
    if-eqz v3, :cond_b

    .line 96
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    :cond_b
    :goto_1
    const-string v1, "io.sentry.traces.frames-tracking"

    const/4 v3, 0x1

    .line 97
    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableFramesTracking(Z)V

    const-string v1, "io.sentry.proguard-uuid"

    .line 98
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/a1;->h(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object v1

    if-nez v1, :cond_c

    .line 101
    new-instance v1, Lio/sentry/protocol/l;

    invoke-direct {v1, v0, v0}, Lio/sentry/protocol/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v0, "io.sentry.sdk.name"

    .line 102
    invoke-virtual {v1}, Lio/sentry/protocol/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v0, v3}, Lio/sentry/android/core/a1;->i(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/l;->i(Ljava/lang/String;)V

    const-string v0, "io.sentry.sdk.version"

    .line 103
    invoke-virtual {v1}, Lio/sentry/protocol/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v0, v3}, Lio/sentry/android/core/a1;->i(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/l;->j(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->setSdkVersion(Lio/sentry/protocol/l;)V

    const-string v0, "io.sentry.send-default-pii"

    .line 105
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result p0

    .line 106
    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setSendDefaultPii(Z)V

    .line 107
    :cond_d
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Retrieving configuration from AndroidManifest.xml"

    new-array v1, v2, [Ljava/lang/Object;

    .line 108
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 109
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to read configuration from android manifest metadata."

    .line 110
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static b(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)Landroid/os/Bundle;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Lio/sentry/android/core/m0;

    invoke-direct {p2, p1}, Lio/sentry/android/core/m0;-><init>(Lio/sentry/o0;)V

    :goto_0
    const-wide/16 v0, 0x80

    .line 2
    invoke-static {p0, v0, v1, p2}, Lio/sentry/android/core/n0;->a(Landroid/content/Context;JLio/sentry/android/core/m0;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method static c(Landroid/content/Context;Lio/sentry/o0;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "The application context is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/a1;->b(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "io.sentry.auto-init"

    .line 3
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/a1;->d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    :cond_0
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Retrieving auto-init from AndroidManifest.xml"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, v0, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to read auto-init from android manifest metadata."

    invoke-interface {p1, v0, v2, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method private static d(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Z)Z
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 2
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "%s read: %s"

    invoke-interface {p1, p3, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private static e(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 2
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const-string p2, "%s read: %s"

    invoke-interface {p1, v0, p2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static f(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lio/sentry/o0;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const-string p2, "%s read: %s"

    invoke-interface {p1, v0, p2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    const-string p2, ","

    .line 3
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;J)J
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    long-to-int p4, p3

    .line 1
    invoke-virtual {p0, p2, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long p3, p0

    .line 2
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "%s read: %s"

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide p3
.end method

.method private static h(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p0, v0, p2

    const-string p2, "%s read: %s"

    invoke-interface {p1, p3, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static i(Landroid/os/Bundle;Lio/sentry/o0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p0, v0, p2

    const-string p2, "%s read: %s"

    invoke-interface {p1, p3, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
