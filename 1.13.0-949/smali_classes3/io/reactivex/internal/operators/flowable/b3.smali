.class public final Lio/reactivex/internal/operators/flowable/b3;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableRepeatUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/b3$a;
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
.field final c:Ln7/e;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/b3;->c:Ln7/e;

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/flowable/b3$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/b3;->c:Ln7/e;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/internal/operators/flowable/b3$a;-><init>(Lorg/reactivestreams/d;Ln7/e;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/c;)V

    .line 4
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/b3$a;->a()V

    return-void
.end method
