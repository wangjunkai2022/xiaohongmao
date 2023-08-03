.class final Lio/reactivex/internal/operators/flowable/w$e;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "FlowableConcatMap.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/o<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final l:J = 0xc75368d015d6d3dL


# instance fields
.field final j:Lio/reactivex/internal/operators/flowable/w$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/w$f<",
            "TR;>;"
        }
    .end annotation
.end field

.field k:J


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/w$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/w$f<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w$e;->j:Lio/reactivex/internal/operators/flowable/w$f;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$e;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/w$e;->k:J

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->produced(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$e;->j:Lio/reactivex/internal/operators/flowable/w$f;

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/w$f;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$e;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/w$e;->k:J

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->produced(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$e;->j:Lio/reactivex/internal/operators/flowable/w$f;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/w$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$e;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$e;->k:J

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$e;->j:Lio/reactivex/internal/operators/flowable/w$f;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/w$f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/e;)V

    return-void
.end method
