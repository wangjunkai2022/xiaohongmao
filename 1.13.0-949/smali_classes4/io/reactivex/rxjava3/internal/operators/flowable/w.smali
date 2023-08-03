.class public final Lio/reactivex/rxjava3/internal/operators/flowable/w;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableConcatMapEager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/w$a;
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

.field final e:I

.field final f:Lio/reactivex/rxjava3/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;IILio/reactivex/rxjava3/internal/util/ErrorMode;)V
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
            "maxConcurrency",
            "prefetch",
            "errorMode"
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
            "+TR;>;>;II",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->c:Lq7/o;

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->d:I

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->e:I

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->c:Lq7/o;

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->d:I

    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->e:I

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;-><init>(Lorg/reactivestreams/d;Lq7/o;IILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
