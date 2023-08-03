.class final Lio/reactivex/internal/operators/flowable/t4$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableWindowBoundary.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/reactivestreams/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final m:J = 0x1efd47eb1fc2a3a0L

.field static final n:Ljava/lang/Object;


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lio/reactivex/internal/operators/flowable/t4$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/t4$a<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/util/AtomicThrowable;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile j:Z

.field k:Lio/reactivex/processors/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/t4$b;->n:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->a:Lorg/reactivestreams/d;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/t4$b;->b:I

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/flowable/t4$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/t4$a;-><init>(Lio/reactivex/internal/operators/flowable/t4$b;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->c:Lio/reactivex/internal/operators/flowable/t4$a;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p1, Lio/reactivex/internal/queue/a;

    invoke-direct {p1}, Lio/reactivex/internal/queue/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->f:Lio/reactivex/internal/queue/a;

    .line 8
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->g:Lio/reactivex/internal/util/AtomicThrowable;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method a()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->a:Lorg/reactivestreams/d;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->f:Lio/reactivex/internal/queue/a;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t4$b;->g:Lio/reactivex/internal/util/AtomicThrowable;

    .line 5
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/t4$b;->l:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/t4$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 7
    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->clear()V

    .line 8
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/t4$b;->k:Lio/reactivex/processors/h;

    return-void

    .line 9
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/t4$b;->k:Lio/reactivex/processors/h;

    .line 10
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/t4$b;->j:Z

    if-eqz v9, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 12
    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->clear()V

    .line 13
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v7, :cond_3

    .line 14
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/t4$b;->k:Lio/reactivex/processors/h;

    .line 15
    invoke-virtual {v7, v1}, Lio/reactivex/processors/h;->onError(Ljava/lang/Throwable;)V

    .line 16
    :cond_3
    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    .line 18
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_6

    .line 19
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/t4$b;->k:Lio/reactivex/processors/h;

    .line 20
    invoke-virtual {v7}, Lio/reactivex/processors/h;->onComplete()V

    .line 21
    :cond_6
    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 22
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/t4$b;->k:Lio/reactivex/processors/h;

    .line 23
    invoke-virtual {v7, v1}, Lio/reactivex/processors/h;->onError(Ljava/lang/Throwable;)V

    .line 24
    :cond_8
    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v11, :cond_a

    .line 25
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/t4$b;->l:J

    neg-int v6, v6

    .line 26
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 27
    :cond_a
    sget-object v9, Lio/reactivex/internal/operators/flowable/t4$b;->n:Ljava/lang/Object;

    if-eq v10, v9, :cond_b

    .line 28
    invoke-virtual {v7, v10}, Lio/reactivex/processors/h;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    .line 29
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/t4$b;->k:Lio/reactivex/processors/h;

    .line 30
    invoke-virtual {v7}, Lio/reactivex/processors/h;->onComplete()V

    .line 31
    :cond_c
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/t4$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    .line 32
    iget v7, p0, Lio/reactivex/internal/operators/flowable/t4$b;->b:I

    invoke-static {v7, p0}, Lio/reactivex/processors/h;->U8(ILjava/lang/Runnable;)Lio/reactivex/processors/h;

    move-result-object v7

    .line 33
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/t4$b;->k:Lio/reactivex/processors/h;

    .line 34
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/t4$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 35
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/t4$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-eqz v10, :cond_d

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 36
    invoke-interface {v0, v7}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 37
    :cond_d
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/t4$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 38
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/t4$b;->c:Lio/reactivex/internal/operators/flowable/t4$a;

    invoke-virtual {v7}, Lio/reactivex/subscribers/b;->dispose()V

    .line 39
    new-instance v7, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 40
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/t4$b;->j:Z

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->j:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t4$b;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->j:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t4$b;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->c:Lio/reactivex/internal/operators/flowable/t4$a;

    invoke-virtual {v0}, Lio/reactivex/subscribers/b;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->f:Lio/reactivex/internal/queue/a;

    sget-object v1, Lio/reactivex/internal/operators/flowable/t4$b;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t4$b;->a()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->c:Lio/reactivex/internal/operators/flowable/t4$a;

    invoke-virtual {v0}, Lio/reactivex/subscribers/b;->dispose()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->j:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t4$b;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->c:Lio/reactivex/internal/operators/flowable/t4$a;

    invoke-virtual {v0}, Lio/reactivex/subscribers/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/t4$b;->j:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t4$b;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->f:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t4$b;->a()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;J)Z

    return-void
.end method

.method public request(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t4$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
