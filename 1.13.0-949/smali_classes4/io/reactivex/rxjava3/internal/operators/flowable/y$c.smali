.class final Lio/reactivex/rxjava3/internal/operators/flowable/y$c;
.super Lio/reactivex/rxjava3/internal/operators/flowable/y$b;
.source "FlowableConcatMapScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/y$b<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final q:J = -0x28e181349daae86aL


# instance fields
.field final o:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final p:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;IZLio/reactivex/rxjava3/core/o0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "mapper",
            "prefetch",
            "veryEnd",
            "worker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;IZ",
            "Lio/reactivex/rxjava3/core/o0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p5}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;-><init>(Lq7/o;ILio/reactivex/rxjava3/core/o0$c;)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    .line 3
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->p:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->p:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->i:Z

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->l:Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->d()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->j:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/o0$c;->b(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->i:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->d()V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->request(J)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->j:Z

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->l:Z

    if-nez v0, :cond_b

    .line 3
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->i:Z

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->p:Z

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :cond_4
    if-nez v4, :cond_b

    .line 11
    :try_start_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->b:Lq7/o;

    invoke-interface {v0, v1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lorg/reactivestreams/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->m:I

    if-eq v1, v3, :cond_6

    .line 13
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->g:I

    add-int/2addr v1, v3

    .line 14
    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->d:I

    if-ne v1, v4, :cond_5

    .line 15
    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->g:I

    .line 16
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_2

    .line 17
    :cond_5
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->g:I

    .line 18
    :cond_6
    :goto_2
    instance-of v1, v0, Lq7/s;

    if-eqz v1, :cond_a

    .line 19
    check-cast v0, Lq7/s;

    .line 20
    :try_start_2
    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 23
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->p:Z

    if-nez v0, :cond_7

    .line 24
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 25
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    .line 26
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_0

    .line 27
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->j:Z

    if-eqz v1, :cond_8

    goto/16 :goto_0

    .line 28
    :cond_8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->isUnbounded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-interface {v1, v0}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 30
    :cond_9
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->l:Z

    .line 31
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/v$g;

    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/v$g;-><init>(Ljava/lang/Object;Lorg/reactivestreams/d;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/e;)V

    goto :goto_4

    .line 32
    :cond_a
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->l:Z

    .line 33
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 34
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 35
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    invoke-interface {v1}, Lorg/reactivestreams/e;->cancel()V

    .line 36
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 37
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    .line 38
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :catchall_2
    move-exception v0

    .line 39
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 40
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    invoke-interface {v1}, Lorg/reactivestreams/e;->cancel()V

    .line 41
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 42
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;->o:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    .line 43
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    .line 44
    :cond_b
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
