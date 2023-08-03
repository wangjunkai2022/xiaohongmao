.class public final Lio/sentry/android/core/internal/util/n;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/util/n$c;,
        Lio/sentry/android/core/internal/util/n$b;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/android/core/m0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:Landroid/os/Handler;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/sentry/android/core/internal/util/n$b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private g:Z

.field private final h:Lio/sentry/android/core/internal/util/n$c;

.field private i:Landroid/view/Window$OnFrameMetricsAvailableListener;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/m0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/util/n$a;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/n$a;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/android/core/internal/util/n;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/n$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/n$c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/android/core/internal/util/n$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/n;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/n;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/internal/util/n;->g:Z

    const-string v0, "The context is required"

    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryOptions is required"

    .line 7
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/n;->c:Lio/sentry/SentryOptions;

    const-string v0, "BuildInfoProvider is required"

    .line 8
    invoke-static {p3, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/m0;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/n;->a:Lio/sentry/android/core/m0;

    const-string v0, "WindowFrameMetricsManager is required"

    .line 9
    invoke-static {p4, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/sentry/android/core/internal/util/n$c;

    iput-object p4, p0, Lio/sentry/android/core/internal/util/n;->h:Lio/sentry/android/core/internal/util/n$c;

    .line 10
    instance-of p4, p1, Landroid/app/Application;

    if-nez p4, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p3}, Lio/sentry/android/core/m0;->d()I

    move-result p4

    const/16 v0, 0x18

    if-ge p4, v0, :cond_1

    return-void

    :cond_1
    const/4 p4, 0x1

    .line 12
    iput-boolean p4, p0, Lio/sentry/android/core/internal/util/n;->g:Z

    .line 13
    new-instance p4, Landroid/os/HandlerThread;

    const-string v0, "io.sentry.android.core.internal.util.SentryFrameMetricsCollector"

    invoke-direct {p4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lio/sentry/android/core/internal/util/m;

    invoke-direct {v0, p2}, Lio/sentry/android/core/internal/util/m;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p4, v0}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 15
    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    .line 16
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lio/sentry/android/core/internal/util/n;->d:Landroid/os/Handler;

    .line 17
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 18
    new-instance p1, Lio/sentry/android/core/internal/util/l;

    invoke-direct {p1, p0, p3}, Lio/sentry/android/core/internal/util/l;-><init>(Lio/sentry/android/core/internal/util/n;Lio/sentry/android/core/m0;)V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/n;->i:Landroid/view/Window$OnFrameMetricsAvailableListener;

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/internal/util/n;Lio/sentry/android/core/m0;Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/core/internal/util/n;->d(Lio/sentry/android/core/m0;Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/SentryOptions;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/core/internal/util/n;->c(Lio/sentry/SentryOptions;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic c(Lio/sentry/SentryOptions;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Error during frames measurements."

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic d(Lio/sentry/android/core/m0;Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/m0;->d()I

    move-result p1

    const/16 p4, 0x1e

    if-lt p1, p4, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    .line 4
    :goto_0
    iget-object p2, p0, Lio/sentry/android/core/internal/util/n;->f:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/sentry/android/core/internal/util/n$b;

    .line 5
    invoke-interface {p4, p3, p1}, Lio/sentry/android/core/internal/util/n$b;->a(Landroid/view/FrameMetrics;F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private e(Landroid/view/Window;)V
    .locals 1
    .param p1    # Landroid/view/Window;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/n;->e:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/n;->i()V

    return-void
.end method

.method private h(Landroid/view/Window;)V
    .locals 4
    .param p1    # Landroid/view/Window;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->a:Lio/sentry/android/core/m0;

    invoke-virtual {v0}, Lio/sentry/android/core/m0;->d()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->h:Lio/sentry/android/core/internal/util/n$c;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->i:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-interface {v0, p1, v1}, Lio/sentry/android/core/internal/util/n$c;->b(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->c:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to remove frameMetricsAvailableListener"

    .line 6
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private i()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lio/sentry/android/core/internal/util/n;->g:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->a:Lio/sentry/android/core/m0;

    invoke-virtual {v1}, Lio/sentry/android/core/m0;->d()I

    move-result v1

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->d:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->h:Lio/sentry/android/core/internal/util/n$c;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/n;->i:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iget-object v3, p0, Lio/sentry/android/core/internal/util/n;->d:Landroid/os/Handler;

    invoke-interface {v1, v0, v2, v3}, Lio/sentry/android/core/internal/util/n$c;->a(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public f(Lio/sentry/android/core/internal/util/n$b;)Ljava/lang/String;
    .locals 2
    .param p1    # Lio/sentry/android/core/internal/util/n$b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/n;->g:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/internal/util/n;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/n;->i()V

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/n;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/internal/util/n;->e:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/n;->h(Landroid/view/Window;)V

    :cond_3
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

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

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

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/n;->e(Landroid/view/Window;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/n;->h(Landroid/view/Window;)V

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/internal/util/n;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/sentry/android/core/internal/util/n;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
