.class final Lio/reactivex/internal/operators/flowable/x$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMapEager.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/reactivestreams/e;
.implements Lio/reactivex/internal/subscribers/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Lio/reactivex/internal/subscribers/g<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final m:J = -0x3b0ddc635a9c154fL


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Lio/reactivex/internal/util/ErrorMode;

.field final f:Lio/reactivex/internal/util/AtomicThrowable;

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Lio/reactivex/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/b<",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field i:Lorg/reactivestreams/e;

.field volatile j:Z

.field volatile k:Z

.field volatile l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Ln7/o;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x$a;->b:Ln7/o;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/x$a;->c:I

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/x$a;->d:I

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/x$a;->e:Lio/reactivex/internal/util/ErrorMode;

    .line 7
    new-instance p1, Lio/reactivex/internal/queue/b;

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/queue/b;

    .line 8
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;TR;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue()Lo7/o;

    move-result-object v0

    invoke-interface {v0, p2}, Lo7/o;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 4
    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/x$a;->d(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 3
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/x$a;->a:Lorg/reactivestreams/d;

    .line 4
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/x$a;->e:Lio/reactivex/internal/util/ErrorMode;

    const/4 v5, 0x1

    .line 5
    :goto_0
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    if-nez v0, :cond_4

    .line 6
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq v3, v0, :cond_1

    .line 7
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->e()V

    .line 9
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_1
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->k:Z

    .line 11
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/queue/b;

    invoke-virtual {v8}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_3

    if-nez v8, :cond_3

    .line 12
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    :goto_1
    return-void

    :cond_3
    if-eqz v8, :cond_5

    .line 15
    iput-object v8, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    goto :goto_2

    :cond_4
    move-object v8, v0

    :cond_5
    :goto_2
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v8, :cond_e

    .line 16
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue()Lo7/o;

    move-result-object v12

    if-eqz v12, :cond_e

    move/from16 v16, v5

    move-wide v13, v9

    :goto_3
    const-wide/16 v4, 0x1

    cmp-long v17, v13, v6

    if-eqz v17, :cond_b

    .line 17
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->e()V

    return-void

    .line 19
    :cond_6
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v0, :cond_7

    .line 20
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 21
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 22
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->e()V

    .line 24
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 25
    :cond_7
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->isDone()Z

    move-result v0

    .line 26
    :try_start_0
    invoke-interface {v12}, Lo7/o;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_8

    const/16 v18, 0x1

    goto :goto_4

    :cond_8
    const/16 v18, 0x0

    :goto_4
    if-eqz v0, :cond_9

    if-eqz v18, :cond_9

    .line 27
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 28
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    move-object v8, v11

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    if-eqz v18, :cond_a

    goto :goto_5

    .line 29
    :cond_a
    invoke-interface {v2, v15}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    add-long/2addr v13, v4

    .line 30
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->requestOne()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 31
    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 32
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 33
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->e()V

    .line 35
    invoke-interface {v2, v3}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v17, :cond_f

    .line 36
    iget-boolean v15, v1, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v15, :cond_c

    .line 37
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->e()V

    return-void

    .line 38
    :cond_c
    sget-object v15, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v15, :cond_d

    .line 39
    iget-object v15, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Throwable;

    if-eqz v15, :cond_d

    .line 40
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 41
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->e()V

    .line 43
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 44
    :cond_d
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->isDone()Z

    move-result v15

    .line 45
    invoke-interface {v12}, Lo7/o;->isEmpty()Z

    move-result v12

    if-eqz v15, :cond_f

    if-eqz v12, :cond_f

    .line 46
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 47
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    move-object v8, v11

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    move/from16 v16, v5

    move-wide v13, v9

    const/4 v0, 0x0

    :cond_f
    :goto_7
    cmp-long v4, v13, v9

    if-eqz v4, :cond_10

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v9, v6, v4

    if-eqz v9, :cond_10

    .line 48
    iget-object v4, v1, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v13

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_10
    if-eqz v0, :cond_11

    move-object v0, v8

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_11
    move/from16 v4, v16

    neg-int v0, v4

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_12

    return-void

    :cond_12
    move-object v0, v8

    goto/16 :goto_0
.end method

.method public c(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->setDone()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->i()V

    return-void
.end method

.method public d(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->setDone()V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->e:Lio/reactivex/internal/util/ErrorMode;

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->e()V

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->k:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->b:Ln7/o;

    invoke-interface {v0, p1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->d:I

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;-><init>(Lio/reactivex/internal/subscribers/g;I)V

    .line 3
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/queue/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 6
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->i()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 11
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/x$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    iget v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_1
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    :cond_0
    return-void
.end method
