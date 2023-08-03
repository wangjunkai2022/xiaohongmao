.class final Lio/reactivex/internal/operators/flowable/y4$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableWithLatestFromMany.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/y4;
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
        ">;"
    }
.end annotation


# static fields
.field private static final d:J = 0x2d3210de62c61a18L


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/y4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/y4$b<",
            "**>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/y4$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/y4$b<",
            "**>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/y4$c;->a:Lio/reactivex/internal/operators/flowable/y4$b;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/y4$c;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/y4$c;->a:Lio/reactivex/internal/operators/flowable/y4$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/y4$c;->b:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/y4$c;->c:Z

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/y4$b;->b(IZ)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/y4$c;->a:Lio/reactivex/internal/operators/flowable/y4$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/y4$c;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/flowable/y4$b;->c(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/y4$c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/y4$c;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/y4$c;->a:Lio/reactivex/internal/operators/flowable/y4$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/y4$c;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/flowable/y4$b;->d(ILjava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;J)Z

    return-void
.end method
