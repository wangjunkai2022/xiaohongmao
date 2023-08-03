.class public final Lio/reactivex/rxjava3/internal/operators/observable/a3;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/a3$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/a3$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/a3$d;,
        Lio/reactivex/rxjava3/internal/operators/observable/a3$c;
    }
.end annotation

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
.field final b:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Z)V
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
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/a3;->b:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/a3;->c:Z

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
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
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/m;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/observers/m;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a3;->c:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/a3$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/a3;->b:Lio/reactivex/rxjava3/core/l0;

    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/a3$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/a3$b;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/a3;->b:Lio/reactivex/rxjava3/core/l0;

    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/a3$b;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :goto_0
    return-void
.end method
