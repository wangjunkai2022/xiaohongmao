.class public final Lio/reactivex/rxjava3/internal/operators/observable/l;
.super Ljava/lang/Object;
.source "ObservableBlockingSubscribe.java"


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

.method public static a(Lio/reactivex/rxjava3/core/l0;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/util/d;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/d;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lq7/g;Lq7/g;Lq7/a;Lq7/g;)V

    .line 4
    invoke-interface {p0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 5
    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/util/c;->a(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/rxjava3/disposables/f;)V

    .line 6
    iget-object p0, v0, Lio/reactivex/rxjava3/internal/util/d;->a:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/g;->i(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/observers/BlockingObserver;

    invoke-direct {v1, v0}, Lio/reactivex/rxjava3/internal/observers/BlockingObserver;-><init>(Ljava/util/Queue;)V

    .line 3
    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    invoke-interface {p0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/observers/BlockingObserver;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/observers/BlockingObserver;->dispose()V

    .line 9
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/observers/BlockingObserver;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lio/reactivex/rxjava3/internal/observers/BlockingObserver;->TERMINATED:Ljava/lang/Object;

    if-eq p0, v2, :cond_3

    .line 11
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/rxjava3/core/n0;)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lio/reactivex/rxjava3/core/l0;Lq7/g;Lq7/g;Lq7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "o",
            "onNext",
            "onError",
            "onComplete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lq7/g;Lq7/g;Lq7/a;Lq7/g;)V

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/l;->b(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
