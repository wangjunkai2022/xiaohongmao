.class public final Lio/reactivex/rxjava3/internal/operators/single/s0;
.super Lio/reactivex/rxjava3/core/v;
.source "SingleOnErrorComplete.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/p0;Lq7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;",
            "Lq7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/v;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/s0;->a:Lio/reactivex/rxjava3/core/p0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/s0;->b:Lq7/r;

    return-void
.end method


# virtual methods
.method protected U1(Lio/reactivex/rxjava3/core/y;)V
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
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/s0;->a:Lio/reactivex/rxjava3/core/p0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/b1$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/s0;->b:Lq7/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/b1$a;-><init>(Lio/reactivex/rxjava3/core/y;Lq7/r;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method
