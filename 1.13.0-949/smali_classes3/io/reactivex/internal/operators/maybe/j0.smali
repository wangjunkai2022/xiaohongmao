.class public final Lio/reactivex/internal/operators/maybe/j0;
.super Lio/reactivex/q;
.source "MaybeFromCompletable.java"

# interfaces
.implements Lo7/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/j0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
        "Lo7/e;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/j0;->a:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/j0;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/maybe/j0$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/j0$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method

.method public source()Lio/reactivex/g;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/j0;->a:Lio/reactivex/g;

    return-object v0
.end method
