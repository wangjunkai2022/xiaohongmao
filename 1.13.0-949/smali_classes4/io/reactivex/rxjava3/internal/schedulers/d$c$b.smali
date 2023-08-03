.class final Lio/reactivex/rxjava3/internal/schedulers/d$c$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final d:J = -0x3201fa934be19cacL

.field static final e:I = 0x0

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x3

.field static final i:I = 0x4


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Lio/reactivex/rxjava3/disposables/g;

.field volatile c:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/disposables/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "run",
            "tasks"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->a:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->b:Lio/reactivex/rxjava3/disposables/g;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->b:Lio/reactivex/rxjava3/disposables/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/disposables/g;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->c:Ljava/lang/Thread;

    .line 8
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->a()V

    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_5

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->c:Ljava/lang/Thread;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    const/4 v3, 0x2

    .line 4
    :try_start_0
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->a:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->c:Ljava/lang/Thread;

    .line 6
    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->a()V

    goto :goto_3

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 11
    :try_start_1
    invoke-static {v4}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 12
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v4

    .line 13
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->c:Ljava/lang/Thread;

    .line 14
    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->a()V

    .line 19
    :goto_2
    throw v4

    .line 20
    :cond_4
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$b;->c:Ljava/lang/Thread;

    :cond_5
    :goto_3
    return-void
.end method
