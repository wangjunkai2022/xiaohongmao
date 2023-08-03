.class public final Lio/reactivex/internal/operators/flowable/z0;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/z0$a;,
        Lio/reactivex/internal/operators/flowable/z0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Lio/reactivex/j;Ln7/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/z0;->c:Ln7/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/z0;->d:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/z0;->e:I

    .line 5
    iput p5, p0, Lio/reactivex/internal/operators/flowable/z0;->f:I

    return-void
.end method

.method public static M8(Lorg/reactivestreams/d;Ln7/o;ZII)Lio/reactivex/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "-TU;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;ZII)",
            "Lio/reactivex/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/flowable/z0$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/z0$b;-><init>(Lorg/reactivestreams/d;Ln7/o;ZII)V

    return-object v6
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z0;->c:Ln7/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/j3;->b(Lorg/reactivestreams/c;Lorg/reactivestreams/d;Ln7/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z0;->c:Ln7/o;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/z0;->d:Z

    iget v3, p0, Lio/reactivex/internal/operators/flowable/z0;->e:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/z0;->f:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/z0;->M8(Lorg/reactivestreams/d;Ln7/o;ZII)Lio/reactivex/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
