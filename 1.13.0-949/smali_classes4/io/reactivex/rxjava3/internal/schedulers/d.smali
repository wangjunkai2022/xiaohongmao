.class public final Lio/reactivex/rxjava3/internal/schedulers/d;
.super Lio/reactivex/rxjava3/core/o0;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/d$a;,
        Lio/reactivex/rxjava3/internal/schedulers/d$b;,
        Lio/reactivex/rxjava3/internal/schedulers/d$c;
    }
.end annotation


# static fields
.field static final e:Lio/reactivex/rxjava3/core/o0;


# instance fields
.field final b:Z

.field final c:Z

.field final d:Ljava/util/concurrent/Executor;
    .annotation build Lp7/e;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->h()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/d;->e:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ZZ)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "executor",
            "interruptibleWorker",
            "fair"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/o0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->b:Z

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->c:Z

    return-void
.end method


# virtual methods
.method public d()Lio/reactivex/rxjava3/core/o0$c;
    .locals 4
    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d$c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->b:Z

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/schedulers/d$c;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-object v0
.end method

.method public f(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/a;->setFuture(Ljava/util/concurrent/Future;)V

    return-object v0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->b:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/disposables/g;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d$c$a;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/d$c$a;-><init>(Ljava/lang/Runnable;)V

    .line 10
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 12
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "run",
            "delay",
            "unit"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/a;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d$b;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/schedulers/d$b;-><init>(Ljava/lang/Runnable;)V

    .line 9
    sget-object p1, Lio/reactivex/rxjava3/internal/schedulers/d;->e:Lio/reactivex/rxjava3/core/o0;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/d$a;

    invoke-direct {v1, p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/d$a;-><init>(Lio/reactivex/rxjava3/internal/schedulers/d;Lio/reactivex/rxjava3/internal/schedulers/d$b;)V

    invoke-virtual {p1, v1, p2, p3, p4}, Lio/reactivex/rxjava3/core/o0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    .line 10
    iget-object p2, v0, Lio/reactivex/rxjava3/internal/schedulers/d$b;->a:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/f;)Z

    return-object v0
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "run",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance v7, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectPeriodicTask;

    invoke-direct {v7, p1}, Lio/reactivex/rxjava3/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d;->d:Ljava/util/concurrent/Executor;

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 5
    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/internal/schedulers/a;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    .line 8
    :cond_0
    invoke-super/range {p0 .. p6}, Lio/reactivex/rxjava3/core/o0;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method
