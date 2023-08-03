.class public final Lio/reactivex/rxjava3/internal/operators/maybe/t0;
.super Lio/reactivex/rxjava3/core/p0;
.source "MaybeIsEmptySingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/h;
.implements Lio/reactivex/rxjava3/internal/fuseable/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/t0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/rxjava3/internal/fuseable/h<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/e<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/b0;)V
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
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/t0;->a:Lio/reactivex/rxjava3/core/b0;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
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
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/t0;->a:Lio/reactivex/rxjava3/core/b0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/t0$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/t0$a;-><init>(Lio/reactivex/rxjava3/core/s0;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method

.method public b()Lio/reactivex/rxjava3/core/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/s0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/t0;->a:Lio/reactivex/rxjava3/core/b0;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/s0;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public source()Lio/reactivex/rxjava3/core/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/t0;->a:Lio/reactivex/rxjava3/core/b0;

    return-object v0
.end method
