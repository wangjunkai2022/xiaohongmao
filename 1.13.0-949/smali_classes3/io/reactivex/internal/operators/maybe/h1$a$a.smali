.class final Lio/reactivex/internal/operators/maybe/h1$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeTakeUntilPublisher.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/h1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/e;",
        ">;",
        "Lio/reactivex/o<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final b:J = -0x1191e1deb0e3c2ebL


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/h1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/h1$a<",
            "*TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/h1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/h1$a<",
            "*TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/h1$a$a;->a:Lio/reactivex/internal/operators/maybe/h1$a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/h1$a$a;->a:Lio/reactivex/internal/operators/maybe/h1$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/h1$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/h1$a$a;->a:Lio/reactivex/internal/operators/maybe/h1$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/h1$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/h1$a$a;->a:Lio/reactivex/internal/operators/maybe/h1$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/h1$a;->a()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;J)Z

    return-void
.end method
