.class public final Lio/reactivex/rxjava3/internal/operators/observable/i4;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableWindowBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/i4$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/i4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/rxjava3/core/g0<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "other",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/i4;->b:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/i4;->c:I

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/i4$b;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/i4;->c:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/i4$b;-><init>(Lio/reactivex/rxjava3/core/n0;I)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/i4;->b:Lio/reactivex/rxjava3/core/l0;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/i4$b;->c:Lio/reactivex/rxjava3/internal/operators/observable/i4$a;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
