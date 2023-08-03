.class public final Lio/reactivex/internal/operators/flowable/u4;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/u4$a;,
        Lio/reactivex/internal/operators/flowable/u4$b;,
        Lio/reactivex/internal/operators/flowable/u4$d;,
        Lio/reactivex/internal/operators/flowable/u4$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TB;>;"
        }
    .end annotation
.end field

.field final d:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TB;+",
            "Lorg/reactivestreams/c<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/reactivestreams/c;Ln7/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "TB;>;",
            "Ln7/o<",
            "-TB;+",
            "Lorg/reactivestreams/c<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/u4;->c:Lorg/reactivestreams/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/u4;->d:Ln7/o;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/u4;->e:I

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/u4$c;

    new-instance v2, Lio/reactivex/subscribers/e;

    invoke-direct {v2, p1}, Lio/reactivex/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/u4;->c:Lorg/reactivestreams/c;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/u4;->d:Ln7/o;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/u4;->e:I

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/flowable/u4$c;-><init>(Lorg/reactivestreams/d;Lorg/reactivestreams/c;Ln7/o;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
