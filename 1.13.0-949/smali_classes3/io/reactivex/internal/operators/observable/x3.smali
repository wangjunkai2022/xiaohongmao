.class public final Lio/reactivex/internal/operators/observable/x3;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/x3$a;,
        Lio/reactivex/internal/operators/observable/x3$b;,
        Lio/reactivex/internal/operators/observable/x3$c;,
        Lio/reactivex/internal/operators/observable/x3$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/e0;Ln7/o;Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/e0<",
            "TU;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "TV;>;>;",
            "Lio/reactivex/e0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/x3;->b:Lio/reactivex/e0;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/x3;->c:Ln7/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/x3;->d:Lio/reactivex/e0;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x3;->d:Lio/reactivex/e0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/x3$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/x3;->c:Ln7/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/x3$c;-><init>(Lio/reactivex/g0;Ln7/o;)V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/x3;->b:Lio/reactivex/e0;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/x3$c;->c(Lio/reactivex/e0;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/x3$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/x3;->c:Ln7/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/x3;->d:Lio/reactivex/e0;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/x3$b;-><init>(Lio/reactivex/g0;Ln7/o;Lio/reactivex/e0;)V

    .line 7
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/x3;->b:Lio/reactivex/e0;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/x3$b;->c(Lio/reactivex/e0;)V

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    :goto_0
    return-void
.end method
