.class final Lio/reactivex/internal/operators/flowable/n1$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableGroupJoin.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/e;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final d:J = 0x1a24ec53e2780a15L


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/n1$b;

.field final b:Z

.field final c:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/n1$b;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n1$c;->a:Lio/reactivex/internal/operators/flowable/n1$b;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/n1$c;->b:Z

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/n1$c;->c:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n1$c;->a:Lio/reactivex/internal/operators/flowable/n1$b;

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/n1$c;->b:Z

    invoke-interface {v0, v1, p0}, Lio/reactivex/internal/operators/flowable/n1$b;->d(ZLio/reactivex/internal/operators/flowable/n1$c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n1$c;->a:Lio/reactivex/internal/operators/flowable/n1$b;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/n1$b;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/n1$c;->a:Lio/reactivex/internal/operators/flowable/n1$b;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/n1$c;->b:Z

    invoke-interface {p1, v0, p0}, Lio/reactivex/internal/operators/flowable/n1$b;->d(ZLio/reactivex/internal/operators/flowable/n1$c;)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;J)Z

    return-void
.end method
