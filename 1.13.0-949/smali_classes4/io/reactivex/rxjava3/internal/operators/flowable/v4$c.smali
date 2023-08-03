.class final Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableWindow.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final j:J = -0x7a066e1378289dc0L


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final f:I

.field g:J

.field h:Lorg/reactivestreams/e;

.field i:Lio/reactivex/rxjava3/processors/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "size",
            "skip",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->a:Lorg/reactivestreams/d;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->b:J

    .line 4
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->c:J

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->f:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->run()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->i:Lio/reactivex/rxjava3/processors/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->i:Lio/reactivex/rxjava3/processors/h;

    .line 3
    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->a:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->i:Lio/reactivex/rxjava3/processors/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->i:Lio/reactivex/rxjava3/processors/h;

    .line 3
    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
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

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->g:J

    .line 2
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->i:Lio/reactivex/rxjava3/processors/h;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-nez v6, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->f:I

    invoke-static {v2, p0}, Lio/reactivex/rxjava3/processors/h;->o9(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/h;

    move-result-object v2

    .line 5
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->i:Lio/reactivex/rxjava3/processors/h;

    .line 6
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/y4;

    invoke-direct {v6, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;-><init>(Lio/reactivex/rxjava3/processors/c;)V

    .line 7
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->a:Lorg/reactivestreams/d;

    invoke-interface {v7, v6}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/processors/h;->onNext(Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->b:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_2

    .line 10
    iput-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->i:Lio/reactivex/rxjava3/processors/h;

    .line 11
    invoke-virtual {v2}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    .line 12
    :cond_2
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->c:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_3

    .line 13
    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->g:J

    goto :goto_1

    .line 14
    :cond_3
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->g:J

    :goto_1
    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;->g9()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, v6, Lio/reactivex/rxjava3/internal/operators/flowable/y4;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-interface {p1}, Lorg/reactivestreams/d;->onComplete()V

    :cond_4
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->h:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->h:Lorg/reactivestreams/e;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 6
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

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->b:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->d(JJ)J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->c:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 5
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->c(JJ)J

    move-result-wide p1

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->h:Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->d(JJ)J

    move-result-wide p1

    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->h:Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;->h:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    :cond_0
    return-void
.end method
