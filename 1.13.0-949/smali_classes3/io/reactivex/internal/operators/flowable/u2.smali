.class public final Lio/reactivex/internal/operators/flowable/u2;
.super Lio/reactivex/j;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/u2$b;,
        Lio/reactivex/internal/operators/flowable/u2$c;,
        Lio/reactivex/internal/operators/flowable/u2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/j<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/u2;->b:J

    add-long/2addr p1, p3

    .line 3
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/u2;->c:J

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lo7/a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/u2$b;

    move-object v2, p1

    check-cast v2, Lo7/a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/u2;->b:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/u2;->c:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/u2$b;-><init>(Lo7/a;JJ)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/u2$c;

    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/u2;->b:J

    iget-wide v11, p0, Lio/reactivex/internal/operators/flowable/u2;->c:J

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lio/reactivex/internal/operators/flowable/u2$c;-><init>(Lorg/reactivestreams/d;JJ)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :goto_0
    return-void
.end method
