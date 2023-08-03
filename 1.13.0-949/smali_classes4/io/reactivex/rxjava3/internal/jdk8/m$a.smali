.class final Lio/reactivex/rxjava3/internal/jdk8/m$a;
.super Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;
.source "MaybeFlattenStreamAsFlowable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/y;
.implements Lio/reactivex/rxjava3/core/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/jdk8/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription<",
        "TR;>;",
        "Lio/reactivex/rxjava3/core/y<",
        "TT;>;",
        "Lio/reactivex/rxjava3/core/s0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final l:J = 0x662fd31506471dfbL


# instance fields
.field final b:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Lio/reactivex/rxjava3/disposables/f;

.field volatile f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field g:Ljava/lang/AutoCloseable;

.field h:Z

.field volatile i:Z

.field j:Z

.field k:J


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downstream",
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b:Lorg/reactivestreams/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->c:Lq7/o;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method b()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b:Lorg/reactivestreams/d;

    .line 3
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->k:J

    .line 4
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 5
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->f:Ljava/util/Iterator;

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    if-eqz v8, :cond_2

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->clear()V

    goto :goto_1

    .line 8
    :cond_2
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->j:Z

    if-eqz v8, :cond_3

    if-eqz v5, :cond_7

    const/4 v3, 0x0

    .line 9
    invoke-interface {v0, v3}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 10
    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_7

    cmp-long v8, v1, v3

    if-eqz v8, :cond_7

    .line 11
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-boolean v9, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    if-eqz v9, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v0, v8}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 14
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    if-eqz v8, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-boolean v9, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    if-eqz v9, :cond_6

    goto :goto_0

    :cond_6
    if-nez v8, :cond_1

    .line 17
    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    .line 18
    iput-boolean v6, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    goto :goto_0

    :catchall_0
    move-exception v8

    .line 19
    invoke-static {v8}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 20
    invoke-interface {v0, v8}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 21
    iput-boolean v6, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    goto :goto_0

    :catchall_1
    move-exception v8

    .line 22
    invoke-static {v8}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 23
    invoke-interface {v0, v8}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 24
    iput-boolean v6, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    goto :goto_0

    .line 25
    :cond_7
    :goto_1
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->k:J

    neg-int v3, v7

    .line 26
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_8

    return-void

    .line 27
    :cond_8
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    if-nez v5, :cond_1

    .line 28
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->f:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->i:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->e:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 3
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->j:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->f:Ljava/util/Iterator;

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->g:Ljava/lang/AutoCloseable;

    .line 3
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->g:Ljava/lang/AutoCloseable;

    .line 4
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->j(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->f:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->h:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->clear()V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method j(Ljava/lang/AutoCloseable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/f;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->e:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->e:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->c:Lq7/o;

    invoke-interface {v0, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Stream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/stream/Stream;

    .line 2
    invoke-interface {p1}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->j(Ljava/lang/AutoCloseable;)V

    return-void

    .line 6
    :cond_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->f:Ljava/util/Iterator;

    .line 7
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->g:Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->f:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->h:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->clear()V

    return-object v1

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->h:Z

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/m$a;->b()V

    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/jdk8/m$a;->j:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
