.class final Lio/reactivex/rxjava3/internal/operators/flowable/w$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMapEager.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;
.implements Lio/reactivex/rxjava3/internal/subscribers/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/w;
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
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Lio/reactivex/rxjava3/internal/subscribers/g<",
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

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field final f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Lio/reactivex/rxjava3/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field i:Lorg/reactivestreams/e;

.field volatile j:Z

.field volatile k:Z

.field volatile l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;IILio/reactivex/rxjava3/internal/util/ErrorMode;)V
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
            "maxConcurrency",
            "prefetch",
            "errorMode"
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
            "+TR;>;>;II",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b:Lq7/o;

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->c:I

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->d:I

    .line 6
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->h:Lio/reactivex/rxjava3/internal/queue/b;

    .line 8
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->setDone()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b()V

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
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    .line 3
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->a:Lorg/reactivestreams/d;

    .line 4
    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const/4 v5, 0x1

    .line 5
    :goto_0
    iget-object v6, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    if-nez v0, :cond_3

    .line 6
    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq v3, v0, :cond_1

    .line 7
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e()V

    .line 9
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->a:Lorg/reactivestreams/d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 10
    :cond_1
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->k:Z

    .line 11
    iget-object v8, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->h:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v8}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_2

    if-nez v8, :cond_2

    .line 12
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->a:Lorg/reactivestreams/d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_2
    if-eqz v8, :cond_4

    .line 13
    iput-object v8, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    goto :goto_1

    :cond_3
    move-object v8, v0

    :cond_4
    :goto_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v8, :cond_d

    .line 14
    invoke-virtual {v8}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->queue()Lio/reactivex/rxjava3/internal/fuseable/q;

    move-result-object v12

    if-eqz v12, :cond_d

    move/from16 v16, v5

    move-wide v13, v9

    :goto_2
    const-wide/16 v4, 0x1

    cmp-long v17, v13, v6

    if-eqz v17, :cond_a

    .line 15
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->j:Z

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e()V

    return-void

    .line 17
    :cond_5
    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne v3, v0, :cond_6

    .line 18
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 19
    iput-object v11, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    .line 20
    invoke-virtual {v8}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e()V

    .line 22
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->a:Lorg/reactivestreams/d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 23
    :cond_6
    invoke-virtual {v8}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->isDone()Z

    move-result v0

    .line 24
    :try_start_0
    invoke-interface {v12}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_7

    const/16 v18, 0x1

    goto :goto_3

    :cond_7
    const/16 v18, 0x0

    :goto_3
    if-eqz v0, :cond_8

    if-eqz v18, :cond_8

    .line 25
    iput-object v11, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    .line 26
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    move-object v8, v11

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    if-eqz v18, :cond_9

    goto :goto_4

    .line 27
    :cond_9
    invoke-interface {v2, v15}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    add-long/2addr v13, v4

    .line 28
    invoke-virtual {v8, v4, v5}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->request(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 29
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 30
    iput-object v11, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    .line 31
    invoke-virtual {v8}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e()V

    .line 33
    invoke-interface {v2, v3}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez v17, :cond_e

    .line 34
    iget-boolean v15, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->j:Z

    if-eqz v15, :cond_b

    .line 35
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e()V

    return-void

    .line 36
    :cond_b
    sget-object v15, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne v3, v15, :cond_c

    .line 37
    iget-object v15, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Throwable;

    if-eqz v15, :cond_c

    .line 38
    iput-object v11, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    .line 39
    invoke-virtual {v8}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e()V

    .line 41
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->a:Lorg/reactivestreams/d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 42
    :cond_c
    invoke-virtual {v8}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->isDone()Z

    move-result v15

    .line 43
    invoke-interface {v12}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v12

    if-eqz v15, :cond_e

    if-eqz v12, :cond_e

    .line 44
    iput-object v11, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    .line 45
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    move-object v8, v11

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    move/from16 v16, v5

    move-wide v13, v9

    const/4 v0, 0x0

    :cond_e
    :goto_6
    cmp-long v4, v13, v9

    if-eqz v4, :cond_f

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v9, v6, v4

    if-eqz v9, :cond_f

    .line 46
    iget-object v4, v1, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v13

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_f
    if-eqz v0, :cond_10

    move-object v0, v8

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_10
    move/from16 v4, v16

    neg-int v0, v4

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_11

    return-void

    :cond_11
    move-object v0, v8

    goto/16 :goto_0
.end method

.method public c(Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inner",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->setDone()V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b()V

    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->j:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i()V

    return-void
.end method

.method public d(Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inner",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;TR;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->queue()Lio/reactivex/rxjava3/internal/fuseable/q;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 4
    new-instance p2, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p2}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->c(Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->l:Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->h:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->cancel()V

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
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->e()V

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
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->k:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b()V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
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

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b:Lq7/o;

    invoke-interface {v0, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->d:I

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;-><init>(Lio/reactivex/rxjava3/internal/subscribers/g;I)V

    .line 3
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->j:Z

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->h:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 6
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->j:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 11
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->i:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->c:I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;->b()V

    :cond_0
    return-void
.end method
