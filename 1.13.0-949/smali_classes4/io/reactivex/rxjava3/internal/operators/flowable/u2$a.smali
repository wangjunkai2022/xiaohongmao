.class final Lio/reactivex/rxjava3/internal/operators/flowable/u2$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowablePublish.java"

# interfaces
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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
.field private static final d:J = 0x277b78b9467deaa9L


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/u2$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downstream",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/internal/operators/flowable/u2$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u2$a;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u2$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u2$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;->d(Lio/reactivex/rxjava3/internal/operators/flowable/u2$a;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u2$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;->c()V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u2$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/u2$b;->c()V

    :cond_0
    return-void
.end method
