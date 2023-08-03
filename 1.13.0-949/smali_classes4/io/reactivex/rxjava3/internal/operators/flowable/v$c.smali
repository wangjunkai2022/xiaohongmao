.class final Lio/reactivex/rxjava3/internal/operators/flowable/v$c;
.super Lio/reactivex/rxjava3/internal/operators/flowable/v$b;
.source "FlowableConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/v;
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
        "Lio/reactivex/rxjava3/internal/operators/flowable/v$b<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final p:J = -0x28e181349daae86aL


# instance fields
.field final n:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final o:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "mapper",
            "prefetch",
            "veryEnd"
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
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;-><init>(Lq7/o;I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    .line 3
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->o:Z

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->o:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->h:Z

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->k:Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->d()V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->i:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_c

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->i:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->k:Z

    if-nez v0, :cond_b

    .line 4
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->h:Z

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->o:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_4
    if-nez v4, :cond_b

    .line 10
    :try_start_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->b:Lq7/o;

    invoke-interface {v0, v1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lorg/reactivestreams/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->l:I

    if-eq v1, v3, :cond_6

    .line 12
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->f:I

    add-int/2addr v1, v3

    .line 13
    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->d:I

    if-ne v1, v4, :cond_5

    .line 14
    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->f:I

    .line 15
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_2

    .line 16
    :cond_5
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->f:I

    .line 17
    :cond_6
    :goto_2
    instance-of v1, v0, Lq7/s;

    if-eqz v1, :cond_a

    .line 18
    check-cast v0, Lq7/s;

    .line 19
    :try_start_2
    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 21
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 22
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->o:Z

    if-nez v0, :cond_7

    .line 23
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 24
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 25
    :cond_8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->isUnbounded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    invoke-interface {v1, v0}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 27
    :cond_9
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->k:Z

    .line 28
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/v$g;

    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/v$g;-><init>(Ljava/lang/Object;Lorg/reactivestreams/d;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/e;)V

    goto :goto_4

    .line 29
    :cond_a
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->k:Z

    .line 30
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 31
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 32
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v1}, Lorg/reactivestreams/e;->cancel()V

    .line 33
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 34
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :catchall_2
    move-exception v0

    .line 35
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 36
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v1}, Lorg/reactivestreams/e;->cancel()V

    .line 37
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 38
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 39
    :cond_b
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->n:Lorg/reactivestreams/d;

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->h:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;->d()V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->request(J)V

    return-void
.end method
