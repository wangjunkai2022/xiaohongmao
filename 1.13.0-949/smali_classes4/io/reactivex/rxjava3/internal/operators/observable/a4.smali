.class public final Lio/reactivex/rxjava3/internal/operators/observable/a4;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/a4$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/a4$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/a4$c;,
        Lio/reactivex/rxjava3/internal/operators/observable/a4$d;
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
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "firstTimeoutIndicator",
            "itemTimeoutIndicator",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->b:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->c:Lq7/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->d:Lio/reactivex/rxjava3/core/l0;

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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->d:Lio/reactivex/rxjava3/core/l0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a4$c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->c:Lq7/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/a4$c;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;)V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->b:Lio/reactivex/rxjava3/core/l0;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a4$c;->c(Lio/reactivex/rxjava3/core/l0;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a4$b;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->c:Lq7/o;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->d:Lio/reactivex/rxjava3/core/l0;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/a4$b;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)V

    .line 7
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a4;->b:Lio/reactivex/rxjava3/core/l0;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a4$b;->c(Lio/reactivex/rxjava3/core/l0;)V

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :goto_0
    return-void
.end method
