.class final Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableZip.java"

# interfaces
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/c5;
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
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final i:J = -0x21ca630c444d714fL


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:[Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/flowable/c5$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final f:Z

.field volatile g:Z

.field final h:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;IIZ)V
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
            "zipper",
            "n",
            "prefetch",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->c:Lq7/o;

    .line 4
    iput-boolean p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->f:Z

    .line 5
    new-array p1, p3, [Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 6
    new-instance p5, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;

    invoke-direct {p5, p0, p4}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;I)V

    aput-object p5, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->h:[Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->b:[Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->b:[Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a:Lorg/reactivestreams/d;

    .line 3
    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->b:[Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;

    .line 4
    array-length v4, v3

    .line 5
    iget-object v5, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->h:[Ljava/lang/Object;

    const/4 v7, 0x1

    .line 6
    :cond_1
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_0
    const/4 v14, 0x0

    cmp-long v16, v8, v12

    if-eqz v16, :cond_c

    .line 7
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->g:Z

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->f:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    .line 10
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_3
    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_1
    if-ge v6, v4, :cond_a

    .line 11
    aget-object v0, v3, v6

    .line 12
    aget-object v18, v5, v6

    if-nez v18, :cond_9

    .line 13
    iget-boolean v15, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;->f:Z

    .line 14
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-eqz v0, :cond_5

    .line 15
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v15, v0

    .line 16
    invoke-static {v15}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 17
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v15}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 18
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->f:Z

    if-nez v0, :cond_4

    .line 19
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    .line 20
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_4
    move-object v0, v14

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v14

    :goto_2
    if-nez v0, :cond_6

    const/16 v19, 0x1

    goto :goto_3

    :cond_6
    const/16 v19, 0x0

    :goto_3
    if-eqz v15, :cond_7

    if-eqz v19, :cond_7

    .line 21
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    .line 22
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_7
    if-nez v19, :cond_8

    .line 23
    aput-object v0, v5, v6

    goto :goto_4

    :cond_8
    const/16 v17, 0x1

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    if-eqz v17, :cond_b

    goto :goto_5

    .line 24
    :cond_b
    :try_start_1
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->c:Lq7/o;

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "The zipper returned a null value"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v15, 0x1

    add-long/2addr v12, v15

    .line 26
    invoke-static {v5, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 27
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    .line 29
    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 30
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_c
    :goto_5
    if-nez v16, :cond_14

    .line 31
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->g:Z

    if-eqz v0, :cond_d

    return-void

    .line 32
    :cond_d
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->f:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 33
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    .line 34
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_e
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_14

    .line 35
    aget-object v0, v3, v6

    .line 36
    aget-object v15, v5, v6

    if-nez v15, :cond_13

    .line 37
    iget-boolean v15, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;->f:Z

    .line 38
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-eqz v0, :cond_10

    .line 39
    :try_start_2
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v15, v0

    .line 40
    invoke-static {v15}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 41
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v15}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 42
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->f:Z

    if-nez v0, :cond_f

    .line 43
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    .line 44
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_f
    move-object v0, v14

    const/4 v15, 0x1

    goto :goto_7

    :cond_10
    move-object v0, v14

    :goto_7
    if-nez v0, :cond_11

    const/16 v16, 0x1

    goto :goto_8

    :cond_11
    const/16 v16, 0x0

    :goto_8
    if-eqz v15, :cond_12

    if-eqz v16, :cond_12

    .line 45
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    .line 46
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_12
    if-nez v16, :cond_13

    .line 47
    aput-object v0, v5, v6

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_14
    cmp-long v0, v12, v10

    if-eqz v0, :cond_16

    .line 48
    array-length v0, v3

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v0, :cond_15

    aget-object v6, v3, v15

    .line 49
    invoke-virtual {v6, v12, v13}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;->request(J)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_15
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_16

    .line 50
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v12

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_16
    neg-int v0, v7

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method c(Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;Ljava/lang/Throwable;)V
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
            "Lio/reactivex/rxjava3/internal/operators/flowable/c5$b<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;->f:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->b()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->g:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->a()V

    :cond_0
    return-void
.end method

.method d([Lorg/reactivestreams/c;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/c<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->b:[Lio/reactivex/rxjava3/internal/operators/flowable/c5$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 2
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->g:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->f:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c5$a;->b()V

    :cond_0
    return-void
.end method
