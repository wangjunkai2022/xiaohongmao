.class public final Lio/reactivex/rxjava3/processors/h;
.super Lio/reactivex/rxjava3/processors/c;
.source "UnicastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/processors/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/processors/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field volatile e:Z

.field f:Ljava/lang/Throwable;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/d<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field volatile h:Z

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription<",
            "TT;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicLong;

.field l:Z


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "capacityHint",
            "onTerminate",
            "delayError"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/processors/c;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/processors/h;->b:Lio/reactivex/rxjava3/internal/queue/b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/processors/h;->d:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/processors/h$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/processors/h$a;-><init>(Lio/reactivex/rxjava3/processors/h;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/h;->j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/h;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static m9()Lio/reactivex/rxjava3/processors/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/processors/h;

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/rxjava3/processors/h;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static n9(I)Lio/reactivex/rxjava3/processors/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/processors/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/processors/h;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static o9(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/h;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacityHint",
            "onTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/processors/h;->p9(ILjava/lang/Runnable;Z)Lio/reactivex/rxjava3/processors/h;

    move-result-object p0

    return-object p0
.end method

.method public static p9(ILjava/lang/Runnable;Z)Lio/reactivex/rxjava3/processors/h;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
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
            "capacityHint",
            "onTerminate",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "onTerminate"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/processors/h;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/processors/h;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static q9(Z)Lio/reactivex/rxjava3/processors/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/processors/h;

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/rxjava3/processors/h;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;

    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Lio/reactivex/rxjava3/processors/h;->h:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/h;->s9()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This processor allows only a single Subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    :goto_0
    return-void
.end method

.method public g9()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l9(ZZZLorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/queue/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "failFast",
            "d",
            "empty",
            "a",
            "q"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p5}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p5}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 6
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    invoke-interface {p4, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p3, :cond_3

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    .line 9
    iget-object p2, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p4, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {p4}, Lorg/reactivestreams/d;->onComplete()V

    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/h;->r9()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/h;->s9()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const-string v0, "onError called with a null Throwable."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/h;->r9()V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/h;->s9()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with a null value."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->b:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/h;->s9()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    :goto_1
    return-void
.end method

.method r9()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method s9()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/d;

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/h;->l:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/processors/h;->t9(Lorg/reactivestreams/d;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/processors/h;->u9(Lorg/reactivestreams/d;)V

    :goto_1
    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/h;->j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/d;

    goto :goto_0
.end method

.method t9(Lorg/reactivestreams/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->b:Lio/reactivex/rxjava3/internal/queue/b;

    .line 2
    iget-boolean v1, p0, Lio/reactivex/rxjava3/processors/h;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    :cond_0
    iget-boolean v3, p0, Lio/reactivex/rxjava3/processors/h;->h:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/rxjava3/processors/h;->e:Z

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 6
    iget-object v5, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    invoke-interface {p1, v4}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 11
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/h;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {p1}, Lorg/reactivestreams/d;->onComplete()V

    :goto_0
    return-void

    .line 15
    :cond_4
    iget-object v3, p0, Lio/reactivex/rxjava3/processors/h;->j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method u9(Lorg/reactivestreams/d;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    iget-object v7, v6, Lio/reactivex/rxjava3/processors/h;->b:Lio/reactivex/rxjava3/internal/queue/b;

    .line 2
    iget-boolean v0, v6, Lio/reactivex/rxjava3/processors/h;->d:Z

    const/4 v8, 0x1

    xor-int/lit8 v9, v0, 0x1

    const/4 v10, 0x1

    .line 3
    :goto_0
    iget-object v0, v6, Lio/reactivex/rxjava3/processors/h;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/16 v4, 0x0

    :goto_1
    cmp-long v15, v11, v4

    if-eqz v15, :cond_3

    .line 4
    iget-boolean v2, v6, Lio/reactivex/rxjava3/processors/h;->e:Z

    .line 5
    invoke-virtual {v7}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v16, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    move v1, v9

    move-object v8, v3

    move/from16 v3, v16

    move-wide v13, v4

    move-object/from16 v4, p1

    move-object v5, v7

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/processors/h;->l9(ZZZLorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/queue/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz v16, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v5, p1

    .line 7
    invoke-interface {v5, v8}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v13

    move-wide v4, v0

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move-wide v13, v4

    :goto_3
    move-object/from16 v5, p1

    if-nez v15, :cond_4

    .line 8
    iget-boolean v2, v6, Lio/reactivex/rxjava3/processors/h;->e:Z

    invoke-virtual {v7}, Lio/reactivex/rxjava3/internal/queue/b;->isEmpty()Z

    move-result v3

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/processors/h;->l9(ZZZLorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/queue/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v2, v13, v0

    if-eqz v2, :cond_5

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v11, v0

    if-eqz v2, :cond_5

    .line 9
    iget-object v0, v6, Lio/reactivex/rxjava3/processors/h;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 10
    :cond_5
    iget-object v0, v6, Lio/reactivex/rxjava3/processors/h;->j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v1, v10

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v10

    if-nez v10, :cond_6

    return-void

    :cond_6
    const/4 v8, 0x1

    goto :goto_0
.end method
