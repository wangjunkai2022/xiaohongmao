.class final Lio/reactivex/rxjava3/internal/operators/completable/o0$a$a;
.super Ljava/lang/Object;
.source "CompletableTimeout.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/completable/o0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/rxjava3/internal/operators/completable/o0$a;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/o0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/o0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/o0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/o0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a;->c:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/d;->onComplete()V

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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/o0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/o0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a;->c:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/d;->onError(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/o0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/o0$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
