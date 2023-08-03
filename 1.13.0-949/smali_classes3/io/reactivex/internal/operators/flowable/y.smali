.class public final Lio/reactivex/internal/operators/flowable/y;
.super Lio/reactivex/j;
.source "FlowableConcatMapEagerPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
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

.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:I

.field final f:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Ln7/o;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/y;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/y;->c:Ln7/o;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/y;->d:I

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/y;->e:I

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/y;->f:Lio/reactivex/internal/util/ErrorMode;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/y;->b:Lorg/reactivestreams/c;

    new-instance v7, Lio/reactivex/internal/operators/flowable/x$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/y;->c:Ln7/o;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/y;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/flowable/y;->e:I

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/y;->f:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/x$a;-><init>(Lorg/reactivestreams/d;Ln7/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-interface {v0, v7}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
