.class public final Lio/reactivex/rxjava3/internal/operators/flowable/x;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableConcatMapEagerPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lorg/reactivestreams/c;Lq7/o;IILio/reactivex/rxjava3/internal/util/ErrorMode;)V
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
            "Lorg/reactivestreams/c<",
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
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->c:Lq7/o;

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->d:I

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->e:I

    .line 6
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->b:Lorg/reactivestreams/c;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->c:Lq7/o;

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->d:I

    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->e:I

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/w$a;-><init>(Lorg/reactivestreams/d;Lq7/o;IILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-interface {v0, v7}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
