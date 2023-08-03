.class public final Lio/reactivex/internal/operators/observable/j4;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/j4$b;,
        Lio/reactivex/internal/operators/observable/j4$a;
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
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ln7/c;Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ln7/c<",
            "-TT;-TU;+TR;>;",
            "Lio/reactivex/e0<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j4;->b:Ln7/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/j4;->c:Lio/reactivex/e0;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/l;

    invoke-direct {v0, p1}, Lio/reactivex/observers/l;-><init>(Lio/reactivex/g0;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/observable/j4$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/j4;->b:Ln7/c;

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/observable/j4$a;-><init>(Lio/reactivex/g0;Ln7/c;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/observers/l;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j4;->c:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/j4$b;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/j4$b;-><init>(Lio/reactivex/internal/operators/observable/j4;Lio/reactivex/internal/operators/observable/j4$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {v0, p1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
