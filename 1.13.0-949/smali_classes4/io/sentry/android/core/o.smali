.class public final Lio/sentry/android/core/o;
.super Ljava/lang/Object;
.source "ActivityLifecycleIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final p:Ljava/lang/String; = "ui.load"

.field static final q:Ljava/lang/String; = "app.start.warm"

.field static final r:Ljava/lang/String; = "app.start.cold"

.field static final s:Ljava/lang/String; = "ui.load.initial_display"


# instance fields
.field private final a:Landroid/app/Application;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/android/core/m0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Lio/sentry/n0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lio/sentry/v0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final k:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/v0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private l:Lio/sentry/j3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Landroid/os/Handler;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/w0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Lio/sentry/android/core/g;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/m0;Lio/sentry/android/core/g;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/o;->e:Z

    .line 3
    iput-boolean v0, p0, Lio/sentry/android/core/o;->g:Z

    .line 4
    iput-boolean v0, p0, Lio/sentry/android/core/o;->h:Z

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/o;->i:Z

    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {}, Lio/sentry/android/core/q;->a()Lio/sentry/j3;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/o;->l:Lio/sentry/j3;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/sentry/android/core/o;->m:Landroid/os/Handler;

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/o;->n:Ljava/util/WeakHashMap;

    const-string v0, "Application is required"

    .line 10
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/sentry/android/core/o;->a:Landroid/app/Application;

    const-string v0, "BuildInfoProvider is required"

    .line 11
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/m0;

    iput-object v0, p0, Lio/sentry/android/core/o;->b:Lio/sentry/android/core/m0;

    const-string v0, "ActivityFramesTracker is required"

    .line 12
    invoke-static {p3, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/sentry/android/core/g;

    iput-object p3, p0, Lio/sentry/android/core/o;->o:Lio/sentry/android/core/g;

    .line 13
    invoke-virtual {p2}, Lio/sentry/android/core/m0;->d()I

    move-result p2

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_0

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lio/sentry/android/core/o;->f:Z

    .line 15
    :cond_0
    invoke-static {p1}, Lio/sentry/android/core/n0;->g(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/o;->i:Z

    return-void
.end method

.method private A(Lio/sentry/v0;)V
    .locals 1
    .param p1    # Lio/sentry/v0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lio/sentry/v0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/sentry/v0;->h()V

    :cond_0
    return-void
.end method

.method private D(Lio/sentry/v0;Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/v0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SpanStatus;
        .annotation build Lm8/g;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lio/sentry/v0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    :cond_0
    return-void
.end method

.method private E(Lio/sentry/w0;Lio/sentry/v0;)V
    .locals 1
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/v0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Lio/sentry/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/o;->D(Lio/sentry/v0;Lio/sentry/SpanStatus;)V

    .line 3
    invoke-interface {p1}, Lio/sentry/v0;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    sget-object p2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 5
    :cond_1
    invoke-interface {p1, p2}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 6
    iget-object p2, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    if-eqz p2, :cond_2

    .line 7
    new-instance v0, Lio/sentry/android/core/j;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/j;-><init>(Lio/sentry/android/core/o;Lio/sentry/w0;)V

    invoke-interface {p2, v0}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    :cond_2
    return-void
.end method

.method private I(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private J(Z)Ljava/lang/String;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "Cold Start"

    return-object p1

    :cond_0
    const-string p1, "Warm Start"

    return-object p1
.end method

.method private K(Z)Ljava/lang/String;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "app.start.cold"

    return-object p1

    :cond_0
    const-string p1, "app.start.warm"

    return-object p1
.end method

.method private M(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " initial display"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private X(Lio/sentry/android/core/SentryAndroidOptions;)Z
    .locals 1
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic b(Lio/sentry/android/core/o;Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/o;->h0(Lio/sentry/w0;Lio/sentry/r2;)V

    return-void
.end method

.method private b0(Landroid/app/Activity;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/android/core/o;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic d(Lio/sentry/android/core/o;Lio/sentry/v0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->n0(Lio/sentry/v0;)V

    return-void
.end method

.method private synthetic d0(Lio/sentry/r2;Lio/sentry/w0;Lio/sentry/w0;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lio/sentry/r2;->O(Lio/sentry/w0;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p2}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 5
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic g0(Lio/sentry/w0;Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 0

    if-ne p2, p0, :cond_0

    invoke-virtual {p1}, Lio/sentry/r2;->h()V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lio/sentry/android/core/o;Lio/sentry/r2;Lio/sentry/w0;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/o;->d0(Lio/sentry/r2;Lio/sentry/w0;Lio/sentry/w0;)V

    return-void
.end method

.method private synthetic h0(Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/o;->y(Lio/sentry/r2;Lio/sentry/w0;)V

    return-void
.end method

.method public static synthetic i(Lio/sentry/w0;Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/core/o;->g0(Lio/sentry/w0;Lio/sentry/r2;Lio/sentry/w0;)V

    return-void
.end method

.method public static synthetic k(Lio/sentry/android/core/o;Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/o;->p0(Lio/sentry/w0;Lio/sentry/r2;)V

    return-void
.end method

.method private synthetic l0(Lio/sentry/v0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->A(Lio/sentry/v0;)V

    return-void
.end method

.method private synthetic n0(Lio/sentry/v0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->A(Lio/sentry/v0;)V

    return-void
.end method

.method private synthetic o0(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/w0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lio/sentry/android/core/o;->o:Lio/sentry/android/core/g;

    .line 3
    invoke-interface {p3}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object p3

    .line 4
    invoke-virtual {p2, p1, p3}, Lio/sentry/android/core/g;->n(Landroid/app/Activity;Lio/sentry/protocol/n;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unable to track activity frames as the Activity %s has been destroyed."

    .line 7
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic p(Lio/sentry/android/core/o;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/o;->o0(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/w0;)V

    return-void
.end method

.method private synthetic p0(Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/o;->s(Lio/sentry/r2;Lio/sentry/w0;)V

    return-void
.end method

.method public static synthetic q(Lio/sentry/android/core/o;Lio/sentry/v0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->l0(Lio/sentry/v0;)V

    return-void
.end method

.method private q0(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/o;->g:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lio/sentry/android/core/i0;->l(Z)V

    :cond_1
    return-void
.end method

.method private r(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "navigation"

    .line 3
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string v1, "state"

    .line 4
    invoke-virtual {v0, v1, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->I(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "screen"

    invoke-virtual {v0, v1, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "ui.lifecycle"

    .line 6
    invoke-virtual {v0, p2}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 7
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p2}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 8
    new-instance p2, Lio/sentry/b0;

    invoke-direct {p2}, Lio/sentry/b0;-><init>()V

    const-string v1, "android:activity"

    .line 9
    invoke-virtual {p2, v1, p1}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    invoke-interface {p1, v0, p2}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    :cond_0
    return-void
.end method

.method private r0(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lio/sentry/android/core/o;->e:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->b0(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    if-eqz v1, :cond_3

    .line 3
    invoke-direct {p0}, Lio/sentry/android/core/o;->s0()V

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->I(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-boolean v2, p0, Lio/sentry/android/core/o;->i:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/i0;->c()Lio/sentry/j3;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/i0;->e()Ljava/lang/Boolean;

    move-result-object v3

    .line 7
    new-instance v4, Lio/sentry/r5;

    invoke-direct {v4}, Lio/sentry/r5;-><init>()V

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v4, v5}, Lio/sentry/r5;->n(Z)V

    .line 9
    new-instance v5, Lio/sentry/android/core/l;

    invoke-direct {v5, p0, v0, v1}, Lio/sentry/android/core/l;-><init>(Lio/sentry/android/core/o;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/sentry/r5;->l(Lio/sentry/q5;)V

    .line 10
    iget-boolean v0, p0, Lio/sentry/android/core/o;->g:Z

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v4, v2}, Lio/sentry/r5;->k(Lio/sentry/j3;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    new-instance v5, Lio/sentry/p5;

    sget-object v6, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    const-string v7, "ui.load"

    invoke-direct {v5, v1, v6, v7}, Lio/sentry/p5;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, v5, v4}, Lio/sentry/n0;->N(Lio/sentry/p5;Lio/sentry/r5;)Lio/sentry/w0;

    move-result-object v0

    .line 14
    iget-boolean v4, p0, Lio/sentry/android/core/o;->g:Z

    const-string v5, "ui.load.initial_display"

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lio/sentry/android/core/o;->K(Z)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lio/sentry/android/core/o;->J(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 17
    invoke-interface {v0, v4, v3, v2, v6}, Lio/sentry/v0;->w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object v3

    iput-object v3, p0, Lio/sentry/android/core/o;->j:Lio/sentry/v0;

    .line 18
    iget-object v3, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    .line 19
    invoke-direct {p0, v1}, Lio/sentry/android/core/o;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-interface {v0, v5, v1, v2, v6}, Lio/sentry/v0;->w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object v1

    .line 21
    invoke-virtual {v3, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    .line 23
    invoke-direct {p0, v1}, Lio/sentry/android/core/o;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/sentry/android/core/o;->l:Lio/sentry/j3;

    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 24
    invoke-interface {v0, v5, v1, v3, v4}, Lio/sentry/v0;->w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object v1

    .line 25
    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_1
    iget-object v1, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    new-instance v2, Lio/sentry/android/core/k;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/k;-><init>(Lio/sentry/android/core/o;Lio/sentry/w0;)V

    invoke-interface {v1, v2}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    .line 27
    iget-object v1, p0, Lio/sentry/android/core/o;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private s0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/o;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/w0;

    .line 3
    iget-object v3, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/v0;

    .line 4
    invoke-direct {p0, v2, v1}, Lio/sentry/android/core/o;->E(Lio/sentry/w0;Lio/sentry/v0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t0(Landroid/app/Activity;Z)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/o;->e:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lio/sentry/android/core/o;->n:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/w0;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/o;->E(Lio/sentry/w0;Lio/sentry/v0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method G()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/w0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/o;->n:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method H()Lio/sentry/android/core/g;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/o;->o:Lio/sentry/android/core/g;

    return-object v0
.end method

.method L()Lio/sentry/v0;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/o;->j:Lio/sentry/v0;

    return-object v0
.end method

.method W()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/v0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 3
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

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p2, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p2, "Hub is required"

    .line 3
    invoke-static {p1, p2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    .line 4
    iget-object p1, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ActivityLifecycleIntegration enabled: %s"

    .line 7
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->X(Lio/sentry/android/core/SentryAndroidOptions;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/o;->e:Z

    .line 9
    iget-object p1, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lio/sentry/android/core/o;->e:Z

    if-eqz p1, :cond_2

    .line 10
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/o;->a:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    iget-object p1, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ActivityLifecycleIntegration installed."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
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
    iget-object v0, p0, Lio/sentry/android/core/o;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ActivityLifecycleIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/o;->o:Lio/sentry/android/core/g;

    invoke-virtual {v0}, Lio/sentry/android/core/g;->p()V

    return-void
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lio/sentry/android/core/o;->q0(Landroid/os/Bundle;)V

    const-string p2, "created"

    .line 2
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/o;->r(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lio/sentry/android/core/o;->r0(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/sentry/android/core/o;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "destroyed"

    .line 1
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->r(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/o;->j:Lio/sentry/v0;

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/o;->D(Lio/sentry/v0;Lio/sentry/SpanStatus;)V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/v0;

    .line 4
    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/o;->D(Lio/sentry/v0;Lio/sentry/SpanStatus;)V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->t0(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/sentry/android/core/o;->j:Lio/sentry/v0;

    .line 7
    iget-object v0, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-boolean v0, p0, Lio/sentry/android/core/o;->e:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lio/sentry/android/core/o;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/o;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/sentry/android/core/q;->a()Lio/sentry/j3;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/o;->l:Lio/sentry/j3;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/k3;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/o;->l:Lio/sentry/j3;

    :cond_1
    :goto_0
    const-string v0, "paused"

    .line 5
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->r(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/o;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->t0(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lio/sentry/android/core/o;->f:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/sentry/android/core/o;->c:Lio/sentry/n0;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lio/sentry/android/core/q;->a()Lio/sentry/j3;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/o;->l:Lio/sentry/j3;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/k3;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/o;->l:Lio/sentry/j3;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/o;->h:Z

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lio/sentry/android/core/o;->i:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/i0;->h()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "App Start won\'t be reported because Process wasn\'t of foregroundImportance."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lio/sentry/android/core/o;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/o;->j:Lio/sentry/v0;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_2
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lio/sentry/android/core/o;->h:Z

    .line 10
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/o;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/v0;

    const v1, 0x1020002

    .line 11
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lio/sentry/android/core/o;->b:Lio/sentry/android/core/m0;

    invoke-virtual {v2}, Lio/sentry/android/core/m0;->d()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    if-eqz v1, :cond_4

    .line 13
    new-instance v2, Lio/sentry/android/core/n;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/n;-><init>(Lio/sentry/android/core/o;Lio/sentry/v0;)V

    iget-object v0, p0, Lio/sentry/android/core/o;->b:Lio/sentry/android/core/m0;

    invoke-static {v1, v2, v0}, Lio/sentry/android/core/internal/util/h;->e(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/m0;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v1, p0, Lio/sentry/android/core/o;->m:Landroid/os/Handler;

    new-instance v2, Lio/sentry/android/core/m;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/m;-><init>(Lio/sentry/android/core/o;Lio/sentry/v0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    const-string v0, "resumed"

    .line 15
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->r(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
    iget-boolean v0, p0, Lio/sentry/android/core/o;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/sentry/android/core/o;->d:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->t0(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string p2, "saveInstanceState"

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/o;->r(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/o;->o:Lio/sentry/android/core/g;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/g;->e(Landroid/app/Activity;)V

    const-string v0, "started"

    .line 2
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->r(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "stopped"

    .line 1
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/o;->r(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method s(Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 1
    .param p1    # Lio/sentry/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/n;
    .end annotation

    new-instance v0, Lio/sentry/android/core/i;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/i;-><init>(Lio/sentry/android/core/o;Lio/sentry/r2;Lio/sentry/w0;)V

    invoke-virtual {p1, v0}, Lio/sentry/r2;->T(Lio/sentry/r2$b;)V

    return-void
.end method

.method y(Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 1
    .param p1    # Lio/sentry/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/n;
    .end annotation

    new-instance v0, Lio/sentry/android/core/h;

    invoke-direct {v0, p2, p1}, Lio/sentry/android/core/h;-><init>(Lio/sentry/w0;Lio/sentry/r2;)V

    invoke-virtual {p1, v0}, Lio/sentry/r2;->T(Lio/sentry/r2$b;)V

    return-void
.end method
