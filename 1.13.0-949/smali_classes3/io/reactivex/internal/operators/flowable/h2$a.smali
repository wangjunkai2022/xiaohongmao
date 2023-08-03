.class abstract Lio/reactivex/internal/operators/flowable/h2$a;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableObserveOn.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final o:J = -0x725dec0716520049L


# instance fields
.field final b:Lio/reactivex/h0$c;

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field g:Lorg/reactivestreams/e;

.field h:Lo7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile i:Z

.field volatile j:Z

.field k:Ljava/lang/Throwable;

.field l:I

.field m:J

.field n:Z


# direct methods
.method constructor <init>(Lio/reactivex/h0$c;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->b:Lio/reactivex/h0$c;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/h2$a;->c:Z

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/h2$a;->d:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 6
    iput p3, p0, Lio/reactivex/internal/operators/flowable/h2$a;->e:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->i:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->g:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->b:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 5
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->h:Lo7/o;

    invoke-interface {v0}, Lo7/o;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->h:Lo7/o;

    invoke-interface {v0}, Lo7/o;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->h:Lo7/o;

    invoke-interface {v0}, Lo7/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final j(ZZLorg/reactivestreams/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/d<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->c:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->i:Z

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Lorg/reactivestreams/d;->onComplete()V

    .line 8
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->b:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->i:Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->clear()V

    .line 12
    invoke-interface {p3, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->b:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->i:Z

    .line 15
    invoke-interface {p3}, Lorg/reactivestreams/d;->onComplete()V

    .line 16
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->b:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method abstract k()V
.end method

.method abstract l()V
.end method

.method abstract m()V
.end method

.method final n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->b:Lio/reactivex/h0$c;

    invoke-virtual {v0, p0}, Lio/reactivex/h0$c;->b(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->j:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->n()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->j:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->n()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->n()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->h:Lo7/o;

    invoke-interface {v0, p1}, Lo7/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->g:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 6
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->j:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->n()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->n()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/h2$a;->n:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->n:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->l()V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/h2$a;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->m()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h2$a;->k()V

    :goto_0
    return-void
.end method
