.class public final Lio/reactivex/rxjava3/internal/operators/maybe/h1;
.super Lio/reactivex/rxjava3/core/p0;
.source "MaybeSwitchIfEmptySingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/h1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/h<",
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

.field final b:Lio/reactivex/rxjava3/core/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/v0;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/h1;->a:Lio/reactivex/rxjava3/core/b0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/h1;->b:Lio/reactivex/rxjava3/core/v0;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 3
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
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/h1;->a:Lio/reactivex/rxjava3/core/b0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/h1$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/h1;->b:Lio/reactivex/rxjava3/core/v0;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/h1$a;-><init>(Lio/reactivex/rxjava3/core/s0;Lio/reactivex/rxjava3/core/v0;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/h1;->a:Lio/reactivex/rxjava3/core/b0;

    return-object v0
.end method
