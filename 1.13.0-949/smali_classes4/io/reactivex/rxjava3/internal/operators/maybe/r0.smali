.class public final Lio/reactivex/rxjava3/internal/operators/maybe/r0;
.super Lio/reactivex/rxjava3/core/a;
.source "MaybeIgnoreElementCompletable.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/r0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/a;",
        "Lio/reactivex/rxjava3/internal/fuseable/e<",
        "TT;>;"
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
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/r0;->a:Lio/reactivex/rxjava3/core/b0;

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/r0;->a:Lio/reactivex/rxjava3/core/b0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/r0$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/r0$a;-><init>(Lio/reactivex/rxjava3/core/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method

.method public b()Lio/reactivex/rxjava3/core/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/q0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/r0;->a:Lio/reactivex/rxjava3/core/b0;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/q0;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method
