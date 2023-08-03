.class final Lio/reactivex/internal/operators/flowable/z3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableSwitchMap.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/z3;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/e;",
        ">;",
        "Lio/reactivex/o<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final g:J = 0x3540c639803a63b9L


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/z3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/z3$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field volatile d:Lo7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/o<",
            "TR;>;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/z3$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/z3$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->a:Lio/reactivex/internal/operators/flowable/z3$b;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/z3$a;->b:J

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/z3$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/e;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->a:Lio/reactivex/internal/operators/flowable/z3$b;

    .line 2
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->b:J

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/z3$b;->k:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->e:Z

    .line 4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/z3$b;->b()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->a:Lio/reactivex/internal/operators/flowable/z3$b;

    .line 2
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->b:J

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/z3$b;->k:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean p1, v0, Lio/reactivex/internal/operators/flowable/z3$b;->d:Z

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/z3$b;->h:Lorg/reactivestreams/e;

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 5
    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/z3$b;->e:Z

    .line 6
    :cond_0
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->e:Z

    .line 7
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/z3$b;->b()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->a:Lio/reactivex/internal/operators/flowable/z3$b;

    .line 2
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->b:J

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/z3$b;->k:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 3
    iget v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->f:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->d:Lo7/o;

    invoke-interface {v1, p1}, Lo7/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/z3$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/z3$b;->b()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lo7/l;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lo7/l;

    const/4 v1, 0x7

    .line 4
    invoke-interface {v0, v1}, Lo7/k;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->f:I

    .line 6
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->d:Lo7/o;

    .line 7
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/z3$a;->e:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->a:Lio/reactivex/internal/operators/flowable/z3$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/z3$b;->b()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->f:I

    .line 10
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->d:Lo7/o;

    .line 11
    iget v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/z3$a;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->d:Lo7/o;

    .line 13
    iget v0, p0, Lio/reactivex/internal/operators/flowable/z3$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_2
    return-void
.end method
