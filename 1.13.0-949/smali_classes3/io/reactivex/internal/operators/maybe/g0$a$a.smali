.class final Lio/reactivex/internal/operators/maybe/g0$a$a;
.super Ljava/lang/Object;
.source "MaybeFlatten.java"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/g0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/t<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/maybe/g0$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/g0$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/g0$a$a;->a:Lio/reactivex/internal/operators/maybe/g0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/g0$a$a;->a:Lio/reactivex/internal/operators/maybe/g0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/g0$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/g0$a$a;->a:Lio/reactivex/internal/operators/maybe/g0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/g0$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/g0$a$a;->a:Lio/reactivex/internal/operators/maybe/g0$a;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/g0$a$a;->a:Lio/reactivex/internal/operators/maybe/g0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/g0$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
