.class final Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableDebounceTimed.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final i:J = -0x7e5310a1f6e139dcL


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/rxjava3/core/o0$c;

.field e:Lorg/reactivestreams/e;

.field f:Lio/reactivex/rxjava3/disposables/f;

.field volatile g:J

.field h:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;)V
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
            "timeout",
            "unit",
            "worker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->a:Lorg/reactivestreams/d;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->d:Lio/reactivex/rxjava3/core/o0$c;

    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;Lio/reactivex/rxjava3/internal/operators/flowable/g0$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "t",
            "emitter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g0$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->g:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p3}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 p1, 0x1

    .line 4
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 5
    invoke-virtual {p4}, Lio/reactivex/rxjava3/internal/operators/flowable/g0$a;->dispose()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->cancel()V

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->a:Lorg/reactivestreams/d;

    new-instance p2, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const-string p3, "Could not deliver value due to lack of requests"

    invoke-direct {p2, p3}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->e:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->h:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->f:Lio/reactivex/rxjava3/disposables/f;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 5
    :cond_1
    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$a;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g0$a;->a()V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->h:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->f:Lio/reactivex/rxjava3/disposables/f;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 6
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->g:J

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->f:Lio/reactivex/rxjava3/disposables/f;

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 6
    :cond_1
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/g0$a;

    invoke-direct {v2, p1, v0, v1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g0$a;-><init>(Ljava/lang/Object;JLio/reactivex/rxjava3/internal/operators/flowable/g0$b;)V

    .line 7
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->f:Lio/reactivex/rxjava3/disposables/f;

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->d:Lio/reactivex/rxjava3/core/o0$c;

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->b:J

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g0$a;->b(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->e:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->e:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g0$b;->a:Lorg/reactivestreams/d;

    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
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
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
