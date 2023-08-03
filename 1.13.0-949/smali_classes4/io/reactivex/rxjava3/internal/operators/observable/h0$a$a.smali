.class final Lio/reactivex/rxjava3/internal/operators/observable/h0$a$a;
.super Ljava/lang/Object;
.source "ObservableDelaySubscriptionOther.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/h0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/rxjava3/internal/operators/observable/h0$a;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/h0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/h0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/h0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a;->b:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/h0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a;->b:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/h0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a;->b:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/h0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/h0$a;->a:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->update(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
