.class final Lio/reactivex/internal/operators/flowable/v4$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableWindowBoundarySupplier.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/reactivestreams/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/v4;
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
.field private static final n:J = 0x1efd47eb1fc2a3a0L

.field static final o:Lio/reactivex/internal/operators/flowable/v4$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/v4$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final p:Ljava/lang/Object;


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

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/v4$a<",
            "TT;TB;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/internal/util/AtomicThrowable;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lorg/reactivestreams/c<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field j:Lorg/reactivestreams/e;

.field volatile k:Z

.field l:Lio/reactivex/processors/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/v4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/v4$a;-><init>(Lio/reactivex/internal/operators/flowable/v4$b;)V

    sput-object v0, Lio/reactivex/internal/operators/flowable/v4$b;->o:Lio/reactivex/internal/operators/flowable/v4$a;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/v4$b;->p:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;I",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lorg/reactivestreams/c<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->a:Lorg/reactivestreams/d;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/v4$b;->b:I

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p1, Lio/reactivex/internal/queue/a;

    invoke-direct {p1}, Lio/reactivex/internal/queue/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->e:Lio/reactivex/internal/queue/a;

    .line 7
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/v4$b;->h:Ljava/util/concurrent/Callable;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/v4$b;->o:Lio/reactivex/internal/operators/flowable/v4$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/c;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->a:Lorg/reactivestreams/d;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->e:Lio/reactivex/internal/queue/a;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/v4$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    .line 5
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/v4$b;->m:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/v4$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 7
    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->clear()V

    .line 8
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/v4$b;->l:Lio/reactivex/processors/h;

    return-void

    .line 9
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/v4$b;->l:Lio/reactivex/processors/h;

    .line 10
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/v4$b;->k:Z

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
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/v4$b;->l:Lio/reactivex/processors/h;

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
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/v4$b;->l:Lio/reactivex/processors/h;

    .line 20
    invoke-virtual {v7}, Lio/reactivex/processors/h;->onComplete()V

    .line 21
    :cond_6
    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 22
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/v4$b;->l:Lio/reactivex/processors/h;

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
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/v4$b;->m:J

    neg-int v6, v6

    .line 26
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 27
    :cond_a
    sget-object v9, Lio/reactivex/internal/operators/flowable/v4$b;->p:Ljava/lang/Object;

    if-eq v10, v9, :cond_b

    .line 28
    invoke-virtual {v7, v10}, Lio/reactivex/processors/h;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    .line 29
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/v4$b;->l:Lio/reactivex/processors/h;

    .line 30
    invoke-virtual {v7}, Lio/reactivex/processors/h;->onComplete()V

    .line 31
    :cond_c
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/v4$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    .line 32
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/v4$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v7, v3, v9

    if-eqz v7, :cond_d

    .line 33
    iget v7, p0, Lio/reactivex/internal/operators/flowable/v4$b;->b:I

    invoke-static {v7, p0}, Lio/reactivex/processors/h;->U8(ILjava/lang/Runnable;)Lio/reactivex/processors/h;

    move-result-object v7

    .line 34
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/v4$b;->l:Lio/reactivex/processors/h;

    .line 35
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/v4$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 36
    :try_start_0
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/v4$b;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v9}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "The other Callable returned a null Publisher"

    invoke-static {v9, v10}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    new-instance v10, Lio/reactivex/internal/operators/flowable/v4$a;

    invoke-direct {v10, p0}, Lio/reactivex/internal/operators/flowable/v4$a;-><init>(Lio/reactivex/internal/operators/flowable/v4$b;)V

    .line 38
    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/v4$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11, v8, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 39
    invoke-interface {v9, v10}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 40
    invoke-interface {v0, v7}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    .line 41
    invoke-static {v7}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 43
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/v4$b;->k:Z

    goto/16 :goto_0

    .line 44
    :cond_d
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/v4$b;->j:Lorg/reactivestreams/e;

    invoke-interface {v7}, Lorg/reactivestreams/e;->cancel()V

    .line 45
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->a()V

    .line 46
    new-instance v7, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 47
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/v4$b;->k:Z

    goto/16 :goto_0
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->j:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->k:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->b()V

    return-void
.end method

.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->j:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    :cond_0
    return-void
.end method

.method d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->j:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->k:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->b()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method e(Lio/reactivex/internal/operators/flowable/v4$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/v4$a<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->e:Lio/reactivex/internal/queue/a;

    sget-object v0, Lio/reactivex/internal/operators/flowable/v4$b;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->b()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->k:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->k:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->b()V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->e:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->b()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->j:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$b;->j:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->e:Lio/reactivex/internal/queue/a;

    sget-object v1, Lio/reactivex/internal/operators/flowable/v4$b;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/v4$b;->b()V

    const-wide v0, 0x7fffffffffffffffL

    .line 6
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$b;->j:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    :cond_0
    return-void
.end method
