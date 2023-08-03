.class public final Lio/reactivex/rxjava3/internal/operators/flowable/x1;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableIntervalRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/x1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/m<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/o0;

.field final c:J

.field final d:J

.field final e:J

.field final f:J

.field final g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "initialDelay",
            "period",
            "unit",
            "scheduler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-wide p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->e:J

    .line 3
    iput-wide p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->f:J

    .line 4
    iput-object p9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->g:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->b:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->c:J

    .line 7
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->d:J

    return-void
.end method


# virtual methods
.method public H6(Lorg/reactivestreams/d;)V
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
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/x1$a;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->c:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->d:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/x1$a;-><init>(Lorg/reactivestreams/d;JJ)V

    .line 2
    invoke-interface {p1, v7}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->b:Lio/reactivex/rxjava3/core/o0;

    .line 4
    instance-of p1, v0, Lio/reactivex/rxjava3/internal/schedulers/o;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/x1$a;->a(Lio/reactivex/rxjava3/disposables/f;)V

    .line 7
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->e:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->f:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/o0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->e:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->f:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/x1;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/o0;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/x1$a;->a(Lio/reactivex/rxjava3/disposables/f;)V

    :goto_0
    return-void
.end method
