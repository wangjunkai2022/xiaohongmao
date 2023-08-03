.class public final Lio/sentry/android/core/e0;
.super Ljava/lang/Object;
.source "AppComponentsBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final a:Landroid/content/Context;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/e0;->a:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/e0;->b:Lio/sentry/n0;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const-string v1, "level"

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string p1, "system"

    .line 5
    invoke-virtual {v0, p1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string p1, "device.event"

    .line 6
    invoke-virtual {v0, p1}, Lio/sentry/f;->u(Ljava/lang/String;)V

    const-string p1, "Low memory"

    .line 7
    invoke-virtual {v0, p1}, Lio/sentry/f;->x(Ljava/lang/String;)V

    const-string p1, "action"

    const-string v1, "LOW_MEMORY"

    .line 8
    invoke-virtual {v0, p1, v1}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p1}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 10
    iget-object p1, p0, Lio/sentry/android/core/e0;->b:Lio/sentry/n0;

    invoke-interface {p1, v0}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 4
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

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/android/core/e0;->b:Lio/sentry/n0;

    .line 2
    instance-of p1, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/e0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/sentry/android/core/e0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AppComponentsBreadcrumbsIntegration enabled: %s"

    .line 6
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lio/sentry/android/core/e0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/core/e0;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 9
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    const-string v1, "AppComponentsBreadcrumbsIntegration installed."

    new-array v2, v3, [Ljava/lang/Object;

    .line 10
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    iget-object v0, p0, Lio/sentry/android/core/e0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 12
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "ComponentCallbacks2 is not available."

    invoke-interface {p2, v0, p1, v2, v1}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/e0;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    iget-object v2, p0, Lio/sentry/android/core/e0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "It was not possible to unregisterComponentCallbacks"

    .line 4
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/e0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "AppComponentsBreadcrumbsIntegration removed."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/e0;->b:Lio/sentry/n0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/e0;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lio/sentry/android/core/internal/util/f;->a(I)Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "undefined"

    .line 5
    :goto_0
    new-instance v1, Lio/sentry/f;

    invoke-direct {v1}, Lio/sentry/f;-><init>()V

    const-string v2, "navigation"

    .line 6
    invoke-virtual {v1, v2}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string v2, "device.orientation"

    .line 7
    invoke-virtual {v1, v2}, Lio/sentry/f;->u(Ljava/lang/String;)V

    const-string v2, "position"

    .line 8
    invoke-virtual {v1, v2, v0}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v1, v0}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 10
    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    const-string v2, "android:configuration"

    .line 11
    invoke-virtual {v0, v2, p1}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lio/sentry/android/core/e0;->b:Lio/sentry/n0;

    invoke-interface {p1, v1, v0}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/android/core/e0;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/android/core/e0;->b(Ljava/lang/Integer;)V

    return-void
.end method
