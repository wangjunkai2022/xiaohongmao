.class public final Lio/reactivex/rxjava3/internal/operators/observable/p0;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g0;Lq7/g;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "upstream",
            "onSubscribe",
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p0;->b:Lq7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p0;->c:Lq7/a;

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 4
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/observers/h;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p0;->b:Lq7/g;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p0;->c:Lq7/a;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/rxjava3/internal/observers/h;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/g;Lq7/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
