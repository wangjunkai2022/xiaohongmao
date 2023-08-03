.class public final Lio/reactivex/rxjava3/internal/util/o;
.super Ljava/lang/Object;
.source "QueueDrainHelper.java"


# static fields
.field static final a:J = -0x8000000000000000L

.field static final b:J = 0x7fffffffffffffffL


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(ZZLio/reactivex/rxjava3/core/n0;ZLio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/k;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "empty",
            "observer",
            "delayError",
            "q",
            "disposable",
            "qd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lio/reactivex/rxjava3/core/n0<",
            "*>;Z",
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "*>;",
            "Lio/reactivex/rxjava3/disposables/f;",
            "Lio/reactivex/rxjava3/internal/util/k<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p6}, Lio/reactivex/rxjava3/internal/util/k;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 3
    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return v1

    :cond_0
    if-eqz p0, :cond_7

    if-eqz p3, :cond_3

    if-eqz p1, :cond_7

    if-eqz p5, :cond_1

    .line 4
    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 5
    :cond_1
    invoke-interface {p6}, Lio/reactivex/rxjava3/internal/util/k;->f()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p2, p0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p2}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    :goto_0
    return v1

    .line 8
    :cond_3
    invoke-interface {p6}, Lio/reactivex/rxjava3/internal/util/k;->f()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 9
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    if-eqz p5, :cond_4

    .line 10
    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 11
    :cond_4
    invoke-interface {p2, p0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_5
    if-eqz p1, :cond_7

    if-eqz p5, :cond_6

    .line 12
    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 13
    :cond_6
    invoke-interface {p2}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static b(ZZLorg/reactivestreams/d;ZLio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/internal/util/n;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "empty",
            "s",
            "delayError",
            "q",
            "qd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lorg/reactivestreams/d<",
            "*>;Z",
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "*>;",
            "Lio/reactivex/rxjava3/internal/util/n<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lio/reactivex/rxjava3/internal/util/n;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    return v1

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p5}, Lio/reactivex/rxjava3/internal/util/n;->f()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p2, p0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p2}, Lorg/reactivestreams/d;->onComplete()V

    :goto_0
    return v1

    .line 6
    :cond_2
    invoke-interface {p5}, Lio/reactivex/rxjava3/internal/util/n;->f()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 7
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 8
    invoke-interface {p2, p0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p2}, Lorg/reactivestreams/d;->onComplete()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static c(I)Lio/reactivex/rxjava3/internal/fuseable/q;
    .locals 1
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
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;"
        }
    .end annotation

    if-gez p0, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/b;

    neg-int p0, p0

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method

.method public static d(Lio/reactivex/rxjava3/internal/fuseable/p;Lio/reactivex/rxjava3/core/n0;ZLio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/k;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "q",
            "a",
            "delayError",
            "dispose",
            "qd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;Z",
            "Lio/reactivex/rxjava3/disposables/f;",
            "Lio/reactivex/rxjava3/internal/util/k<",
            "TT;TU;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :cond_0
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/k;->c()Z

    move-result v2

    invoke-interface {p0}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v3

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lio/reactivex/rxjava3/internal/util/o;->a(ZZLio/reactivex/rxjava3/core/n0;ZLio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/k;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/k;->c()Z

    move-result v3

    .line 3
    invoke-interface {p0}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_1
    move v4, v10

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    move-object v8, p3

    move-object v9, p4

    .line 4
    invoke-static/range {v3 .. v9}, Lio/reactivex/rxjava3/internal/util/o;->a(ZZLio/reactivex/rxjava3/core/n0;ZLio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/k;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_4

    neg-int v1, v1

    .line 5
    invoke-interface {p4, v1}, Lio/reactivex/rxjava3/internal/util/k;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_4
    invoke-interface {p4, p1, v2}, Lio/reactivex/rxjava3/internal/util/k;->e(Lio/reactivex/rxjava3/core/n0;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(Lio/reactivex/rxjava3/internal/fuseable/p;Lorg/reactivestreams/d;ZLio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/n;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "q",
            "a",
            "delayError",
            "dispose",
            "qd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;",
            "Lorg/reactivestreams/d<",
            "-TU;>;Z",
            "Lio/reactivex/rxjava3/disposables/f;",
            "Lio/reactivex/rxjava3/internal/util/n<",
            "TT;TU;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/n;->c()Z

    move-result v2

    .line 2
    invoke-interface {p0}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_1
    move v3, v9

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move-object v7, p4

    .line 3
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxjava3/internal/util/o;->b(ZZLorg/reactivestreams/d;ZLio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/internal/util/n;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    .line 4
    invoke-interface {p3}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_2
    return-void

    :cond_3
    if-eqz v9, :cond_4

    neg-int v1, v1

    .line 5
    invoke-interface {p4, v1}, Lio/reactivex/rxjava3/internal/util/n;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_4
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/n;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    .line 7
    invoke-interface {p4, p1, v8}, Lio/reactivex/rxjava3/internal/util/n;->g(Lorg/reactivestreams/d;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/16 v2, 0x1

    .line 8
    invoke-interface {p4, v2, v3}, Lio/reactivex/rxjava3/internal/util/n;->i(J)J

    goto :goto_0

    .line 9
    :cond_5
    invoke-interface {p0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    if-eqz p3, :cond_6

    .line 10
    invoke-interface {p3}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 11
    :cond_6
    new-instance p0, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit value due to lack of requests."

    invoke-direct {p0, p2}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static f(Lq7/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancelled"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lq7/e;->a()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static g(Lorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "queue",
            "state",
            "isCancelled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lq7/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/util/o;->h(JLorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    return-void

    :cond_2
    or-long v9, v0, v2

    move-object/from16 v2, p2

    .line 5
    invoke-virtual {v2, v0, v1, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 6
    invoke-static/range {v9 .. v14}, Lio/reactivex/rxjava3/internal/util/o;->h(JLorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)Z

    :cond_3
    return-void
.end method

.method static h(JLorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "actual",
            "queue",
            "state",
            "isCancelled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lq7/e;",
            ")Z"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    cmp-long v5, v2, p0

    if-eqz v5, :cond_3

    .line 1
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/util/o;->f(Lq7/e;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    .line 2
    :cond_1
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3
    invoke-interface {p2}, Lorg/reactivestreams/d;->onComplete()V

    return v4

    .line 4
    :cond_2
    invoke-interface {p2, v5}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/util/o;->f(Lq7/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v4

    .line 6
    :cond_4
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 7
    invoke-interface {p2}, Lorg/reactivestreams/d;->onComplete()V

    return v4

    .line 8
    :cond_5
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    cmp-long v4, p0, v2

    if-nez v4, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    and-long/2addr v2, p0

    neg-long v2, v2

    .line 9
    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    and-long/2addr p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, p0, v4

    if-nez v6, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    and-long p0, v2, v0

    move-wide v7, p0

    move-wide p0, v2

    move-wide v2, v7

    goto :goto_0
.end method

.method public static i(JLorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "actual",
            "queue",
            "state",
            "isCancelled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lq7/e;",
            ")Z"
        }
    .end annotation

    move-wide v0, p0

    .line 1
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v2

    const-wide/high16 v6, -0x8000000000000000L

    and-long v8, v2, v6

    .line 2
    invoke-static {v4, v5, p0, p1}, Lio/reactivex/rxjava3/internal/util/b;->c(JJ)J

    move-result-wide v4

    or-long/2addr v4, v8

    move-object/from16 v12, p4

    .line 3
    invoke-virtual {v12, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    or-long v8, v0, v6

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 4
    invoke-static/range {v8 .. v13}, Lio/reactivex/rxjava3/internal/util/o;->h(JLorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static j(Lorg/reactivestreams/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "prefetch"
        }
    .end annotation

    if-gez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    :goto_0
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void
.end method
