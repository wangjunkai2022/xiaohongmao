.class final Lio/reactivex/rxjava3/internal/operators/parallel/q$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelSortedJoin.java"

# interfaces
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/parallel/q;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final j:J = 0x30527af9756114d9L


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lio/reactivex/rxjava3/internal/operators/parallel/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/parallel/q$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:[I

.field final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile g:Z

.field final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "n",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->a:Lorg/reactivestreams/d;

    .line 6
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->e:Ljava/util/Comparator;

    .line 7
    new-array p1, p2, [Lio/reactivex/rxjava3/internal/operators/parallel/q$a;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 8
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/q$a;

    invoke-direct {v0, p0, p3}, Lio/reactivex/rxjava3/internal/operators/parallel/q$a;-><init>(Lio/reactivex/rxjava3/internal/operators/parallel/q$b;I)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->b:[Lio/reactivex/rxjava3/internal/operators/parallel/q$a;

    .line 10
    new-array p1, p2, [Ljava/util/List;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->c:[Ljava/util/List;

    .line 11
    new-array p1, p2, [I

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->d:[I

    .line 12
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->b:[Lio/reactivex/rxjava3/internal/operators/parallel/q$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/parallel/q$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->a:Lorg/reactivestreams/d;

    .line 3
    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->c:[Ljava/util/List;

    .line 4
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->d:[I

    .line 5
    array-length v4, v0

    const/4 v6, 0x1

    .line 6
    :cond_1
    iget-object v7, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v11, 0x0

    :goto_0
    const/4 v14, 0x0

    cmp-long v15, v11, v7

    if-eqz v15, :cond_a

    .line 7
    iget-boolean v15, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->g:Z

    if-eqz v15, :cond_2

    .line 8
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    iget-object v15, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Throwable;

    if-eqz v15, :cond_3

    .line 10
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->a()V

    .line 11
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-interface {v2, v15}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const/4 v15, -0x1

    move-object v9, v14

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_8

    .line 13
    aget-object v10, v3, v13

    .line 14
    aget v5, v0, v13

    .line 15
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-eq v14, v5, :cond_7

    if-nez v9, :cond_4

    .line 16
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    :goto_2
    move v15, v13

    goto :goto_4

    .line 17
    :cond_4
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 18
    :try_start_0
    iget-object v10, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->e:Ljava/util/Comparator;

    invoke-interface {v10, v9, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_7

    move-object v9, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->a()V

    const/4 v4, 0x0

    .line 21
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 23
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 24
    :cond_6
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    goto :goto_1

    :cond_8
    if-nez v9, :cond_9

    const/4 v5, 0x0

    .line 25
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    .line 27
    :cond_9
    invoke-interface {v2, v9}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 28
    aget v5, v0, v15

    const/4 v9, 0x1

    add-int/2addr v5, v9

    aput v5, v0, v15

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x1

    .line 29
    iget-boolean v5, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->g:Z

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    .line 30
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v5, 0x0

    .line 31
    iget-object v7, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_c

    .line 32
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->a()V

    .line 33
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-interface {v2, v7}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_e

    .line 35
    aget v7, v0, v5

    aget-object v8, v3, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_d

    const/4 v13, 0x0

    goto :goto_6

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v13, 0x1

    :goto_6
    if-eqz v13, :cond_f

    const/4 v5, 0x0

    .line 36
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    :cond_f
    const-wide/16 v7, 0x0

    cmp-long v5, v11, v7

    if-eqz v5, :cond_10

    .line 38
    iget-object v5, v1, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v5, v11, v12}, Lio/reactivex/rxjava3/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_10
    neg-int v5, v6

    .line 39
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->b()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->g:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->a()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->c:[Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method d(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->c:[Ljava/util/List;

    aput-object p1, v0, p2

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->b()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->b()V

    :cond_0
    return-void
.end method
