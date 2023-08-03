.class final Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableMergeWithMaybe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final o:J = -0x3fbd8a98db8e76f7L

.field static final p:I = 0x1

.field static final q:I = 0x2


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:I

.field final g:I

.field volatile h:Lio/reactivex/rxjava3/internal/fuseable/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile j:Z

.field volatile k:Z

.field volatile l:I

.field m:J

.field n:I


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downstream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a:Lorg/reactivestreams/d;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->c:Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a;

    .line 5
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result p1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->f:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->g:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a:Lorg/reactivestreams/d;

    .line 2
    iget-wide v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->m:J

    .line 3
    iget v4, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->n:I

    .line 4
    iget v5, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->g:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 5
    :goto_0
    iget-object v8, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :goto_1
    const/4 v11, 0x2

    const/4 v12, 0x0

    cmp-long v13, v2, v8

    if-eqz v13, :cond_8

    .line 6
    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->j:Z

    if-eqz v14, :cond_0

    .line 7
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 8
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    return-void

    .line 9
    :cond_0
    iget-object v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 10
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 11
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 12
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a:Lorg/reactivestreams/d;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 13
    :cond_1
    iget v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->l:I

    const-wide/16 v15, 0x1

    if-ne v14, v6, :cond_2

    .line 14
    iget-object v10, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 15
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 16
    iput v11, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->l:I

    .line 17
    invoke-interface {v1, v10}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    add-long/2addr v2, v15

    goto :goto_1

    .line 18
    :cond_2
    iget-boolean v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->k:Z

    .line 19
    iget-object v10, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz v10, :cond_3

    .line 20
    invoke-interface {v10}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v12

    :goto_2
    if-nez v10, :cond_4

    const/16 v17, 0x1

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v17, :cond_5

    if-ne v14, v11, :cond_5

    .line 21
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 22
    invoke-interface {v1}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    :cond_5
    if-eqz v17, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    invoke-interface {v1, v10}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    add-long/2addr v2, v15

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_7

    .line 24
    iget-object v4, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/reactivestreams/e;

    int-to-long v10, v5

    invoke-interface {v4, v10, v11}, Lorg/reactivestreams/e;->request(J)V

    const/4 v4, 0x0

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    if-nez v13, :cond_d

    .line 25
    iget-boolean v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->j:Z

    if-eqz v6, :cond_9

    .line 26
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 27
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    return-void

    .line 28
    :cond_9
    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 29
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 30
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 31
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a:Lorg/reactivestreams/d;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 32
    :cond_a
    iget-boolean v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->k:Z

    .line 33
    iget-object v8, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz v8, :cond_c

    .line 34
    invoke-interface {v8}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-eqz v6, :cond_d

    if-eqz v10, :cond_d

    .line 35
    iget v6, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->l:I

    if-ne v6, v11, :cond_d

    .line 36
    iput-object v12, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 37
    invoke-interface {v1}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    .line 38
    :cond_d
    iput-wide v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->m:J

    .line 39
    iput v4, v0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->n:I

    neg-int v6, v7

    .line 40
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_e

    return-void

    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method c()Lio/reactivex/rxjava3/internal/fuseable/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 3
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    :cond_0
    return-object v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->j:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->c:Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->l:I

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a()V

    return-void
.end method

.method e(Ljava/lang/Throwable;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a()V

    :cond_0
    return-void
.end method

.method i(Ljava/lang/Object;)V
    .locals 6
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
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->m:J

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 4
    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->m:J

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->l:I

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 8
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->l:I

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 10
    :cond_1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->i:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->l:I

    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->c:Lio/reactivex/rxjava3/internal/operators/flowable/i2$a$a;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a()V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->m:J

    .line 3
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    .line 4
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v4}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v4, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 7
    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->m:J

    .line 8
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v2, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->n:I

    add-int/2addr p1, v1

    .line 10
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->g:I

    if-ne p1, v1, :cond_2

    .line 11
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->n:I

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/e;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_1

    .line 13
    :cond_2
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->n:I

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->c()Lio/reactivex/rxjava3/internal/fuseable/p;

    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 16
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 17
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->c()Lio/reactivex/rxjava3/internal/fuseable/p;

    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 20
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->f:I

    int-to-long v1, v1

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;J)Z

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/i2$a;->a()V

    return-void
.end method
