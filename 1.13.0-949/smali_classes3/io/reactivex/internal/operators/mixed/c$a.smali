.class final Lio/reactivex/internal/operators/mixed/c$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMapCompletable.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/c$a$a;
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
.field private static final m:J = 0x321c7f6dd838d46aL


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Lio/reactivex/internal/operators/mixed/c$a$a;

.field final f:I

.field final g:Lo7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lorg/reactivestreams/e;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z

.field l:I


# direct methods
.method constructor <init>(Lio/reactivex/d;Ln7/o;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/c$a;->b:Ln7/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/c$a;->f:I

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/mixed/c$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/mixed/c$a$a;-><init>(Lio/reactivex/internal/operators/mixed/c$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->e:Lio/reactivex/internal/operators/mixed/c$a$a;

    .line 8
    new-instance p1, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {p1, p4}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->k:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {v0}, Lo7/o;->clear()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->i:Z

    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {v0}, Lo7/o;->clear()V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->j:Z

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {v1}, Lo7/n;->poll()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :goto_1
    return-void

    :cond_5
    if-nez v4, :cond_7

    .line 15
    iget v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->f:I

    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v4

    .line 16
    iget v4, p0, Lio/reactivex/internal/operators/mixed/c$a;->l:I

    add-int/2addr v4, v3

    if-ne v4, v0, :cond_6

    .line 17
    iput v2, p0, Lio/reactivex/internal/operators/mixed/c$a;->l:I

    .line 18
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/c$a;->h:Lorg/reactivestreams/e;

    int-to-long v4, v0

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_2

    .line 19
    :cond_6
    iput v4, p0, Lio/reactivex/internal/operators/mixed/c$a;->l:I

    .line 20
    :goto_2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->b:Ln7/o;

    invoke-interface {v0, v1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null CompletableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/c$a;->i:Z

    .line 22
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->e:Lio/reactivex/internal/operators/mixed/c$a$a;

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 24
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {v1}, Lo7/o;->clear()V

    .line 25
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->h:Lorg/reactivestreams/e;

    invoke-interface {v1}, Lorg/reactivestreams/e;->cancel()V

    .line 26
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 27
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/c$a;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->h:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    sget-object v0, Lio/reactivex/internal/util/g;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {p1}, Lo7/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->i:Z

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/c$a;->a()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->k:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->h:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->e:Lio/reactivex/internal/operators/mixed/c$a$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/c$a$a;->a()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {v0}, Lo7/o;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->k:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/c$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->e:Lio/reactivex/internal/operators/mixed/c$a$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/c$a$a;->a()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    sget-object v0, Lio/reactivex/internal/util/g;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {p1}, Lo7/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->j:Z

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/c$a;->a()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
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
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->g:Lo7/n;

    invoke-interface {v0, p1}, Lo7/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/c$a;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->h:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/c$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->h:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/c$a;->h:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 4
    iget v0, p0, Lio/reactivex/internal/operators/mixed/c$a;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method
