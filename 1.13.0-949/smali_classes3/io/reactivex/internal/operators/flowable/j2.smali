.class public final Lio/reactivex/internal/operators/flowable/j2;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableOnBackpressureBufferStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/j2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:Ln7/a;

.field final e:Lio/reactivex/BackpressureOverflowStrategy;


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLn7/a;Lio/reactivex/BackpressureOverflowStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ln7/a;",
            "Lio/reactivex/BackpressureOverflowStrategy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/j2;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/j2;->d:Ln7/a;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/j2;->e:Lio/reactivex/BackpressureOverflowStrategy;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/j2$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/j2;->d:Ln7/a;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/j2;->e:Lio/reactivex/BackpressureOverflowStrategy;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/j2;->c:J

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/j2$b;-><init>(Lorg/reactivestreams/d;Ln7/a;Lio/reactivex/BackpressureOverflowStrategy;J)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
