.class final Lio/reactivex/rxjava3/internal/operators/parallel/j$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ParallelJoin.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/parallel/j;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/e;",
        ">;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final f:J = 0x74b67204a49678c3L


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/parallel/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/parallel/j$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field d:J

.field volatile e:Lio/reactivex/rxjava3/internal/fuseable/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/parallel/j$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/parallel/j$c<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->a:Lio/reactivex/rxjava3/internal/operators/parallel/j$c;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->b:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method b()Lio/reactivex/rxjava3/internal/fuseable/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 3
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    :cond_0
    return-object v0
.end method

.method public c(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->d:J

    add-long/2addr v0, p1

    .line 2
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->c:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->d:J

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/e;

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 5
    :cond_0
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->d:J

    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->d:J

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/e;

    invoke-interface {v2, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 5
    :cond_0
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->d:J

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->a:Lio/reactivex/rxjava3/internal/operators/parallel/j$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->a:Lio/reactivex/rxjava3/internal/operators/parallel/j$c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->a:Lio/reactivex/rxjava3/internal/operators/parallel/j$c;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->h(Lio/reactivex/rxjava3/internal/operators/parallel/j$a;Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j$a;->b:I

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;J)Z

    return-void
.end method
