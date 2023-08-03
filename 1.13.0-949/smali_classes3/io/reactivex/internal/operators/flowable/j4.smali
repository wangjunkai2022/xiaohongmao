.class public final Lio/reactivex/internal/operators/flowable/j4;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableThrottleLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/j4$a;
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

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/h0;

.field final f:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/j4;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/j4;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/j4;->e:Lio/reactivex/h0;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/j4;->f:Z

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v8, Lio/reactivex/internal/operators/flowable/j4$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/j4;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/j4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/j4;->e:Lio/reactivex/h0;

    invoke-virtual {v1}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v6

    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/j4;->f:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/j4$a;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;Z)V

    invoke-virtual {v0, v8}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
