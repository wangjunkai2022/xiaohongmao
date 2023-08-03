.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/y$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMapScheduler.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/r;
.implements Lio/reactivex/rxjava3/internal/operators/flowable/v$f;
.implements Lorg/reactivestreams/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/operators/flowable/v$f<",
        "TR;>;",
        "Lorg/reactivestreams/e;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final n:J = -0x30bac63fcc0431bbL


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/v$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Lio/reactivex/rxjava3/core/o0$c;

.field f:Lorg/reactivestreams/e;

.field g:I

.field h:Lio/reactivex/rxjava3/internal/fuseable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile i:Z

.field volatile j:Z

.field final k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field volatile l:Z

.field m:I


# direct methods
.method constructor <init>(Lq7/o;ILio/reactivex/rxjava3/core/o0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapper",
            "prefetch",
            "worker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I",
            "Lio/reactivex/rxjava3/core/o0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->b:Lq7/o;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->c:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->d:I

    .line 5
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/v$e;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/v$f;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->a:Lio/reactivex/rxjava3/internal/operators/flowable/v$e;

    .line 6
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->k:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 7
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e:Lio/reactivex/rxjava3/core/o0$c;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->l:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->d()V

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->d()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
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
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->d()V

    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->f:Lorg/reactivestreams/e;

    .line 3
    instance-of v0, p1, Lio/reactivex/rxjava3/internal/fuseable/n;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/n;

    const/4 v1, 0x7

    .line 5
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/internal/fuseable/m;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->m:I

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 8
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->i:Z

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e()V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->d()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 11
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->m:I

    .line 12
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 13
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e()V

    .line 14
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 16
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->e()V

    .line 17
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/y$b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_2
    return-void
.end method
