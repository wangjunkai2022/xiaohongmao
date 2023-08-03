.class public final Lio/sentry/android/core/h0;
.super Ljava/lang/Object;
.source "AppLifecycleIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;


# instance fields
.field a:Lio/sentry/android/core/LifecycleWatcher;
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation
.end field

.field private b:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Lio/sentry/android/core/z0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/z0;

    invoke-direct {v0}, Lio/sentry/android/core/z0;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/android/core/h0;-><init>(Lio/sentry/android/core/z0;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/z0;)V
    .locals 0
    .param p1    # Lio/sentry/android/core/z0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/android/core/h0;->c:Lio/sentry/android/core/z0;

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/h0;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/core/h0;->i()V

    return-void
.end method

.method public static synthetic d(Lio/sentry/android/core/h0;Lio/sentry/n0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/h0;->k(Lio/sentry/n0;)V

    return-void
.end method

.method private h(Lio/sentry/n0;)V
    .locals 8
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v7, Lio/sentry/android/core/LifecycleWatcher;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionTrackingIntervalMillis()J

    move-result-wide v3

    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v5

    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/sentry/android/core/LifecycleWatcher;-><init>(Lio/sentry/n0;JZZ)V

    iput-object v7, p0, Lio/sentry/android/core/h0;->a:Lio/sentry/android/core/LifecycleWatcher;

    .line 6
    :try_start_0
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lio/sentry/android/core/h0;->a:Lio/sentry/android/core/LifecycleWatcher;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 7
    iget-object p1, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "AppLifecycleIntegration installed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/sentry/android/core/h0;->a:Lio/sentry/android/core/LifecycleWatcher;

    .line 9
    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "AppLifecycleIntegration failed to get Lifecycle and could not be installed."

    .line 11
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic i()V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/core/h0;->p()V

    return-void
.end method

.method private synthetic k(Lio/sentry/n0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/h0;->h(Lio/sentry/n0;)V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/h0;->a:Lio/sentry/android/core/LifecycleWatcher;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 6
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "Hub is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 3
    invoke-static {v0, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "enableSessionTracking enabled: %s"

    .line 6
    invoke-interface {v0, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 8
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "enableAppLifecycleBreadcrumbs enabled: %s"

    .line 10
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :try_start_0
    const-string v0, "androidx.lifecycle.ProcessLifecycleOwner"

    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->e()Lio/sentry/android/core/internal/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-direct {p0, p1}, Lio/sentry/android/core/h0;->h(Lio/sentry/n0;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/h0;->c:Lio/sentry/android/core/z0;

    new-instance v1, Lio/sentry/android/core/g0;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/g0;-><init>(Lio/sentry/android/core/h0;Lio/sentry/n0;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/core/z0;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "AppLifecycleIntegration could not be installed"

    .line 18
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "androidx.lifecycle is not available, AppLifecycleIntegration won\'t be installed"

    .line 20
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/h0;->a:Lio/sentry/android/core/LifecycleWatcher;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->e()Lio/sentry/android/core/internal/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lio/sentry/android/core/h0;->p()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/h0;->c:Lio/sentry/android/core/z0;

    new-instance v1, Lio/sentry/android/core/f0;

    invoke-direct {v1, p0}, Lio/sentry/android/core/f0;-><init>(Lio/sentry/android/core/h0;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/core/z0;->b(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/h0;->a:Lio/sentry/android/core/LifecycleWatcher;

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/h0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "AppLifecycleIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
