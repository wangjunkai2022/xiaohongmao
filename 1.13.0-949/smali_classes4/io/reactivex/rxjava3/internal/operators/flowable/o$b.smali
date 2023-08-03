.class final Lio/reactivex/rxjava3/internal/operators/flowable/o$b;
.super Lio/reactivex/rxjava3/internal/subscribers/h;
.source "FlowableBufferExactBoundary.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/subscribers/h<",
        "TT;TU;TU;>;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# instance fields
.field T1:Lorg/reactivestreams/e;

.field V1:Lio/reactivex/rxjava3/disposables/f;

.field b2:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final x1:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TU;>;"
        }
    .end annotation
.end field

.field final y1:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/s;Lorg/reactivestreams/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "bufferSupplier",
            "boundary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TU;>;",
            "Lq7/s<",
            "TU;>;",
            "Lorg/reactivestreams/c<",
            "TB;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/subscribers/h;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/fuseable/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->x1:Lq7/s;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->y1:Lorg/reactivestreams/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->b1:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->b1:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->V1:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->T1:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->W:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->cancel()V

    return-void
.end method

.method public bridge synthetic g(Lorg/reactivestreams/d;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->n(Lorg/reactivestreams/d;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->b1:Z

    return v0
.end method

.method public n(Lorg/reactivestreams/d;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TU;>;TU;)Z"
        }
    .end annotation

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    invoke-interface {p1, p2}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method o()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->x1:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->b2:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->b2:Ljava/util/Collection;

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/rxjava3/internal/subscribers/h;->k(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/f;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 9
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->cancel()V

    .line 11
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    invoke-interface {v1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->b2:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->b2:Ljava/util/Collection;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->W:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->g1:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->W:Lio/reactivex/rxjava3/internal/fuseable/p;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/rxjava3/internal/util/o;->e(Lio/reactivex/rxjava3/internal/fuseable/p;Lorg/reactivestreams/d;ZLio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/n;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->b2:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->T1:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->T1:Lorg/reactivestreams/e;

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->x1:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->b2:Ljava/util/Collection;

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/o$a;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/o$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/o$b;)V

    .line 6
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->V1:Lio/reactivex/rxjava3/disposables/f;

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    invoke-interface {v1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 8
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->b1:Z

    if-nez v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 9
    invoke-interface {p1, v1, v2}, Lorg/reactivestreams/e;->request(J)V

    .line 10
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o$b;->y1:Lorg/reactivestreams/c;

    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->b1:Z

    .line 13
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 14
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void
.end method

.method public request(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/subscribers/h;->m(J)V

    return-void
.end method
