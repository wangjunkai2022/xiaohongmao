.class public final Lio/reactivex/rxjava3/internal/operators/completable/b;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableAndThenCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/b$a;,
        Lio/reactivex/rxjava3/internal/operators/completable/b$b;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g;

.field final b:Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "next"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/b;->a:Lio/reactivex/rxjava3/core/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/b;->b:Lio/reactivex/rxjava3/core/g;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/b;->a:Lio/reactivex/rxjava3/core/g;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/b$b;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/completable/b;->b:Lio/reactivex/rxjava3/core/g;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/completable/b$b;-><init>(Lio/reactivex/rxjava3/core/d;Lio/reactivex/rxjava3/core/g;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
