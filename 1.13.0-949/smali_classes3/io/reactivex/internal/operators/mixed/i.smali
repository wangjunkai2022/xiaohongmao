.class public final Lio/reactivex/internal/operators/mixed/i;
.super Ljava/lang/Object;
.source "MaterializeSingleObserver.java"

# interfaces
.implements Lio/reactivex/l0;
.implements Lio/reactivex/t;
.implements Lio/reactivex/d;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/l0<",
        "TT;>;",
        "Lio/reactivex/t<",
        "TT;>;",
        "Lio/reactivex/d;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation

.annotation build Lm7/d;
.end annotation


# instance fields
.field final a:Lio/reactivex/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/l0<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/disposables/c;


# direct methods
.method public constructor <init>(Lio/reactivex/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/i;->a:Lio/reactivex/l0;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/i;->b:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/i;->b:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/i;->a:Lio/reactivex/l0;

    invoke-static {}, Lio/reactivex/y;->a()Lio/reactivex/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/i;->a:Lio/reactivex/l0;

    invoke-static {p1}, Lio/reactivex/y;->b(Ljava/lang/Throwable;)Lio/reactivex/y;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/i;->b:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/i;->b:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/i;->a:Lio/reactivex/l0;

    invoke-interface {p1, p0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

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

    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/i;->a:Lio/reactivex/l0;

    invoke-static {p1}, Lio/reactivex/y;->c(Ljava/lang/Object;)Lio/reactivex/y;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
