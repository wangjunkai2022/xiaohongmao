.class final Lio/reactivex/internal/operators/flowable/s4$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableWindow.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/reactivestreams/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/s4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final q:J = 0x21b3dc811227de88L


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/b<",
            "Lio/reactivex/processors/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:J

.field final d:J

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/processors/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field final j:I

.field k:J

.field l:J

.field m:Lorg/reactivestreams/e;

.field volatile n:Z

.field o:Ljava/lang/Throwable;

.field volatile p:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->a:Lorg/reactivestreams/d;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/s4$b;->c:J

    .line 4
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->d:J

    .line 5
    new-instance p1, Lio/reactivex/internal/queue/b;

    invoke-direct {p1, p6}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->b:Lio/reactivex/internal/queue/b;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    iput p6, p0, Lio/reactivex/internal/operators/flowable/s4$b;->j:I

    return-void
.end method


# virtual methods
.method a(ZZLorg/reactivestreams/d;Lio/reactivex/internal/queue/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/d<",
            "*>;",
            "Lio/reactivex/internal/queue/b<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Lio/reactivex/internal/queue/b;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->o:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p4}, Lio/reactivex/internal/queue/b;->clear()V

    .line 5
    invoke-interface {p3, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p3}, Lorg/reactivestreams/d;->onComplete()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->a:Lorg/reactivestreams/d;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->b:Lio/reactivex/internal/queue/b;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    .line 5
    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/s4$b;->n:Z

    .line 6
    invoke-virtual {v1}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/reactivex/processors/h;

    if-nez v12, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0, v11, v13, v0, v1}, Lio/reactivex/internal/operators/flowable/s4$b;->a(ZZLorg/reactivestreams/d;Lio/reactivex/internal/queue/b;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-interface {v0, v12}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    .line 9
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/s4$b;->n:Z

    invoke-virtual {v1}, Lio/reactivex/internal/queue/b;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v1}, Lio/reactivex/internal/operators/flowable/s4$b;->a(ZZLorg/reactivestreams/d;Lio/reactivex/internal/queue/b;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v10, v8, v6

    if-eqz v10, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_7

    .line 10
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 11
    :cond_7
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->p:Z

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/s4$b;->run()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/b;

    .line 3
    invoke-interface {v1}, Lorg/reactivestreams/d;->onComplete()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->n:Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/s4$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->n:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/b;

    .line 4
    invoke-interface {v1, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->o:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->n:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/s4$b;->b()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->p:Z

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 5
    iget v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->j:I

    invoke-static {v4, p0}, Lio/reactivex/processors/h;->U8(ILjava/lang/Runnable;)Lio/reactivex/processors/h;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 7
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/s4$b;->b:Lio/reactivex/internal/queue/b;

    invoke-virtual {v5, v4}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/s4$b;->b()V

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 9
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/reactivestreams/b;

    .line 10
    invoke-interface {v7, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/s4$b;->l:J

    add-long/2addr v6, v4

    .line 12
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->c:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_3

    .line 13
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->d:J

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/s4$b;->l:J

    .line 14
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/b;

    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1}, Lorg/reactivestreams/d;->onComplete()V

    goto :goto_1

    .line 16
    :cond_3
    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/s4$b;->l:J

    .line 17
    :cond_4
    :goto_1
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/s4$b;->d:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_5

    .line 18
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/s4$b;->k:J

    goto :goto_2

    .line 19
    :cond_5
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->k:J

    :goto_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->m:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->m:Lorg/reactivestreams/e;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/s4$b;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 5
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/b;->c(JJ)J

    move-result-wide p1

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->m:Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->d:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->m:Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/s4$b;->b()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s4$b;->m:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    :cond_0
    return-void
.end method
