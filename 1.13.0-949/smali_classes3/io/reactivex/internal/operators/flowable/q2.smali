.class public final Lio/reactivex/internal/operators/flowable/q2;
.super Lio/reactivex/flowables/a;
.source "FlowablePublishAlt.java"

# interfaces
.implements Lo7/h;
.implements Lio/reactivex/internal/disposables/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/q2$a;,
        Lio/reactivex/internal/operators/flowable/q2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/a<",
        "TT;>;",
        "Lo7/h<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/c;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/q2$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/flowables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2;->b:Lorg/reactivestreams/c;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/q2;->c:I

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public Q8(Ln7/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/q2$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/q2$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/flowable/q2$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/q2;->c:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/q2$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/q2$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/q2$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Ln7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q2;->b:Lorg/reactivestreams/c;

    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lio/reactivex/internal/operators/flowable/q2;->c:I

    return v0
.end method

.method public c(Lio/reactivex/disposables/c;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/flowable/q2$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method protected k6(Lorg/reactivestreams/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/q2$b;

    if-nez v0, :cond_1

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/q2$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/q2;->c:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/q2$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/q2$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/flowable/q2$a;-><init>(Lorg/reactivestreams/d;Lio/reactivex/internal/operators/flowable/q2$b;)V

    .line 5
    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/q2$b;->a(Lio/reactivex/internal/operators/flowable/q2$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/q2$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/q2$b;->d(Lio/reactivex/internal/operators/flowable/q2$a;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/q2$b;->c()V

    :goto_1
    return-void

    .line 10
    :cond_3
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/q2$b;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface {p1}, Lorg/reactivestreams/d;->onComplete()V

    :goto_2
    return-void
.end method

.method public source()Lorg/reactivestreams/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2;->b:Lorg/reactivestreams/c;

    return-object v0
.end method
