.class final Lio/reactivex/internal/operators/completable/d$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableConcat.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "Lio/reactivex/g;",
        ">;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final l:J = 0x7d58c452a57faa4cL


# instance fields
.field final a:Lio/reactivex/d;

.field final b:I

.field final c:I

.field final d:Lio/reactivex/internal/operators/completable/d$a$a;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field f:I

.field g:I

.field h:Lo7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/o<",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field i:Lorg/reactivestreams/e;

.field volatile j:Z

.field volatile k:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/d$a;->a:Lio/reactivex/d;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/d$a;->b:I

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/completable/d$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/completable/d$a$a;-><init>(Lio/reactivex/internal/operators/completable/d$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/d$a;->d:Lio/reactivex/internal/operators/completable/d$a$a;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/d$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 6
    iput p2, p0, Lio/reactivex/internal/operators/completable/d$a;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/d$a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/d$a;->k:Z

    if-nez v0, :cond_5

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/d$a;->j:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/d$a;->h:Lo7/o;

    invoke-interface {v1}, Lo7/o;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_3
    return-void

    :cond_4
    if-nez v4, :cond_5

    .line 8
    iput-boolean v3, p0, Lio/reactivex/internal/operators/completable/d$a;->k:Z

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->d:Lio/reactivex/internal/operators/completable/d$a$a;

    invoke-interface {v1, v0}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/d$a;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/d$a;->c(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/d$a;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/d$a;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(Lio/reactivex/g;)V
    .locals 1

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/completable/d$a;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->h:Lo7/o;

    invoke-interface {v0, p1}, Lo7/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/d$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/d$a;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->i:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->d:Lio/reactivex/internal/operators/completable/d$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/completable/d$a;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget v0, p0, Lio/reactivex/internal/operators/completable/d$a;->g:I

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/reactivex/internal/operators/completable/d$a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/reactivex/internal/operators/completable/d$a;->g:I

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/d$a;->i:Lorg/reactivestreams/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lio/reactivex/internal/operators/completable/d$a;->g:I

    :cond_1
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->d:Lio/reactivex/internal/operators/completable/d$a$a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/d$a;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/d$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->d:Lio/reactivex/internal/operators/completable/d$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/g;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/d$a;->d(Lio/reactivex/g;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->i:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/d$a;->i:Lorg/reactivestreams/e;

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/completable/d$a;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    .line 4
    :goto_0
    instance-of v0, p1, Lo7/l;

    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    check-cast v0, Lo7/l;

    const/4 v4, 0x3

    .line 6
    invoke-interface {v0, v4}, Lo7/k;->requestFusion(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 7
    iput v4, p0, Lio/reactivex/internal/operators/completable/d$a;->f:I

    .line 8
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->h:Lo7/o;

    .line 9
    iput-boolean v5, p0, Lio/reactivex/internal/operators/completable/d$a;->j:Z

    .line 10
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/d$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/d$a;->a()V

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 12
    iput v4, p0, Lio/reactivex/internal/operators/completable/d$a;->f:I

    .line 13
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->h:Lo7/o;

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 15
    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/e;->request(J)V

    return-void

    .line 16
    :cond_2
    iget v0, p0, Lio/reactivex/internal/operators/completable/d$a;->b:I

    if-ne v0, v1, :cond_3

    .line 17
    new-instance v0, Lio/reactivex/internal/queue/b;

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->h:Lo7/o;

    goto :goto_1

    .line 18
    :cond_3
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/completable/d$a;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->h:Lo7/o;

    .line 19
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 20
    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/e;->request(J)V

    :cond_4
    return-void
.end method
