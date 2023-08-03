.class public final Lio/reactivex/rxjava3/internal/operators/completable/e;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableConcatArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/e$a;
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>([Lio/reactivex/rxjava3/core/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/e;->a:[Lio/reactivex/rxjava3/core/g;

    return-void
.end method


# virtual methods
.method public Y0(Lio/reactivex/rxjava3/core/d;)V
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/e$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/e;->a:[Lio/reactivex/rxjava3/core/g;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/completable/e$a;-><init>(Lio/reactivex/rxjava3/core/d;[Lio/reactivex/rxjava3/core/g;)V

    .line 2
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/completable/e$a;->d:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/completable/e$a;->a()V

    return-void
.end method
