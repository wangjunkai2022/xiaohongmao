.class final Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "FlowableRefCount.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/c3;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final e:J = -0x66f7ddf0554a95a7L


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/internal/operators/flowable/c3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/c3<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

.field d:Lorg/reactivestreams/e;


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/operators/flowable/c3;Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "parent",
            "connection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/internal/operators/flowable/c3<",
            "TT;>;",
            "Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->b:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->c:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->d:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->b:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->c:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->b:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->c:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->h9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    :cond_0
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->b:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->c:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->h9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->d:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->d:Lorg/reactivestreams/e;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;->d:Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    return-void
.end method
