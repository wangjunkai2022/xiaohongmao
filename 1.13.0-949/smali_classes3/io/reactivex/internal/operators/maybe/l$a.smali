.class final Lio/reactivex/internal/operators/maybe/l$a;
.super Ljava/lang/Object;
.source "MaybeDelayOtherPublisher.java"

# interfaces
.implements Lio/reactivex/t;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/t<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/l$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TU;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/disposables/c;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lorg/reactivestreams/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lorg/reactivestreams/c<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/l$b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/l$b;-><init>(Lio/reactivex/t;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/internal/operators/maybe/l$b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/l$a;->b:Lorg/reactivestreams/c;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->b:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/internal/operators/maybe/l$b;

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 2
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Lio/reactivex/disposables/c;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/internal/operators/maybe/l$b;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/internal/operators/maybe/l$b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Lio/reactivex/disposables/c;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/l$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Lio/reactivex/disposables/c;

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/internal/operators/maybe/l$b;

    iput-object p1, v0, Lio/reactivex/internal/operators/maybe/l$b;->c:Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/l$a;->a()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/internal/operators/maybe/l$b;

    iget-object p1, p1, Lio/reactivex/internal/operators/maybe/l$b;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/c;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Lio/reactivex/disposables/c;

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/internal/operators/maybe/l$b;

    iput-object p1, v0, Lio/reactivex/internal/operators/maybe/l$b;->b:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/l$a;->a()V

    return-void
.end method
