.class final Lio/reactivex/internal/operators/flowable/m3$a;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "FlowableSequenceEqual.java"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/m3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/m3$b;"
    }
.end annotation


# static fields
.field private static final t:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final m:Ln7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final n:Lio/reactivex/internal/operators/flowable/m3$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/m3$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final o:Lio/reactivex/internal/operators/flowable/m3$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/m3$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final p:Lio/reactivex/internal/util/AtomicThrowable;

.field final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;ILn7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Ln7/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/d;)V

    .line 2
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/m3$a;->m:Ln7/d;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-direct {p1, p0, p2}, Lio/reactivex/internal/operators/flowable/m3$c;-><init>(Lio/reactivex/internal/operators/flowable/m3$b;I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    .line 5
    new-instance p1, Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-direct {p1, p0, p2}, Lio/reactivex/internal/operators/flowable/m3$c;-><init>(Lio/reactivex/internal/operators/flowable/m3$b;I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 2
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/m3$c;->e:Lo7/o;

    .line 3
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/m3$c;->e:Lo7/o;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    .line 4
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    return-void

    .line 7
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->j()V

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    iget-boolean v4, v4, Lio/reactivex/internal/operators/flowable/m3$c;->f:Z

    .line 11
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/m3$a;->r:Ljava/lang/Object;

    if-nez v5, :cond_4

    .line 12
    :try_start_0
    invoke-interface {v2}, Lo7/o;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iput-object v5, p0, Lio/reactivex/internal/operators/flowable/m3$a;->r:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->j()V

    .line 16
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 17
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_1
    const/4 v6, 0x0

    if-nez v5, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 18
    :goto_2
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    iget-boolean v8, v8, Lio/reactivex/internal/operators/flowable/m3$c;->f:Z

    .line 19
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/m3$a;->s:Ljava/lang/Object;

    if-nez v9, :cond_6

    .line 20
    :try_start_1
    invoke-interface {v3}, Lo7/o;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    iput-object v9, p0, Lio/reactivex/internal/operators/flowable/m3$a;->s:Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 22
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->j()V

    .line 24
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 25
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    :goto_3
    if-nez v9, :cond_7

    const/4 v6, 0x1

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    .line 26
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->complete(Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    if-eq v7, v6, :cond_9

    .line 27
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->j()V

    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->complete(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-nez v7, :cond_e

    if-eqz v6, :cond_a

    goto :goto_4

    .line 29
    :cond_a
    :try_start_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/m3$a;->m:Ln7/d;

    invoke-interface {v4, v5, v9}, Ln7/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_b

    .line 30
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->j()V

    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->complete(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v4, 0x0

    .line 32
    iput-object v4, p0, Lio/reactivex/internal/operators/flowable/m3$a;->r:Ljava/lang/Object;

    .line 33
    iput-object v4, p0, Lio/reactivex/internal/operators/flowable/m3$a;->s:Ljava/lang/Object;

    .line 34
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/m3$c;->c()V

    .line 35
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/m3$c;->c()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 36
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->j()V

    .line 38
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 40
    :cond_c
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    .line 42
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    return-void

    .line 43
    :cond_d
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 44
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/m3$a;->j()V

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->p:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 46
    :cond_e
    :goto_4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/m3$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->a()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    :cond_0
    return-void
.end method

.method j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->a()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/m3$c;->b()V

    return-void
.end method

.method k(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lorg/reactivestreams/c<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m3$a;->n:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/m3$a;->o:Lio/reactivex/internal/operators/flowable/m3$c;

    invoke-interface {p2, p1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
