.class final Lio/reactivex/rxjava3/internal/operators/parallel/j$d;
.super Lio/reactivex/rxjava3/internal/operators/parallel/j$c;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/parallel/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/parallel/j$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final h:J = -0x4fa158f1d44428dbL


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "n",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;-><init>(Lorg/reactivestreams/d;II)V

    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$d;->i()V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$d;->c()V

    return-void
.end method

.method e(Ljava/lang/Throwable;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$d;->c()V

    :cond_0
    return-void
.end method

.method h(Lio/reactivex/rxjava3/internal/operators/parallel/j$a;Ljava/lang/Object;)V
    .locals 6
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
            "Lio/reactivex/rxjava3/internal/operators/parallel/j$a<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Queue full?!"

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p2}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_0
    const-wide/16 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->c(J)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->b()Lio/reactivex/rxjava3/internal/fuseable/p;

    move-result-object v0

    .line 8
    invoke-interface {v0, p2}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->a()Z

    .line 10
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    new-instance p2, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p2, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 12
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$d;->i()V

    return-void

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 14
    :cond_3
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->b()Lio/reactivex/rxjava3/internal/fuseable/p;

    move-result-object v0

    .line 15
    invoke-interface {v0, p2}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 16
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->a()Z

    .line 17
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    new-instance p2, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p2, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 18
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 20
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$d;->i()V

    return-void
.end method

.method i()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->b:[Lio/reactivex/rxjava3/internal/operators/parallel/j$a;

    .line 2
    array-length v2, v1

    .line 3
    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->a:Lorg/reactivestreams/d;

    const/4 v5, 0x1

    .line 4
    :cond_0
    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :cond_1
    cmp-long v13, v10, v6

    if-eqz v13, :cond_8

    .line 5
    iget-boolean v13, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->e:Z

    if-eqz v13, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->b()V

    return-void

    .line 7
    :cond_2
    iget-object v13, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_1
    if-ge v14, v2, :cond_6

    .line 8
    aget-object v4, v1, v14

    .line 9
    iget-object v12, v4, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz v12, :cond_5

    .line 10
    invoke-interface {v12}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 11
    invoke-interface {v3, v12}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v4}, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->d()V

    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    cmp-long v4, v10, v6

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    if-eqz v13, :cond_7

    if-eqz v15, :cond_7

    .line 13
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_7
    if-eqz v15, :cond_1

    :cond_8
    :goto_2
    cmp-long v4, v10, v6

    if-nez v4, :cond_d

    .line 14
    iget-boolean v4, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->e:Z

    if-eqz v4, :cond_9

    .line 15
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->b()V

    return-void

    .line 16
    :cond_9
    iget-object v4, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_c

    .line 17
    aget-object v7, v1, v6

    .line 18
    iget-object v7, v7, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz v7, :cond_b

    .line 19
    invoke-interface {v7}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v12, 0x1

    :goto_5
    if-eqz v4, :cond_d

    if-eqz v12, :cond_d

    .line 20
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_d
    cmp-long v4, v10, v8

    if-eqz v4, :cond_e

    .line 21
    iget-object v4, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v10, v11}, Lio/reactivex/rxjava3/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_e
    neg-int v4, v5

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void
.end method
