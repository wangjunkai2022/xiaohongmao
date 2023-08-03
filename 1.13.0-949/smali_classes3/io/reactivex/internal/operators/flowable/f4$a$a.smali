.class final Lio/reactivex/internal/operators/flowable/f4$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableTakeUntil.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/f4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/e;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:J = -0x31dc445a260f2f32L


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/f4$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/f4$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f4$a$a;->a:Lio/reactivex/internal/operators/flowable/f4$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f4$a$a;->a:Lio/reactivex/internal/operators/flowable/f4$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/f4$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f4$a$a;->a:Lio/reactivex/internal/operators/flowable/f4$a;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/f4$a;->a:Lorg/reactivestreams/d;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/f4$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v1, v0, v2}, Lio/reactivex/internal/util/h;->b(Lorg/reactivestreams/d;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f4$a$a;->a:Lio/reactivex/internal/operators/flowable/f4$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/f4$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f4$a$a;->a:Lio/reactivex/internal/operators/flowable/f4$a;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/f4$a;->a:Lorg/reactivestreams/d;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/f4$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/h;->d(Lorg/reactivestreams/d;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/f4$a$a;->onComplete()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;J)Z

    return-void
.end method
