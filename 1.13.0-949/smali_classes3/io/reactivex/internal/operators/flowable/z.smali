.class public final Lio/reactivex/internal/operators/flowable/z;
.super Lio/reactivex/j;
.source "FlowableConcatMapPublisher.java"


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

.field final e:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/z;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/z;->c:Ln7/o;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/z;->d:I

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/z;->e:Lio/reactivex/internal/util/ErrorMode;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z;->b:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z;->c:Ln7/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/j3;->b(Lorg/reactivestreams/c;Lorg/reactivestreams/d;Ln7/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z;->b:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z;->c:Ln7/o;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/z;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/z;->e:Lio/reactivex/internal/util/ErrorMode;

    invoke-static {p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/w;->M8(Lorg/reactivestreams/d;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)Lorg/reactivestreams/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
