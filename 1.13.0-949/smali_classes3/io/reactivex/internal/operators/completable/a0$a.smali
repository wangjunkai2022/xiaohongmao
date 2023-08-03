.class final Lio/reactivex/internal/operators/completable/a0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableMerge.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/a0$a$a;
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
.field private static final g:J = -0x1d42b216fe3a6372L


# instance fields
.field final a:Lio/reactivex/d;

.field final b:I

.field final c:Z

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Lio/reactivex/disposables/b;

.field f:Lorg/reactivestreams/e;


# direct methods
.method constructor <init>(Lio/reactivex/d;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/a0$a;->b:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/completable/a0$a;->c:Z

    .line 5
    new-instance p1, Lio/reactivex/disposables/b;

    invoke-direct {p1}, Lio/reactivex/disposables/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/completable/a0$a$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/b;->c(Lio/reactivex/disposables/c;)Z

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    invoke-interface {p1}, Lio/reactivex/d;->onComplete()V

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->b:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->f:Lorg/reactivestreams/e;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method b(Lio/reactivex/internal/operators/completable/a0$a$a;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/b;->c(Lio/reactivex/disposables/c;)Z

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->c:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->f:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {p1}, Lio/reactivex/disposables/b;->dispose()V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    iget-object p2, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    iget-object p2, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    iget p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->b:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_4

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->f:Lorg/reactivestreams/e;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {p2}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lio/reactivex/g;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/a0$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/a0$a$a;-><init>(Lio/reactivex/internal/operators/completable/a0$a;)V

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->f:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/g;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/a0$a;->c(Lio/reactivex/g;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->f:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a;->f:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 4
    iget v0, p0, Lio/reactivex/internal/operators/completable/a0$a;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 6
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method
