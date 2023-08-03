.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableGroupBy.java"

# interfaces
.implements Lorg/reactivestreams/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lorg/reactivestreams/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final n:J = -0x35762a4bbab31538L


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile g:Z

.field h:Ljava/lang/Throwable;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/d<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field l:Z

.field m:I


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Lio/reactivex/internal/queue/b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    .line 7
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    .line 8
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b:Ljava/lang/Object;

    .line 9
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->e:Z

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->l:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->k()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->l()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m()V

    return-void
.end method

.method public i(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method j(ZZLorg/reactivestreams/d;ZJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/d<",
            "-TT;>;ZJ)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    invoke-virtual {p1}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1

    add-long/2addr p5, p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p3, p5, p1

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object p1, p1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->j:Lorg/reactivestreams/e;

    invoke-interface {p1, p5, p6}, Lorg/reactivestreams/e;->request(J)V

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_6

    if-eqz p4, :cond_4

    if-eqz p2, :cond_6

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->h:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p3, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_3
    invoke-interface {p3}, Lorg/reactivestreams/d;->onComplete()V

    :goto_1
    return v1

    .line 7
    :cond_4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->h:Ljava/lang/Throwable;

    if-eqz p1, :cond_5

    .line 8
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    invoke-virtual {p2}, Lio/reactivex/internal/queue/b;->clear()V

    .line 9
    invoke-interface {p3, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_5
    if-eqz p2, :cond_6

    .line 10
    invoke-interface {p3}, Lorg/reactivestreams/d;->onComplete()V

    return v1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/d;

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 3
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->g:Z

    if-eqz v3, :cond_2

    .line 5
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->e:Z

    if-nez v4, :cond_2

    .line 6
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->h:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->clear()V

    .line 8
    invoke-interface {v1, v4}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const/4 v4, 0x0

    .line 9
    invoke-interface {v1, v4}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v1}, Lorg/reactivestreams/d;->onComplete()V

    :goto_1
    return-void

    :cond_4
    neg-int v2, v2

    .line 13
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/d;

    goto :goto_0
.end method

.method l()V
    .locals 21

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    .line 2
    iget-boolean v9, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->e:Z

    .line 3
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/d;

    move-object v11, v0

    const/4 v12, 0x1

    :cond_0
    :goto_0
    if-eqz v11, :cond_8

    .line 4
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    move-wide v5, v15

    :goto_1
    cmp-long v17, v5, v13

    if-eqz v17, :cond_4

    .line 5
    iget-boolean v1, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->g:Z

    .line 6
    invoke-virtual {v8}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/16 v18, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v2, v18

    move-object v3, v11

    move-object v10, v4

    move v4, v9

    move-wide/from16 v19, v5

    .line 7
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j(ZZLorg/reactivestreams/d;ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz v18, :cond_3

    move-wide/from16 v5, v19

    goto :goto_3

    .line 8
    :cond_3
    invoke-interface {v11, v10}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    move-wide/from16 v5, v19

    add-long/2addr v5, v0

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v17, :cond_6

    .line 9
    iget-boolean v1, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->g:Z

    invoke-virtual {v8}, Lio/reactivex/internal/queue/b;->isEmpty()Z

    move-result v2

    move-object/from16 v0, p0

    move-object v3, v11

    move v4, v9

    move-wide/from16 v19, v5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j(ZZLorg/reactivestreams/d;ZJ)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    move-wide/from16 v5, v19

    :cond_6
    cmp-long v0, v5, v15

    if-eqz v0, :cond_8

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v13, v0

    if-eqz v2, :cond_7

    .line 10
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 11
    :cond_7
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->j:Lorg/reactivestreams/e;

    invoke-interface {v0, v5, v6}, Lorg/reactivestreams/e;->request(J)V

    :cond_8
    neg-int v0, v12

    .line 12
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v12

    if-nez v12, :cond_9

    return-void

    :cond_9
    if-nez v11, :cond_0

    .line 13
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/reactivestreams/d;

    goto :goto_0
.end method

.method m()V
    .locals 4

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m:I

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->j:Lorg/reactivestreams/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->g:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->g:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b()V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->c:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m:I

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->m()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->b()V

    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;->l:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
