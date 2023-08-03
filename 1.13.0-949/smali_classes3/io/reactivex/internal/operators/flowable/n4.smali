.class public final Lio/reactivex/internal/operators/flowable/n4;
.super Lio/reactivex/j;
.source "FlowableTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/n4$a;
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

.field final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/n4;->c:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/n4;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/n4;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 4
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
    new-instance v0, Lio/reactivex/internal/operators/flowable/n4$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/n4$a;-><init>(Lorg/reactivestreams/d;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/n4;->b:Lio/reactivex/h0;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/n4;->c:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/n4;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/n4$a;->a(Lio/reactivex/disposables/c;)V

    return-void
.end method
