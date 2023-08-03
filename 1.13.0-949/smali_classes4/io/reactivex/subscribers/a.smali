.class public abstract Lio/reactivex/subscribers/a;
.super Ljava/lang/Object;
.source "DefaultSubscriber.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lorg/reactivestreams/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/subscribers/a;->a:Lorg/reactivestreams/e;

    .line 2
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v1, p0, Lio/reactivex/subscribers/a;->a:Lorg/reactivestreams/e;

    .line 3
    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    return-void
.end method

.method protected b()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/reactivex/subscribers/a;->c(J)V

    return-void
.end method

.method protected final c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/subscribers/a;->a:Lorg/reactivestreams/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/subscribers/a;->a:Lorg/reactivestreams/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/f;->f(Lorg/reactivestreams/e;Lorg/reactivestreams/e;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/subscribers/a;->a:Lorg/reactivestreams/e;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/subscribers/a;->b()V

    :cond_0
    return-void
.end method
