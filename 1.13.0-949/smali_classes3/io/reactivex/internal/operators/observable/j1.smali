.class public final Lio/reactivex/internal/operators/observable/j1;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/j1$c;,
        Lio/reactivex/internal/operators/observable/j1$d;,
        Lio/reactivex/internal/operators/observable/j1$a;,
        Lio/reactivex/internal/operators/observable/j1$b;
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
        "Lio/reactivex/internal/operators/observable/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/e0<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TTRight;+",
            "Lio/reactivex/e0<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final e:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/z<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;Ln7/o;Ln7/o;Ln7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT",
            "Left;",
            ">;",
            "Lio/reactivex/e0<",
            "+TTRight;>;",
            "Ln7/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/e0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Ln7/o<",
            "-TTRight;+",
            "Lio/reactivex/e0<",
            "TTRightEnd;>;>;",
            "Ln7/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/z<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j1;->b:Lio/reactivex/e0;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/j1;->c:Ln7/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/j1;->d:Ln7/o;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/j1;->e:Ln7/c;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/j1$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/j1;->c:Ln7/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/j1;->d:Ln7/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/j1;->e:Ln7/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/observable/j1$a;-><init>(Lio/reactivex/g0;Ln7/o;Ln7/o;Ln7/c;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    new-instance p1, Lio/reactivex/internal/operators/observable/j1$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/observable/j1$d;-><init>(Lio/reactivex/internal/operators/observable/j1$b;Z)V

    .line 4
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/j1$a;->c:Lio/reactivex/disposables/b;

    invoke-virtual {v1, p1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    .line 5
    new-instance v1, Lio/reactivex/internal/operators/observable/j1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/j1$d;-><init>(Lio/reactivex/internal/operators/observable/j1$b;Z)V

    .line 6
    iget-object v0, v0, Lio/reactivex/internal/operators/observable/j1$a;->c:Lio/reactivex/disposables/b;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {v0, p1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/j1;->b:Lio/reactivex/e0;

    invoke-interface {p1, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
