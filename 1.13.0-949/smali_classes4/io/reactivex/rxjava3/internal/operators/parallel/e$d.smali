.class final Lio/reactivex/rxjava3/internal/operators/parallel/e$d;
.super Lio/reactivex/rxjava3/internal/operators/parallel/e$b;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/parallel/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/parallel/e$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final e:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lq7/r;Lq7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "predicate",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Lq7/r<",
            "-TT;>;",
            "Lq7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;-><init>(Lq7/r;Lq7/c;)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->e:Lorg/reactivestreams/d;

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;)Z
    .locals 9
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
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-wide/16 v2, 0x0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->a:Lq7/r;

    invoke-interface {v4, p1}, Lq7/r;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->e:Lorg/reactivestreams/d;

    invoke-interface {v1, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return v0

    :cond_1
    return v1

    :catchall_0
    move-exception v4

    .line 4
    invoke-static {v4}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v5, 0x2

    .line 5
    :try_start_1
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->b:Lq7/c;

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lq7/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The errorHandler returned a null ParallelFailureHandling"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    sget-object v7, Lio/reactivex/rxjava3/internal/operators/parallel/e$a;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v0, :cond_0

    if-eq v6, v5, :cond_3

    const/4 p1, 0x3

    if-eq v6, p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->cancel()V

    .line 8
    invoke-virtual {p0, v4}, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->cancel()V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->onComplete()V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->cancel()V

    .line 13
    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    new-array v3, v5, [Ljava/lang/Throwable;

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return v1
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->e:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    :cond_0
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->d:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->e:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->c:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$b;->c:Lorg/reactivestreams/e;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/e$d;->e:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :cond_0
    return-void
.end method
