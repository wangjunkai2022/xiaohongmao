.class final Lio/reactivex/rxjava3/internal/jdk8/f$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMapStream.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/jdk8/f;
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
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final o:J = -0x4726e10af4c777c0L


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
            "Ljava/util/stream/Stream<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Lio/reactivex/rxjava3/internal/fuseable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Lorg/reactivestreams/e;

.field g:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field h:Ljava/lang/AutoCloseable;

.field volatile i:Z

.field volatile j:Z

.field final k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field l:J

.field m:I

.field n:I


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
            "downstream",
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
            "Ljava/util/stream/Stream<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->b:Lq7/o;

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->g:Ljava/util/Iterator;

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->h:Ljava/lang/AutoCloseable;

    .line 3
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->h:Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method c()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->a:Lorg/reactivestreams/d;

    .line 3
    iget-object v3, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 4
    iget-object v4, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 5
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->g:Ljava/util/Iterator;

    .line 6
    iget-object v5, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 7
    iget-wide v7, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->l:J

    .line 8
    iget v9, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c:I

    shr-int/lit8 v10, v9, 0x2

    sub-int/2addr v9, v10

    .line 9
    iget v10, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->n:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v10, v12, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    move-wide v13, v7

    const/4 v8, 0x1

    move-wide v6, v5

    move-object v5, v0

    .line 10
    :goto_1
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->i:Z

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v3}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->b()V

    goto/16 :goto_7

    .line 13
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->j:Z

    .line 14
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 15
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 16
    iput-boolean v12, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->i:Z

    goto/16 :goto_6

    :cond_3
    if-nez v5, :cond_8

    .line 17
    :try_start_0
    invoke-interface {v3}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v15, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v16, :cond_5

    .line 18
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    .line 19
    iput-boolean v12, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->i:Z

    goto :goto_4

    :cond_5
    if-nez v16, :cond_8

    if-eqz v10, :cond_6

    .line 20
    iget v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->m:I

    add-int/2addr v0, v12

    iput v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->m:I

    if-ne v0, v9, :cond_6

    .line 21
    iput v11, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->m:I

    .line 22
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->f:Lorg/reactivestreams/e;

    int-to-long v11, v9

    invoke-interface {v0, v11, v12}, Lorg/reactivestreams/e;->request(J)V

    .line 23
    :cond_6
    :try_start_1
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->b:Lq7/o;

    invoke-interface {v0, v15}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v11, "The mapper returned a null Stream"

    invoke-static {v0, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Stream;

    .line 24
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 26
    iput-object v5, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->g:Ljava/util/Iterator;

    .line 27
    iput-object v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->h:Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_7
    :goto_3
    const/4 v5, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 28
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 29
    invoke-virtual {v1, v2, v0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d(Lorg/reactivestreams/d;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v11, v0

    .line 30
    invoke-static {v11}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 31
    invoke-virtual {v1, v2, v11}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d(Lorg/reactivestreams/d;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v5, :cond_a

    cmp-long v0, v13, v6

    if-eqz v0, :cond_a

    .line 32
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v11, "The Stream.Iterator returned a null value"

    invoke-static {v0, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 33
    iget-boolean v11, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->i:Z

    if-nez v11, :cond_9

    .line 34
    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    .line 35
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->i:Z

    if-nez v0, :cond_9

    .line 36
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v0, :cond_9

    .line 37
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 38
    :goto_5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 39
    invoke-virtual {v1, v2, v0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d(Lorg/reactivestreams/d;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_4
    move-exception v0

    .line 40
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 41
    invoke-virtual {v1, v2, v0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d(Lorg/reactivestreams/d;Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 42
    :cond_a
    :goto_7
    iput-wide v13, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->l:J

    neg-int v0, v8

    .line 43
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v8

    if-nez v8, :cond_b

    return-void

    .line 44
    :cond_b
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    goto :goto_6
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->i:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->f:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c()V

    return-void
.end method

.method d(Lorg/reactivestreams/d;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downstream",
            "ex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->f:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->i:Z

    .line 4
    invoke-interface {p1, p2}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->j:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
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
    iget v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->n:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->f:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 3
    .param p1    # Lorg/reactivestreams/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->f:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->f:Lorg/reactivestreams/e;

    .line 3
    instance-of v0, p1, Lio/reactivex/rxjava3/internal/fuseable/n;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/n;

    const/4 v1, 0x7

    .line 5
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/internal/fuseable/m;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->n:I

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 8
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->j:Z

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 10
    iput v1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->n:I

    .line 11
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 13
    iget v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 15
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 16
    iget v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_2
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/f$a;->c()V

    :cond_0
    return-void
.end method
