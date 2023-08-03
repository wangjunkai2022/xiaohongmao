.class public final Lio/reactivex/rxjava3/internal/operators/completable/m0;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/m0$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g;

.field final b:Lio/reactivex/rxjava3/core/o0;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "scheduler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/m0;->a:Lio/reactivex/rxjava3/core/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/m0;->b:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/m0$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/m0;->a:Lio/reactivex/rxjava3/core/g;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/completable/m0$a;-><init>(Lio/reactivex/rxjava3/core/d;Lio/reactivex/rxjava3/core/g;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/m0;->b:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/o0;->f(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/m0$a;->b:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
