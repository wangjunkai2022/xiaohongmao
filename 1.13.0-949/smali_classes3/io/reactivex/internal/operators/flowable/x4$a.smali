.class final Lio/reactivex/internal/operators/flowable/x4$a;
.super Ljava/lang/Object;
.source "FlowableWithLatestFrom.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/flowable/x4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/x4$b<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/flowable/x4;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/x4;Lio/reactivex/internal/operators/flowable/x4$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/x4$b<",
            "TT;TU;TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x4$a;->b:Lio/reactivex/internal/operators/flowable/x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x4$a;->a:Lio/reactivex/internal/operators/flowable/x4$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x4$a;->a:Lio/reactivex/internal/operators/flowable/x4$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/x4$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x4$a;->a:Lio/reactivex/internal/operators/flowable/x4$b;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x4$a;->a:Lio/reactivex/internal/operators/flowable/x4$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/x4$b;->b(Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method
