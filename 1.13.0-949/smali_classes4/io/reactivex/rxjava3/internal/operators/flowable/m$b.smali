.class final Lio/reactivex/rxjava3/internal/operators/flowable/m$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableBuffer.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;
.implements Lq7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Lq7/e;"
    }
.end annotation


# static fields
.field private static final l:J = -0x66485ec0ba03436dL


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TC;>;"
        }
    .end annotation
.end field

.field final b:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TC;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field g:Lorg/reactivestreams/e;

.field h:Z

.field i:I

.field volatile j:Z

.field k:J


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;IILq7/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "size",
            "skip",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TC;>;II",
            "Lq7/s<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->a:Lorg/reactivestreams/d;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->c:I

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->d:I

    .line 5
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->b:Lq7/s;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->e:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->j:Z

    return v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->j:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->g:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->h:Z

    .line 3
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->a:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->e:Ljava/util/ArrayDeque;

    invoke-static {v0, v1, p0, p0}, Lio/reactivex/rxjava3/internal/util/o;->g(Lorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->h:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

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

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->e:Ljava/util/ArrayDeque;

    .line 3
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->i:I

    add-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_1

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->b:Lq7/s;

    invoke-interface {v1}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "The bufferSupplier returned a null buffer"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->cancel()V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->c:I

    if-ne v3, v4, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 12
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->k:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->k:J

    .line 14
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v3, v1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 16
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->d:I

    if-ne v2, p1, :cond_4

    const/4 v2, 0x0

    .line 18
    :cond_4
    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->i:I

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->g:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->g:Lorg/reactivestreams/e;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 7
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

    if-eqz v0, :cond_2

    .line 2
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->a:Lorg/reactivestreams/d;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->e:Ljava/util/ArrayDeque;

    move-wide v1, p1

    move-object v5, p0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/util/o;->i(JLorg/reactivestreams/d;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lq7/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->d:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 5
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->c(JJ)J

    move-result-wide p1

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->g:Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->d:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;->g:Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    :cond_2
    :goto_0
    return-void
.end method
