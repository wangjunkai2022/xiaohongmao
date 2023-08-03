.class public final Lio/reactivex/rxjava3/internal/operators/completable/y;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableHide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/y$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/y;->a:Lio/reactivex/rxjava3/core/g;

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/y;->a:Lio/reactivex/rxjava3/core/g;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/y$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/completable/y$a;-><init>(Lio/reactivex/rxjava3/core/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
