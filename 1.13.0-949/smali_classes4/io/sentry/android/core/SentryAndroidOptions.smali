.class public final Lio/sentry/android/core/SentryAndroidOptions;
.super Lio/sentry/SentryOptions;
.source "SentryAndroidOptions.java"


# instance fields
.field private anrEnabled:Z

.field private anrReportInDebug:Z

.field private anrTimeoutIntervalMillis:J

.field private attachScreenshot:Z

.field private attachViewHierarchy:Z

.field private collectAdditionalContext:Z

.field private debugImagesLoader:Lio/sentry/android/core/v0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private enableActivityLifecycleBreadcrumbs:Z

.field private enableActivityLifecycleTracingAutoFinish:Z

.field private enableAppComponentBreadcrumbs:Z

.field private enableAppLifecycleBreadcrumbs:Z

.field private enableAutoActivityLifecycleTracing:Z

.field private enableFramesTracking:Z

.field private enableSystemEventBreadcrumbs:Z

.field private profilingTracesHz:I

.field private final startupCrashDurationThresholdMillis:J

.field private startupCrashFlushTimeoutMillis:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/sentry/SentryOptions;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    const-wide/16 v1, 0x1388

    .line 3
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    const/4 v3, 0x0

    .line 4
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    .line 6
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    .line 7
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    .line 8
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    .line 9
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    .line 10
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    const/16 v4, 0x65

    .line 11
    iput v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->profilingTracesHz:I

    .line 12
    invoke-static {}, Lio/sentry/android/core/c1;->c()Lio/sentry/android/core/c1;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/v0;

    .line 13
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    .line 14
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    const-wide/16 v1, 0x7d0

    .line 15
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashDurationThresholdMillis:J

    .line 16
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    const-string v1, "sentry.java.android/6.13.0"

    .line 17
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lio/sentry/android/core/SentryAndroidOptions;->createSdkVersion()Lio/sentry/protocol/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setSdkVersion(Lio/sentry/protocol/l;)V

    .line 19
    invoke-virtual {p0, v3}, Lio/sentry/SentryOptions;->setAttachServerName(Z)V

    .line 20
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableScopeSync(Z)V

    return-void
.end method

.method private createSdkVersion()Lio/sentry/protocol/l;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object v0

    const-string v1, "sentry.java.android"

    const-string v2, "6.13.0"

    .line 2
    invoke-static {v0, v1, v2}, Lio/sentry/protocol/l;->k(Lio/sentry/protocol/l;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/l;

    move-result-object v0

    const-string v1, "maven:io.sentry:sentry-android-core"

    .line 3
    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public enableAllAutoBreadcrumbs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    .line 2
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    .line 3
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    .line 4
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    return-void
.end method

.method public getAnrTimeoutIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    return-wide v0
.end method

.method public getDebugImagesLoader()Lio/sentry/android/core/v0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/v0;

    return-object v0
.end method

.method public getProfilingTracesHz()I
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    iget v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->profilingTracesHz:I

    return v0
.end method

.method public getProfilingTracesIntervalMillis()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getStartupCrashDurationThresholdMillis()J
    .locals 2
    .annotation build Lm8/a$c;
    .end annotation

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method getStartupCrashFlushTimeoutMillis()J
    .locals 2
    .annotation build Lm8/a$c;
    .end annotation

    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    return-wide v0
.end method

.method public isAnrEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    return v0
.end method

.method public isAnrReportInDebug()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    return v0
.end method

.method public isAttachScreenshot()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    return v0
.end method

.method public isAttachViewHierarchy()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    return v0
.end method

.method public isCollectAdditionalContext()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    return v0
.end method

.method public isEnableActivityLifecycleBreadcrumbs()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    return v0
.end method

.method public isEnableActivityLifecycleTracingAutoFinish()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    return v0
.end method

.method public isEnableAppComponentBreadcrumbs()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    return v0
.end method

.method public isEnableAppLifecycleBreadcrumbs()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    return v0
.end method

.method public isEnableAutoActivityLifecycleTracing()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    return v0
.end method

.method public isEnableFramesTracking()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    return v0
.end method

.method public isEnableSystemEventBreadcrumbs()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    return v0
.end method

.method public setAnrEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    return-void
.end method

.method public setAnrReportInDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    return-void
.end method

.method public setAnrTimeoutIntervalMillis(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    return-void
.end method

.method public setAttachScreenshot(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    return-void
.end method

.method public setAttachViewHierarchy(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    return-void
.end method

.method public setCollectAdditionalContext(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    return-void
.end method

.method public setDebugImagesLoader(Lio/sentry/android/core/v0;)V
    .locals 0
    .param p1    # Lio/sentry/android/core/v0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/android/core/c1;->c()Lio/sentry/android/core/c1;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/v0;

    return-void
.end method

.method public setEnableActivityLifecycleBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    return-void
.end method

.method public setEnableActivityLifecycleTracingAutoFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    return-void
.end method

.method public setEnableAppComponentBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    return-void
.end method

.method public setEnableAppLifecycleBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    return-void
.end method

.method public setEnableAutoActivityLifecycleTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    return-void
.end method

.method public setEnableFramesTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    return-void
.end method

.method public setEnableSystemEventBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0
    .annotation build Lm8/a$c;
    .end annotation

    iput p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->profilingTracesHz:I

    return-void
.end method

.method public setProfilingTracesIntervalMillis(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method setStartupCrashFlushTimeoutMillis(J)V
    .locals 0
    .annotation build Lm8/k;
    .end annotation

    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    return-void
.end method
