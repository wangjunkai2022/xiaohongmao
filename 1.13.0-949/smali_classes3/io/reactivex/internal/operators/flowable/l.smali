.class public final Lio/reactivex/internal/operators/flowable/l;
.super Ljava/lang/Object;
.source "FlowableBlockingSubscribe.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/reactivestreams/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/util/d;

    invoke-direct {v0}, Lio/reactivex/internal/util/d;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/subscribers/LambdaSubscriber;

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/functions/a;->l:Ln7/g;

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/internal/subscribers/LambdaSubscriber;-><init>(Ln7/g;Ln7/g;Ln7/a;Ln7/g;)V

    .line 3
    invoke-interface {p0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 4
    invoke-static {v0, v1}, Lio/reactivex/internal/util/c;->a(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/disposables/c;)V

    .line 5
    iget-object p0, v0, Lio/reactivex/internal/util/d;->a:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Lorg/reactivestreams/c;Ln7/g;Ln7/g;Ln7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/subscribers/LambdaSubscriber;

    sget-object v1, Lio/reactivex/internal/functions/a;->l:Ln7/g;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/internal/subscribers/LambdaSubscriber;-><init>(Ln7/g;Ln7/g;Ln7/a;Ln7/g;)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/l;->d(Lorg/reactivestreams/c;Lorg/reactivestreams/d;)V

    return-void
.end method

.method public static c(Lorg/reactivestreams/c;Ln7/g;Ln7/g;Ln7/a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            "I)V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "number > 0 required"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/subscribers/BoundedSubscriber;

    invoke-static {p4}, Lio/reactivex/internal/functions/a;->d(I)Ln7/g;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/subscribers/BoundedSubscriber;-><init>(Ln7/g;Ln7/g;Ln7/a;Ln7/g;I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/l;->d(Lorg/reactivestreams/c;Lorg/reactivestreams/d;)V

    return-void
.end method

.method public static d(Lorg/reactivestreams/c;Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/subscribers/BlockingSubscriber;

    invoke-direct {v1, v0}, Lio/reactivex/internal/subscribers/BlockingSubscriber;-><init>(Ljava/util/Queue;)V

    .line 3
    invoke-interface {p0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    .line 6
    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/c;->b()V

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    .line 9
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    sget-object v2, Lio/reactivex/internal/subscribers/BlockingSubscriber;->TERMINATED:Ljava/lang/Object;

    if-eq p0, v2, :cond_5

    .line 11
    invoke-static {p0, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lorg/reactivestreams/d;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->cancel()V

    .line 13
    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method
