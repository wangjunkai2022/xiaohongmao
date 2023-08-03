.class final Lio/reactivex/rxjava3/internal/operators/flowable/v$d;
.super Lio/reactivex/rxjava3/internal/operators/flowable/v$b;
.source "FlowableConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
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
.field private static final p:J = 0x6d9ede3055d54052L


# instance fields
.field final n:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final o:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "mapper",
            "prefetch"
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
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;-><init>(Lq7/o;I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/rxjava3/internal/util/h;->d(Lorg/reactivestreams/d;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/rxjava3/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/rxjava3/internal/util/h;->f(Lorg/reactivestreams/d;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/rxjava3/internal/util/AtomicThrowable;)Z

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_a

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->i:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->k:Z

    if-nez v0, :cond_9

    .line 4
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->h:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    :cond_3
    if-nez v4, :cond_9

    .line 7
    :try_start_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->b:Lq7/o;

    invoke-interface {v0, v1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lorg/reactivestreams/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->l:I

    if-eq v1, v3, :cond_5

    .line 9
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->f:I

    add-int/2addr v1, v3

    .line 10
    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->d:I

    if-ne v1, v4, :cond_4

    .line 11
    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->f:I

    .line 12
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_2

    .line 13
    :cond_4
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->f:I

    .line 14
    :cond_5
    :goto_2
    instance-of v1, v0, Lq7/s;

    if-eqz v1, :cond_8

    .line 15
    check-cast v0, Lq7/s;

    .line 16
    :try_start_2
    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->isUnbounded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-static {v1, v0, p0, v2}, Lio/reactivex/rxjava3/internal/util/h;->f(Lorg/reactivestreams/d;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/rxjava3/internal/util/AtomicThrowable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_7
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->k:Z

    .line 20
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/v$g;

    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/v$g;-><init>(Ljava/lang/Object;Lorg/reactivestreams/d;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/e;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v1}, Lorg/reactivestreams/e;->cancel()V

    .line 23
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 24
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 25
    :cond_8
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->k:Z

    .line 26
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 27
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 28
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v1}, Lorg/reactivestreams/e;->cancel()V

    .line 29
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 30
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :catchall_2
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

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 35
    :cond_9
    :goto_3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    return-void
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;->n:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v$b;->j:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/rxjava3/internal/util/h;->d(Lorg/reactivestreams/d;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/rxjava3/internal/util/AtomicThrowable;)V

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
