.class public final Lio/sentry/android/core/p0;
.super Ljava/lang/Object;
.source "CurrentActivityIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Landroid/app/Application;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
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

    iput-object p1, p0, Lio/sentry/android/core/p0;->a:Landroid/app/Application;

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/sentry/android/core/o0;->c()Lio/sentry/android/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/o0;->b()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/android/core/o0;->c()Lio/sentry/android/core/o0;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/android/core/o0;->a()V

    :cond_0
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/android/core/o0;->c()Lio/sentry/android/core/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/android/core/o0;->d(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object p1, p0, Lio/sentry/android/core/p0;->a:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/p0;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2
    invoke-static {}, Lio/sentry/android/core/o0;->c()Lio/sentry/android/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/o0;->a()V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/p0;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/p0;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/p0;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/p0;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/p0;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/android/core/p0;->b(Landroid/app/Activity;)V

    return-void
.end method
