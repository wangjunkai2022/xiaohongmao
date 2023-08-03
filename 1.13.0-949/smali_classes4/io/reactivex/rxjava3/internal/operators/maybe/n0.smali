.class public final Lio/reactivex/rxjava3/internal/operators/maybe/n0;
.super Lio/reactivex/rxjava3/core/v;
.source "MaybeFromSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/n0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/v<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/v0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/v;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/n0;->a:Lio/reactivex/rxjava3/core/v0;

    return-void
.end method


# virtual methods
.method protected U1(Lio/reactivex/rxjava3/core/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/n0;->a:Lio/reactivex/rxjava3/core/v0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/n0$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/n0$a;-><init>(Lio/reactivex/rxjava3/core/y;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/v0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method

.method public source()Lio/reactivex/rxjava3/core/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/n0;->a:Lio/reactivex/rxjava3/core/v0;

    return-object v0
.end method
