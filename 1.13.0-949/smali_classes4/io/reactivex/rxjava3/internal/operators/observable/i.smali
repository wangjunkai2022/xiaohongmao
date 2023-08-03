.class public final Lio/reactivex/rxjava3/internal/operators/observable/i;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableAny.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lq7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/i;->b:Lq7/r;

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/i$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/i;->b:Lq7/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/i$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
