.class final Lio/reactivex/internal/operators/maybe/m$b;
.super Ljava/lang/Object;
.source "MaybeDelaySubscriptionOtherPublisher.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/m;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/m$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Lorg/reactivestreams/e;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lio/reactivex/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lio/reactivex/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/m$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/m$a;-><init>(Lio/reactivex/t;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/internal/operators/maybe/m$a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/m$b;->b:Lio/reactivex/w;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->b:Lio/reactivex/w;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/m$b;->b:Lio/reactivex/w;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/internal/operators/maybe/m$a;

    invoke-interface {v0, v1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/internal/operators/maybe/m$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/internal/operators/maybe/m$a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/m$b;->a()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/internal/operators/maybe/m$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/m$b;->a()V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/internal/operators/maybe/m$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method
