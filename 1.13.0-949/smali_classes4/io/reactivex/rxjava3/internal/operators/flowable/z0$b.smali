.class final Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final r:J = -0x1d634c9cafb5cc5aL

.field static final s:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/flowable/z0$a<",
            "**>;"
        }
    .end annotation
.end field

.field static final t:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/flowable/z0$a<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I

.field volatile f:Lio/reactivex/rxjava3/internal/fuseable/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field final h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/rxjava3/internal/operators/flowable/z0$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicLong;

.field l:Lorg/reactivestreams/e;

.field m:J

.field n:J

.field o:I

.field p:I

.field final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    .line 1
    sput-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->s:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    new-array v0, v0, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    .line 2
    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->t:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;ZII)V
    .locals 2
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
            "delayErrors",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a:Lorg/reactivestreams/d;

    .line 6
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b:Lq7/o;

    .line 7
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->c:Z

    .line 8
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->d:I

    .line 9
    iput p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e:I

    const/4 p1, 0x1

    shr-int/lit8 p2, p4, 0x1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->q:I

    .line 11
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->s:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;)Z
    .locals 4
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
            "Lio/reactivex/rxjava3/internal/operators/flowable/z0$a<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->t:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->dispose()V

    return v2

    .line 4
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 5
    new-array v3, v3, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    .line 6
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aput-object p1, v3, v1

    .line 8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->c()V

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->c()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a:Lorg/reactivestreams/d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->d()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->t:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    if-eq v0, v1, :cond_1

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i()V

    :cond_0
    return-void
.end method

.method i()V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a:Lorg/reactivestreams/d;

    const/4 v4, 0x1

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 4
    iget-object v5, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v10, v5, v7

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_7

    move-wide v7, v13

    move-wide v15, v7

    :goto_2
    cmp-long v17, v5, v13

    if-eqz v17, :cond_5

    .line 5
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 6
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b()Z

    move-result v18

    if-eqz v18, :cond_3

    return-void

    :cond_3
    if-nez v9, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    invoke-interface {v2, v9}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    add-long/2addr v15, v11

    add-long/2addr v7, v11

    sub-long/2addr v5, v11

    goto :goto_2

    :cond_5
    :goto_3
    cmp-long v0, v7, v13

    if-eqz v0, :cond_8

    if-eqz v10, :cond_6

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_4

    .line 8
    :cond_6
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    goto :goto_4

    :cond_7
    move-wide v15, v13

    .line 9
    :cond_8
    :goto_4
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->g:Z

    .line 10
    iget-object v7, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 11
    iget-object v8, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    .line 12
    array-length v9, v8

    if-eqz v0, :cond_a

    if-eqz v7, :cond_9

    .line 13
    invoke-interface {v7}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    if-nez v9, :cond_a

    .line 14
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a:Lorg/reactivestreams/d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_a
    move/from16 v18, v4

    if-eqz v9, :cond_22

    .line 15
    iget-wide v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->n:J

    .line 16
    iget v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->o:I

    if-le v9, v0, :cond_b

    .line 17
    aget-object v7, v8, v0

    iget-wide v11, v7, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->a:J

    cmp-long v7, v11, v3

    if-eqz v7, :cond_10

    :cond_b
    if-gt v9, v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v9, :cond_f

    .line 18
    aget-object v11, v8, v0

    iget-wide v11, v11, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->a:J

    cmp-long v21, v11, v3

    if-nez v21, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_e

    const/4 v0, 0x0

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 19
    :cond_f
    :goto_6
    iput v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->o:I

    .line 20
    aget-object v3, v8, v0

    iget-wide v3, v3, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->a:J

    iput-wide v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->n:J

    :cond_10
    move v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v9, :cond_21

    .line 21
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b()Z

    move-result v7

    if-eqz v7, :cond_11

    return-void

    .line 22
    :cond_11
    aget-object v7, v8, v3

    const/4 v11, 0x0

    .line 23
    :goto_8
    iget-object v12, v7, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->f:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-nez v12, :cond_12

    move-object/from16 v21, v8

    move/from16 v22, v9

    goto/16 :goto_d

    :cond_12
    move-object/from16 v21, v8

    move/from16 v22, v9

    move-wide v8, v13

    :goto_9
    cmp-long v23, v5, v13

    if-eqz v23, :cond_17

    .line 24
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b()Z

    move-result v11

    if-eqz v11, :cond_13

    return-void

    .line 25
    :cond_13
    :try_start_0
    invoke-interface {v12}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_14

    goto :goto_a

    .line 26
    :cond_14
    invoke-interface {v2, v11}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v19, 0x1

    sub-long v5, v5, v19

    add-long v8, v8, v19

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 27
    invoke-static {v8}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual {v7}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->dispose()V

    .line 29
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 30
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->c:Z

    if-nez v0, :cond_15

    .line 31
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 32
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 33
    :cond_16
    invoke-virtual {v1, v7}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l(Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v22

    const/4 v0, 0x1

    const-wide/16 v7, 0x1

    goto :goto_f

    :cond_17
    :goto_a
    cmp-long v12, v8, v13

    if-eqz v12, :cond_19

    if-nez v10, :cond_18

    .line 34
    iget-object v5, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v13, v8

    invoke-virtual {v5, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    goto :goto_b

    :cond_18
    const-wide v5, 0x7fffffffffffffffL

    .line 35
    :goto_b
    invoke-virtual {v7, v8, v9}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->a(J)V

    const-wide/16 v8, 0x0

    goto :goto_c

    :cond_19
    move-wide v8, v13

    :goto_c
    cmp-long v12, v5, v8

    if-eqz v12, :cond_1b

    if-nez v11, :cond_1a

    goto :goto_d

    :cond_1a
    move-object/from16 v8, v21

    move/from16 v9, v22

    const-wide/16 v13, 0x0

    goto :goto_8

    .line 36
    :cond_1b
    :goto_d
    iget-boolean v8, v7, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->e:Z

    .line 37
    iget-object v9, v7, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->f:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-eqz v8, :cond_1e

    if-eqz v9, :cond_1c

    .line 38
    invoke-interface {v9}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 39
    :cond_1c
    invoke-virtual {v1, v7}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l(Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    const-wide/16 v7, 0x1

    add-long/2addr v15, v7

    const/4 v0, 0x1

    goto :goto_e

    :cond_1e
    const-wide/16 v7, 0x1

    :goto_e
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-nez v9, :cond_1f

    move v9, v0

    const/4 v11, 0x1

    goto :goto_10

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    move/from16 v9, v22

    if-ne v3, v9, :cond_20

    const/4 v3, 0x0

    :cond_20
    :goto_f
    const/4 v11, 0x1

    add-int/2addr v4, v11

    move-object/from16 v8, v21

    const-wide/16 v13, 0x0

    goto/16 :goto_7

    :cond_21
    move-object/from16 v21, v8

    const/4 v11, 0x1

    move v9, v0

    .line 41
    :goto_10
    iput v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->o:I

    .line 42
    aget-object v0, v21, v3

    iget-wide v3, v0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->a:J

    iput-wide v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->n:J

    move-wide v3, v15

    const-wide/16 v5, 0x0

    goto :goto_11

    :cond_22
    const/4 v11, 0x1

    move-wide v5, v13

    move-wide v3, v15

    const/4 v9, 0x0

    :goto_11
    cmp-long v0, v3, v5

    if-eqz v0, :cond_23

    .line 43
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i:Z

    if-nez v0, :cond_23

    .line 44
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    invoke-interface {v0, v3, v4}, Lorg/reactivestreams/e;->request(J)V

    :cond_23
    if-eqz v9, :cond_24

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_24
    move/from16 v3, v18

    neg-int v0, v3

    .line 45
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method j()Lio/reactivex/rxjava3/internal/fuseable/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TU;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/b;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->d:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 5
    :goto_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    :cond_1
    return-object v0
.end method

.method k(Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inner",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/z0$a<",
            "TT;TU;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->e:Z

    .line 3
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->c:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->t:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 6
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e()V

    :cond_1
    return-void
.end method

.method l(Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;)V
    .locals 6
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
            "Lio/reactivex/rxjava3/internal/operators/flowable/z0$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 4
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->s:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    .line 6
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method m(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/rxjava3/internal/operators/flowable/z0$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Inner queue full?!"

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 3
    iget-object v0, p2, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->f:Lio/reactivex/rxjava3/internal/fuseable/q;

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    const-wide/16 v0, 0x1

    .line 7
    invoke-virtual {p2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->a(J)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e:I

    invoke-direct {v0, v2}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 9
    iput-object v0, p2, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->f:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 10
    :cond_3
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    new-instance p1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p1, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->onError(Ljava/lang/Throwable;)V

    .line 12
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 13
    :cond_5
    iget-object v0, p2, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->f:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-nez v0, :cond_6

    .line 14
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e:I

    invoke-direct {v0, v2}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 15
    iput-object v0, p2, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->f:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 16
    :cond_6
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 17
    new-instance p1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p1, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 18
    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 19
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i()V

    return-void
.end method

.method n(Ljava/lang/Object;)V
    .locals 9
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
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Scalar queue full?!"

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 3
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_2

    if-eqz v5, :cond_0

    .line 4
    invoke-interface {v5}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v1, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 7
    :cond_1
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->d:I

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_4

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i:Z

    if-nez p1, :cond_4

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->p:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->p:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->q:I

    if-ne p1, v1, :cond_4

    .line 8
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->p:I

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 10
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j()Lio/reactivex/rxjava3/internal/fuseable/q;

    move-result-object v5

    .line 11
    :cond_3
    invoke-interface {v5, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    new-instance p1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p1, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->onError(Ljava/lang/Throwable;)V

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j()Lio/reactivex/rxjava3/internal/fuseable/q;

    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    new-instance p1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p1, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 18
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->g:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->g:Z

    .line 5
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->c:Z

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->t:[Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 7
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e()V

    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->b:Lq7/o;

    invoke-interface {v0, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    instance-of v0, p1, Lq7/s;

    if-eqz v0, :cond_2

    .line 4
    :try_start_1
    check-cast p1, Lq7/s;

    invoke-interface {p1}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->n(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->d:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i:Z

    if-nez p1, :cond_3

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->p:I

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->q:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->p:I

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e()V

    return-void

    .line 12
    :cond_2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e:I

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->m:J

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;IJ)V

    .line 13
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a(Lio/reactivex/rxjava3/internal/operators/flowable/z0$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    :cond_3
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 15
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 17
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->l:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->i:Z

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 6
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 7
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_1
    :goto_0
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z0$b;->e()V

    :cond_0
    return-void
.end method
