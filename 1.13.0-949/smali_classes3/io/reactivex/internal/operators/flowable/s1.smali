.class public final Lio/reactivex/internal/operators/flowable/s1;
.super Lio/reactivex/j;
.source "FlowableIntervalRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/s1$a;
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
.field final b:Lio/reactivex/h0;

.field final c:J

.field final d:J

.field final e:J

.field final f:J

.field final g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-wide p5, p0, Lio/reactivex/internal/operators/flowable/s1;->e:J

    .line 3
    iput-wide p7, p0, Lio/reactivex/internal/operators/flowable/s1;->f:J

    .line 4
    iput-object p9, p0, Lio/reactivex/internal/operators/flowable/s1;->g:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p10, p0, Lio/reactivex/internal/operators/flowable/s1;->b:Lio/reactivex/h0;

    .line 6
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/s1;->c:J

    .line 7
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/s1;->d:J

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 8
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
    new-instance v7, Lio/reactivex/internal/operators/flowable/s1$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/s1;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/s1;->d:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/s1$a;-><init>(Lorg/reactivestreams/d;JJ)V

    .line 2
    invoke-interface {p1, v7}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s1;->b:Lio/reactivex/h0;

    .line 4
    instance-of p1, v0, Lio/reactivex/internal/schedulers/o;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/flowable/s1$a;->a(Lio/reactivex/disposables/c;)V

    .line 7
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/s1;->e:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/s1;->f:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/s1;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/s1;->e:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/s1;->f:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/s1;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/flowable/s1$a;->a(Lio/reactivex/disposables/c;)V

    :goto_0
    return-void
.end method
