.class final Lio/reactivex/internal/operators/flowable/p2$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowablePublish.java"

# interfaces
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final d:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile b:Lio/reactivex/internal/operators/flowable/p2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/p2$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/p2$b;->a:Lorg/reactivestreams/d;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p2$b;->b:Lio/reactivex/internal/operators/flowable/p2$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/p2$c;->d(Lio/reactivex/internal/operators/flowable/p2$b;)V

    .line 5
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/p2$c;->c()V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/b;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/p2$b;->b:Lio/reactivex/internal/operators/flowable/p2$c;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/p2$c;->c()V

    :cond_0
    return-void
.end method
