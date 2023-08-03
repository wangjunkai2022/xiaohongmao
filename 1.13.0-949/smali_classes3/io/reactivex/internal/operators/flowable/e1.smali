.class public final Lio/reactivex/internal/operators/flowable/e1;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableFlatMapSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/e1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/e1;->c:Ln7/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/e1;->d:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/e1;->e:I

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/e1$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/e1;->c:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/e1;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/e1;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/e1$a;-><init>(Lorg/reactivestreams/d;Ln7/o;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
