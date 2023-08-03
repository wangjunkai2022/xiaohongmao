.class public final Lio/reactivex/rxjava3/internal/operators/completable/n0;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableTakeUntilCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/n0$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/a;

.field final b:Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/a;Lio/reactivex/rxjava3/core/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "other"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/n0;->a:Lio/reactivex/rxjava3/core/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/n0;->b:Lio/reactivex/rxjava3/core/g;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/n0$a;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/n0$a;-><init>(Lio/reactivex/rxjava3/core/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/n0;->b:Lio/reactivex/rxjava3/core/g;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/completable/n0$a;->b:Lio/reactivex/rxjava3/internal/operators/completable/n0$a$a;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/n0;->a:Lio/reactivex/rxjava3/core/a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
