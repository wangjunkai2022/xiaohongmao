.class final Lio/reactivex/internal/operators/flowable/b1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMapCompletableCompletable.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/b1$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final i:J = 0x752c1ce874ed53bfL


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/internal/util/AtomicThrowable;

.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Lio/reactivex/disposables/b;

.field final f:I

.field g:Lorg/reactivestreams/e;

.field volatile h:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;Ln7/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->a:Lio/reactivex/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/b1$a;->c:Ln7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/b1$a;->d:Z

    .line 5
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Lio/reactivex/disposables/b;

    invoke-direct {p1}, Lio/reactivex/disposables/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->e:Lio/reactivex/disposables/b;

    .line 7
    iput p4, p0, Lio/reactivex/internal/operators/flowable/b1$a;->f:I

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/flowable/b1$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/b1$a<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/b;->c(Lio/reactivex/disposables/c;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/b1$a;->onComplete()V

    return-void
.end method

.method b(Lio/reactivex/internal/operators/flowable/b1$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/b1$a<",
            "TT;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/b;->c(Lio/reactivex/disposables/c;)Z

    .line 2
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/flowable/b1$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->h:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->g:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->f:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->g:Lorg/reactivestreams/e;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/e;->request(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->d:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->f:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->g:Lorg/reactivestreams/e;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/b1$a;->dispose()V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 10
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->c:Ln7/o;

    invoke-interface {v0, p1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/b1$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/b1$a$a;-><init>(Lio/reactivex/internal/operators/flowable/b1$a;)V

    .line 4
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->g:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/b1$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->g:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b1$a;->g:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 4
    iget v0, p0, Lio/reactivex/internal/operators/flowable/b1$a;->f:I

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
