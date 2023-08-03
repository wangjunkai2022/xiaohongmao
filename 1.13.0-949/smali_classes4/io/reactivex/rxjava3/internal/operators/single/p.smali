.class public final Lio/reactivex/rxjava3/internal/operators/single/p;
.super Lio/reactivex/rxjava3/core/p0;
.source "SingleDoOnDispose.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
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

.field final b:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/v0;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/p;->a:Lio/reactivex/rxjava3/core/v0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/p;->b:Lq7/a;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/p;->a:Lio/reactivex/rxjava3/core/v0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/p$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/p;->b:Lq7/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/single/p$a;-><init>(Lio/reactivex/rxjava3/core/s0;Lq7/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/v0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method
