.class public final Lio/reactivex/internal/observers/p;
.super Ljava/lang/Object;
.source "SubscriberCompletableObserver.java"

# interfaces
.implements Lio/reactivex/d;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/d;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/disposables/c;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/p;->a:Lorg/reactivestreams/d;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/p;->b:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/p;->a:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/p;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/p;->b:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/p;->b:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/p;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
