.class public final Lio/reactivex/internal/operators/flowable/d1;
.super Lio/reactivex/j;
.source "FlowableFlatMapPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TU;>;"
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
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Ln7/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/d1;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/d1;->c:Ln7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/d1;->d:Z

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/d1;->e:I

    .line 6
    iput p5, p0, Lio/reactivex/internal/operators/flowable/d1;->f:I

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d1;->b:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/d1;->c:Ln7/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/j3;->b(Lorg/reactivestreams/c;Lorg/reactivestreams/d;Ln7/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d1;->b:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/d1;->c:Ln7/o;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/d1;->d:Z

    iget v3, p0, Lio/reactivex/internal/operators/flowable/d1;->e:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/d1;->f:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/z0;->M8(Lorg/reactivestreams/d;Ln7/o;ZII)Lio/reactivex/o;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
