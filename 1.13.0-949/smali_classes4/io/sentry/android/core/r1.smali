.class public final Lio/sentry/android/core/r1;
.super Ljava/lang/Object;
.source "UserInteractionIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Landroid/app/Application;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lio/sentry/n0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/y0;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/y0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Application is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/sentry/android/core/r1;->a:Landroid/app/Application;

    .line 3
    iget-object p1, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "androidx.core.view.GestureDetectorCompat"

    .line 4
    invoke-virtual {p2, v0, p1}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/r1;->d:Z

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Window was null in startTracking"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/r1;->b:Lio/sentry/n0;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lio/sentry/android/core/internal/gestures/b;

    invoke-direct {v1}, Lio/sentry/android/core/internal/gestures/b;-><init>()V

    .line 7
    :cond_2
    new-instance v2, Lio/sentry/android/core/internal/gestures/g;

    iget-object v3, p0, Lio/sentry/android/core/r1;->b:Lio/sentry/n0;

    iget-object v4, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v2, p1, v3, v4}, Lio/sentry/android/core/internal/gestures/g;-><init>(Landroid/app/Activity;Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 8
    new-instance v3, Lio/sentry/android/core/internal/gestures/h;

    iget-object v4, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v3, v1, p1, v2, v4}, Lio/sentry/android/core/internal/gestures/h;-><init>(Landroid/view/Window$Callback;Landroid/content/Context;Lio/sentry/android/core/internal/gestures/g;Lio/sentry/SentryOptions;)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_3
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Window was null in stopTracking"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lio/sentry/android/core/internal/gestures/h;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lio/sentry/android/core/internal/gestures/h;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/gestures/h;->c()V

    .line 7
    invoke-virtual {v0}, Lio/sentry/android/core/internal/gestures/h;->a()Landroid/view/Window$Callback;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/android/core/internal/gestures/b;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/core/internal/gestures/h;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 5
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 2
    invoke-static {v0, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "Hub is required"

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/android/core/r1;->b:Lio/sentry/n0;

    .line 4
    iget-object p1, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUserInteractionTracing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 7
    :goto_2
    iget-object v2, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 8
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "UserInteractionIntegration enabled: %s"

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 10
    iget-boolean p1, p0, Lio/sentry/android/core/r1;->d:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lio/sentry/android/core/r1;->a:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    iget-object p1, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "UserInteractionIntegration installed."

    invoke-interface {p1, v3, v0, p2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "androidx.core is not available, UserInteractionIntegration won\'t be installed"

    .line 14
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
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
    iget-object v0, p0, Lio/sentry/android/core/r1;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/r1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UserInteractionIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/r1;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/r1;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method
