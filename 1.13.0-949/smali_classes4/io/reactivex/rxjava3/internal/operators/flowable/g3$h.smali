.class final Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lorg/reactivestreams/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$i<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lq7/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curr",
            "bufferFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$i<",
            "TT;>;>;",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;->b:Lq7/s;

    return-void
.end method


# virtual methods
.method public i(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
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
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;->b:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void

    .line 7
    :cond_1
    :goto_1
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;

    invoke-direct {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;Lorg/reactivestreams/d;)V

    .line 8
    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->a(Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;)Z

    .line 10
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->c(Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->b()V

    .line 13
    iget-object p1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;->c(Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;)V

    return-void
.end method
