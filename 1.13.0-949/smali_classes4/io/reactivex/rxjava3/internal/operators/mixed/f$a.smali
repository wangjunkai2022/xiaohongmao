.class final Lio/reactivex/rxjava3/internal/operators/mixed/f$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMapSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/mixed/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;
    }
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
.field private static final p:J = -0x7ed83da4674d8da5L

.field static final q:I = 0x0

.field static final r:I = 0x1

.field static final s:I = 0x2


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
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final f:Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/rxjava3/internal/fuseable/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field i:Lorg/reactivestreams/e;

.field volatile j:Z

.field volatile k:Z

.field l:J

.field m:I

.field n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field volatile o:I


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "downstream",
            "mapper",
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
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;I",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->b:Lq7/o;

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->c:I

    .line 5
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->h:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 8
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/mixed/f$a;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->f:Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;

    .line 9
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    invoke-direct {p1, p3}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->g:Lio/reactivex/rxjava3/internal/fuseable/p;

    return-void
.end method


# virtual methods
.method a()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a:Lorg/reactivestreams/d;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->h:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->g:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 5
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 6
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->c:I

    shr-int/lit8 v6, v5, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 8
    :cond_1
    :goto_0
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->k:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 9
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 10
    iput-object v9, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->n:Ljava/lang/Object;

    goto/16 :goto_3

    .line 11
    :cond_2
    iget v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->o:I

    .line 12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 13
    sget-object v10, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq v1, v10, :cond_3

    sget-object v10, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne v1, v10, :cond_4

    if-nez v8, :cond_4

    .line 14
    :cond_3
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 15
    iput-object v9, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->n:Ljava/lang/Object;

    .line 16
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_4
    const/4 v10, 0x0

    if-nez v8, :cond_9

    .line 17
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->j:Z

    .line 18
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v8, :cond_6

    if-eqz v11, :cond_6

    .line 19
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_6
    if-eqz v11, :cond_7

    goto :goto_3

    .line 20
    :cond_7
    iget v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->m:I

    add-int/2addr v8, v6

    if-ne v8, v5, :cond_8

    .line 21
    iput v10, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->m:I

    .line 22
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->i:Lorg/reactivestreams/e;

    int-to-long v10, v5

    invoke-interface {v8, v10, v11}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_2

    .line 23
    :cond_8
    iput v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->m:I

    .line 24
    :goto_2
    :try_start_0
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->b:Lq7/o;

    invoke-interface {v8, v9}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "The mapper returned a null SingleSource"

    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Lio/reactivex/rxjava3/core/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iput v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->o:I

    .line 26
    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->f:Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;

    invoke-interface {v8, v9}, Lio/reactivex/rxjava3/core/v0;->d(Lio/reactivex/rxjava3/core/s0;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 27
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 28
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v4}, Lorg/reactivestreams/e;->cancel()V

    .line 29
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 30
    invoke-virtual {v3, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 31
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    :cond_9
    const/4 v11, 0x2

    if-ne v8, v11, :cond_a

    .line 32
    iget-wide v11, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->l:J

    .line 33
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-eqz v8, :cond_a

    .line 34
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->n:Ljava/lang/Object;

    .line 35
    iput-object v9, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->n:Ljava/lang/Object;

    .line 36
    invoke-interface {v0, v8}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v11, v8

    .line 37
    iput-wide v11, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->l:J

    .line 38
    iput v10, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->o:I

    goto/16 :goto_0

    :cond_a
    :goto_3
    neg-int v7, v7

    .line 39
    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->h:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->i:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->o:I

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a()V

    :cond_1
    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->o:I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a()V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->k:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->f:Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;->a()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->g:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->n:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->h:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->f:Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a$a;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->j:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a()V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->g:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->i:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const-string v0, "queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->i:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->i:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;->a()V

    return-void
.end method
