.class final Lio/reactivex/internal/operators/flowable/d3$i;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lorg/reactivestreams/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
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
            "Lio/reactivex/internal/operators/flowable/d3$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/d3$g<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/d3$j<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/d3$g<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/d3$i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/d3$i;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
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
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3$i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/d3$j;

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3$i;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/d3$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/flowable/d3$j;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/d3$j;-><init>(Lio/reactivex/internal/operators/flowable/d3$g;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3$i;->a:Ljava/util/concurrent/atomic/AtomicReference;

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
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void

    .line 7
    :cond_1
    :goto_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/d3$d;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/d3$d;-><init>(Lio/reactivex/internal/operators/flowable/d3$j;Lorg/reactivestreams/d;)V

    .line 8
    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/d3$j;->a(Lio/reactivex/internal/operators/flowable/d3$d;)Z

    .line 10
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/d3$d;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/d3$j;->c(Lio/reactivex/internal/operators/flowable/d3$d;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/d3$j;->b()V

    .line 13
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/d3$j;->a:Lio/reactivex/internal/operators/flowable/d3$g;

    invoke-interface {p1, v1}, Lio/reactivex/internal/operators/flowable/d3$g;->c(Lio/reactivex/internal/operators/flowable/d3$d;)V

    return-void
.end method
