.class final Lio/reactivex/rxjava3/internal/operators/flowable/n$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableBufferBoundary.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/n$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final o:J = -0x757ec2d16eaff404L


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TC;>;"
        }
    .end annotation
.end field

.field final b:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final d:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TOpen;+",
            "Lorg/reactivestreams/c<",
            "+TClose;>;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/rxjava3/disposables/c;

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field volatile i:Z

.field final j:Lio/reactivex/rxjava3/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "TC;>;"
        }
    .end annotation
.end field

.field volatile k:Z

.field l:J

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TC;>;"
        }
    .end annotation
.end field

.field n:J


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lorg/reactivestreams/c;Lq7/o;Lq7/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "bufferOpen",
            "bufferClose",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TC;>;",
            "Lorg/reactivestreams/c<",
            "+TOpen;>;",
            "Lq7/o<",
            "-TOpen;+",
            "Lorg/reactivestreams/c<",
            "+TClose;>;>;",
            "Lq7/s<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->a:Lorg/reactivestreams/d;

    .line 3
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->b:Lq7/s;

    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->c:Lorg/reactivestreams/c;

    .line 5
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->d:Lq7/o;

    .line 6
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result p2

    invoke-direct {p1, p2}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->j:Lio/reactivex/rxjava3/internal/queue/b;

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 11
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/rxjava3/disposables/f;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subscriber",
            "ex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 3
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method b(Lio/reactivex/rxjava3/internal/operators/flowable/n$b;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "closer",
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/n$b<",
            "TT;TC;>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/c;->g()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->j:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 9
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->i:Z

    .line 10
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method c()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->n:J

    .line 3
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->a:Lorg/reactivestreams/d;

    .line 4
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->j:Lio/reactivex/rxjava3/internal/queue/b;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 5
    :cond_1
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :goto_0
    cmp-long v8, v0, v6

    if-eqz v8, :cond_7

    .line 6
    iget-boolean v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->k:Z

    if-eqz v9, :cond_2

    .line 7
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    return-void

    .line 8
    :cond_2
    iget-boolean v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->i:Z

    if-eqz v9, :cond_3

    .line 9
    iget-object v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 10
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    if-nez v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    .line 13
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    :cond_5
    if-eqz v11, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    invoke-interface {v2, v10}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    :cond_7
    :goto_2
    if-nez v8, :cond_a

    .line 15
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->k:Z

    if-eqz v6, :cond_8

    .line 16
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    return-void

    .line 17
    :cond_8
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->i:Z

    if-eqz v6, :cond_a

    .line 18
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 19
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 20
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lorg/reactivestreams/d;)V

    return-void

    .line 21
    :cond_9
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/queue/b;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 22
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    .line 23
    :cond_a
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->n:J

    neg-int v5, v5

    .line 24
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->k:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 4
    monitor-enter p0

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->j:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method d(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->b:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null Collection"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->d:Lq7/o;

    invoke-interface {v1, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The bufferClose returned a null Publisher"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    .line 4
    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->l:J

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/n$b;

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/n$b;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/n$a;J)V

    .line 11
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 12
    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 16
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method e(Lio/reactivex/rxjava3/internal/operators/flowable/n$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/n$a$a<",
            "TOpen;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/c;->g()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->i:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->c()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 6
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->j:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->i:Z

    .line 10
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 3
    monitor-enter p0

    const/4 p1, 0x0

    .line 4
    :try_start_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->i:Z

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->c()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/n$a;)V

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 4
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->c:Lorg/reactivestreams/c;

    invoke-interface {v1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/n$a;->c()V

    return-void
.end method
