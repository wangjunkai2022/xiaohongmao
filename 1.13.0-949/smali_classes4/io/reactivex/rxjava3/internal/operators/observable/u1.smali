.class public final Lio/reactivex/rxjava3/internal/operators/observable/u1;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/u1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TTRight;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final e:Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;Lq7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "other",
            "leftEnd",
            "rightEnd",
            "resultSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT",
            "Left;",
            ">;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTRight;>;",
            "Lq7/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lq7/o<",
            "-TTRight;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TTRightEnd;>;>;",
            "Lq7/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->b:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->c:Lq7/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->d:Lq7/o;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->e:Lq7/c;

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
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->c:Lq7/o;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->d:Lq7/o;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->e:Lq7/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;Lq7/o;Lq7/c;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/n1$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/n1$d;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/n1$b;Z)V

    .line 4
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 5
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/n1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/n1$d;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/n1$b;Z)V

    .line 6
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1;->b:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
