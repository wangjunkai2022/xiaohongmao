.class public final Lio/reactivex/rxjava3/internal/operators/observable/m4;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/m4$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/m4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/c;Lio/reactivex/rxjava3/core/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "combiner",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m4;->b:Lq7/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/m4;->c:Lio/reactivex/rxjava3/core/l0;

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
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/m;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/observers/m;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    .line 2
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/m4$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m4;->b:Lq7/c;

    invoke-direct {p1, v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/m4$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/c;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/observers/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m4;->c:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/m4$b;

    invoke-direct {v1, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/m4$b;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/m4;Lio/reactivex/rxjava3/internal/operators/observable/m4$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
