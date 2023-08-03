.class public final Lio/reactivex/rxjava3/internal/operators/flowable/y;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableConcatMapScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/y$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/y$d;,
        Lio/reactivex/rxjava3/internal/operators/flowable/y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field final f:Lio/reactivex/rxjava3/core/o0;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;Lio/reactivex/rxjava3/core/o0;)V
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
            "mapper",
            "prefetch",
            "errorMode",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->c:Lq7/o;

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->d:I

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->f:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/y$a;->a:[I

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/y$d;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->c:Lq7/o;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->d:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->f:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v4}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/y$d;-><init>(Lorg/reactivestreams/d;Lq7/o;ILio/reactivex/rxjava3/core/o0$c;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->c:Lq7/o;

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->d:I

    const/4 v5, 0x1

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->f:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;-><init>(Lorg/reactivestreams/d;Lq7/o;IZLio/reactivex/rxjava3/core/o0$c;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->c:Lq7/o;

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->d:I

    const/4 v5, 0x0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y;->f:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/y$c;-><init>(Lorg/reactivestreams/d;Lq7/o;IZLio/reactivex/rxjava3/core/o0$c;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :goto_0
    return-void
.end method
