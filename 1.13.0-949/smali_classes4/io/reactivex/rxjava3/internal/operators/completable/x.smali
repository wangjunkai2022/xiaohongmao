.class public final Lio/reactivex/rxjava3/internal/operators/completable/x;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableFromUnsafeSource.java"


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
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/x;->a:Lio/reactivex/rxjava3/core/g;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/x;->a:Lio/reactivex/rxjava3/core/g;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
