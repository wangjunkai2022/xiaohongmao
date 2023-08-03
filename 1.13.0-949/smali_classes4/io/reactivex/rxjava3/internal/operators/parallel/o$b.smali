.class final Lio/reactivex/rxjava3/internal/operators/parallel/o$b;
.super Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;
.source "ParallelReduceFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/parallel/o;
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
        "Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final r:J = -0x4a8674a85e439ebdL


# instance fields
.field final m:[Lio/reactivex/rxjava3/internal/operators/parallel/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/parallel/o$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final n:Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field final o:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/parallel/o$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field final q:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;ILq7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subscriber",
            "n",
            "reducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;I",
            "Lq7/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/d;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->q:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 5
    new-array p1, p2, [Lio/reactivex/rxjava3/internal/operators/parallel/o$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 6
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/parallel/o$a;

    invoke-direct {v1, p0, p3}, Lio/reactivex/rxjava3/internal/operators/parallel/o$a;-><init>(Lio/reactivex/rxjava3/internal/operators/parallel/o$b;Lq7/c;)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->m:[Lio/reactivex/rxjava3/internal/operators/parallel/o$a;

    .line 8
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->n:Lq7/c;

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->q:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;->b:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->q:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->m:[Lio/reactivex/rxjava3/internal/operators/parallel/o$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/parallel/o$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method j(Ljava/lang/Object;)Lio/reactivex/rxjava3/internal/operators/parallel/o$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/rxjava3/internal/operators/parallel/o$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;-><init>()V

    .line 3
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;->b()I

    move-result v2

    if-gez v2, :cond_1

    .line 5
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 6
    iput-object p1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;->a:Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_2
    iput-object p1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;->b:Ljava/lang/Object;

    .line 8
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    return-object v1
.end method

.method k(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->j(Ljava/lang/Object;)Lio/reactivex/rxjava3/internal/operators/parallel/o$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->n:Lq7/c;

    iget-object v1, p1, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;->a:Ljava/lang/Object;

    iget-object p1, p1, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lq7/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->a(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/o$b;->o:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Lio/reactivex/rxjava3/internal/operators/parallel/o$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;->complete(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;->b:Lorg/reactivestreams/d;

    invoke-interface {p1}, Lorg/reactivestreams/d;->onComplete()V

    :cond_2
    :goto_1
    return-void
.end method
