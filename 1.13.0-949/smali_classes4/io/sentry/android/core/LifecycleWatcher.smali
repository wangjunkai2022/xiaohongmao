.class final Lio/sentry/android/core/LifecycleWatcher;
.super Ljava/lang/Object;
.source "LifecycleWatcher.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private final b:J

.field private c:Ljava/util/TimerTask;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Ljava/util/Timer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Z

.field private final h:Z

.field private final i:Lio/sentry/transport/o;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/n0;JZZ)V
    .locals 7
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/sentry/transport/m;->b()Lio/sentry/transport/o;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/LifecycleWatcher;-><init>(Lio/sentry/n0;JZZLio/sentry/transport/o;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/n0;JZZLio/sentry/transport/o;)V
    .locals 3
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lio/sentry/transport/o;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->e:Ljava/lang/Object;

    .line 6
    iput-wide p2, p0, Lio/sentry/android/core/LifecycleWatcher;->b:J

    .line 7
    iput-boolean p4, p0, Lio/sentry/android/core/LifecycleWatcher;->g:Z

    .line 8
    iput-boolean p5, p0, Lio/sentry/android/core/LifecycleWatcher;->h:Z

    .line 9
    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->f:Lio/sentry/n0;

    .line 10
    iput-object p6, p0, Lio/sentry/android/core/LifecycleWatcher;->i:Lio/sentry/transport/o;

    if-eqz p4, :cond_0

    .line 11
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->d:Ljava/util/Timer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->d:Ljava/util/Timer;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/LifecycleWatcher;JLio/sentry/r2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/LifecycleWatcher;->i(JLio/sentry/r2;)V

    return-void
.end method

.method static synthetic b(Lio/sentry/android/core/LifecycleWatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/LifecycleWatcher;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lio/sentry/android/core/LifecycleWatcher;)Lio/sentry/n0;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->f:Lio/sentry/n0;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/LifecycleWatcher;->h:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "navigation"

    .line 3
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string v1, "state"

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "app.lifecycle"

    .line 5
    invoke-virtual {v0, p1}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p1}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 7
    iget-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->f:Lio/sentry/n0;

    invoke-interface {p1, v0}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/sentry/android/core/internal/util/c;->a(Ljava/lang/String;)Lio/sentry/f;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->f:Lio/sentry/n0;

    invoke-interface {v0, p1}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->c:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->c:Ljava/util/TimerTask;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic i(JLio/sentry/r2;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p3}, Lio/sentry/r2;->t()Lio/sentry/Session;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Lio/sentry/Session;->p()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p3}, Lio/sentry/Session;->p()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :cond_0
    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    .line 5
    iget-wide v2, p0, Lio/sentry/android/core/LifecycleWatcher;->b:J

    add-long/2addr v0, v2

    cmp-long p3, v0, p1

    if-gtz p3, :cond_2

    :cond_1
    const-string p3, "start"

    .line 6
    invoke-direct {p0, p3}, Lio/sentry/android/core/LifecycleWatcher;->e(Ljava/lang/String;)V

    .line 7
    iget-object p3, p0, Lio/sentry/android/core/LifecycleWatcher;->f:Lio/sentry/n0;

    invoke-interface {p3}, Lio/sentry/n0;->b0()V

    .line 8
    :cond_2
    iget-object p3, p0, Lio/sentry/android/core/LifecycleWatcher;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->f()V

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->d:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lio/sentry/android/core/LifecycleWatcher$a;

    invoke-direct {v1, p0}, Lio/sentry/android/core/LifecycleWatcher$a;-><init>(Lio/sentry/android/core/LifecycleWatcher;)V

    iput-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->c:Ljava/util/TimerTask;

    .line 5
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->d:Ljava/util/Timer;

    iget-wide v3, p0, Lio/sentry/android/core/LifecycleWatcher;->b:J

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/LifecycleWatcher;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->f()V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->i:Lio/sentry/transport/o;

    invoke-interface {v0}, Lio/sentry/transport/o;->a()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->f:Lio/sentry/n0;

    new-instance v3, Lio/sentry/android/core/x0;

    invoke-direct {v3, p0, v0, v1}, Lio/sentry/android/core/x0;-><init>(Lio/sentry/android/core/LifecycleWatcher;J)V

    invoke-interface {v2, v3}, Lio/sentry/n0;->V(Lio/sentry/s2;)V

    :cond_0
    return-void
.end method


# virtual methods
.method g()Ljava/util/Timer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->d:Ljava/util/Timer;

    return-object v0
.end method

.method h()Ljava/util/TimerTask;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->c:Ljava/util/TimerTask;

    return-object v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->a(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->b(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->c(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->d(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->k()V

    const-string p1, "foreground"

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/LifecycleWatcher;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lio/sentry/android/core/j0;->a()Lio/sentry/android/core/j0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/sentry/android/core/j0;->d(Z)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lio/sentry/android/core/LifecycleWatcher;->g:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->i:Lio/sentry/transport/o;

    invoke-interface {p1}, Lio/sentry/transport/o;->a()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->j()V

    .line 5
    :cond_0
    invoke-static {}, Lio/sentry/android/core/j0;->a()Lio/sentry/android/core/j0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/sentry/android/core/j0;->d(Z)V

    const-string p1, "background"

    .line 6
    invoke-direct {p0, p1}, Lio/sentry/android/core/LifecycleWatcher;->d(Ljava/lang/String;)V

    return-void
.end method
