.class public final Lio/reactivex/internal/operators/flowable/f3;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableRetryPredicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/f3$a;
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
.field final c:Ln7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:J


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLn7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/f3;->c:Ln7/r;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/f3;->d:J

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    .line 2
    invoke-interface {p1, v5}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    new-instance v7, Lio/reactivex/internal/operators/flowable/f3$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/f3;->d:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/f3;->c:Ln7/r;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/f3$a;-><init>(Lorg/reactivestreams/d;JLn7/r;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/c;)V

    .line 4
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/f3$a;->a()V

    return-void
.end method
