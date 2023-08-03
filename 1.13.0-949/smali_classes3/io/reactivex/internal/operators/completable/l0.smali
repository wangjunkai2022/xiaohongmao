.class public final Lio/reactivex/internal/operators/completable/l0;
.super Lio/reactivex/a;
.source "CompletableTakeUntilCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/l0$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/a;

.field final b:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/a;Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/l0;->a:Lio/reactivex/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/l0;->b:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/l0$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/l0$a;-><init>(Lio/reactivex/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/l0;->b:Lio/reactivex/g;

    iget-object v1, v0, Lio/reactivex/internal/operators/completable/l0$a;->b:Lio/reactivex/internal/operators/completable/l0$a$a;

    invoke-interface {p1, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/l0;->a:Lio/reactivex/a;

    invoke-virtual {p1, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    return-void
.end method
