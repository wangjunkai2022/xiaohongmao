.class public final Lio/reactivex/internal/operators/flowable/t1;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t1$a;
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
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final d:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT",
            "Left;",
            "+",
            "Lorg/reactivestreams/c<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final e:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TTRight;+",
            "Lorg/reactivestreams/c<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final f:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/reactivestreams/c;Ln7/o;Ln7/o;Ln7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT",
            "Left;",
            ">;",
            "Lorg/reactivestreams/c<",
            "+TTRight;>;",
            "Ln7/o<",
            "-TT",
            "Left;",
            "+",
            "Lorg/reactivestreams/c<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Ln7/o<",
            "-TTRight;+",
            "Lorg/reactivestreams/c<",
            "TTRightEnd;>;>;",
            "Ln7/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/t1;->c:Lorg/reactivestreams/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/t1;->d:Ln7/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/t1;->e:Ln7/o;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/t1;->f:Ln7/c;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/t1$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t1;->d:Ln7/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t1;->e:Ln7/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/t1;->f:Ln7/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/t1$a;-><init>(Lorg/reactivestreams/d;Ln7/o;Ln7/o;Ln7/c;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    new-instance p1, Lio/reactivex/internal/operators/flowable/n1$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/n1$d;-><init>(Lio/reactivex/internal/operators/flowable/n1$b;Z)V

    .line 4
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/t1$a;->d:Lio/reactivex/disposables/b;

    invoke-virtual {v1, p1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    .line 5
    new-instance v1, Lio/reactivex/internal/operators/flowable/n1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/n1$d;-><init>(Lio/reactivex/internal/operators/flowable/n1$b;Z)V

    .line 6
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/t1$a;->d:Lio/reactivex/disposables/b;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/t1;->c:Lorg/reactivestreams/c;

    invoke-interface {p1, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
