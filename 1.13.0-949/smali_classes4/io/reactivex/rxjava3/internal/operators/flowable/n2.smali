.class public final Lio/reactivex/rxjava3/internal/operators/flowable/n2;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableOnBackpressureBufferStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/n2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:Lq7/a;

.field final e:Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;JLq7/a;Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "bufferSize",
            "onOverflow",
            "strategy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;J",
            "Lq7/a;",
            "Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n2;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n2;->d:Lq7/a;

    .line 4
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n2;->e:Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;

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
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/n2$b;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n2;->d:Lq7/a;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n2;->e:Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n2;->c:J

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/n2$b;-><init>(Lorg/reactivestreams/d;Lq7/a;Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;J)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
