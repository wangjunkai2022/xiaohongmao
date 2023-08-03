.class final Lio/reactivex/rxjava3/internal/operators/observable/w0$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/disposables/f;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final p:J = -0x1d634c9cafb5cc5aL

.field static final q:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/observable/w0$a<",
            "**>;"
        }
    .end annotation
.end field

.field static final r:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/observable/w0$a<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I

.field volatile f:Lio/reactivex/rxjava3/internal/fuseable/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field final h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/rxjava3/internal/operators/observable/w0$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field k:Lio/reactivex/rxjava3/disposables/f;

.field l:J

.field m:I

.field n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    .line 1
    sput-object v1, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->q:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    new-array v0, v0, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    .line 2
    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->r:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "mapper",
            "delayErrors",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a:Lio/reactivex/rxjava3/core/n0;

    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->b:Lq7/o;

    .line 5
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->c:Z

    .line 6
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    .line 7
    iput p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->e:I

    const p1, 0x7fffffff

    if-eq p4, p1, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->n:Ljava/util/Queue;

    .line 9
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->q:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/rxjava3/internal/operators/observable/w0$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/w0$a<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->r:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->a()V

    return v2

    .line 4
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 5
    new-array v3, v3, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    .line 6
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aput-object p1, v3, v1

    .line 8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 3
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->c:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->c()Z

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->k:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->r:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->e()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a:Lio/reactivex/rxjava3/core/n0;

    const/4 v1, 0x1

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 4
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-interface {v0, v5}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const v2, 0x7fffffff

    if-eqz v4, :cond_5

    .line 7
    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    if-eq v3, v2, :cond_0

    .line 8
    invoke-virtual {p0, v4}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j(I)V

    goto :goto_0

    .line 9
    :cond_5
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->g:Z

    .line 10
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 11
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    .line 12
    array-length v8, v7

    .line 13
    iget v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    if-eq v9, v2, :cond_6

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->n:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    .line 16
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-eqz v5, :cond_8

    if-eqz v6, :cond_7

    .line 17
    invoke-interface {v6}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    if-nez v8, :cond_8

    if-nez v9, :cond_8

    .line 18
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :cond_8
    if-eqz v8, :cond_12

    add-int/lit8 v5, v8, -0x1

    .line 19
    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->m:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_11

    .line 20
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->b()Z

    move-result v9

    if-eqz v9, :cond_9

    return-void

    .line 21
    :cond_9
    aget-object v9, v7, v5

    .line 22
    iget-object v10, v9, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-eqz v10, :cond_d

    .line 23
    :cond_a
    :try_start_1
    invoke-interface {v10}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_b

    goto :goto_5

    .line 24
    :cond_b
    invoke-interface {v0, v11}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->b()Z

    move-result v11

    if-eqz v11, :cond_a

    return-void

    :catchall_1
    move-exception v10

    .line 26
    invoke-static {v10}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 27
    invoke-virtual {v9}, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->a()V

    .line 28
    iget-object v11, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v11, v10}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 29
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->b()Z

    move-result v10

    if-eqz v10, :cond_c

    return-void

    .line 30
    :cond_c
    invoke-virtual {p0, v9}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h(Lio/reactivex/rxjava3/internal/operators/observable/w0$a;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_10

    goto :goto_6

    .line 31
    :cond_d
    :goto_5
    iget-boolean v10, v9, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->c:Z

    .line 32
    iget-object v11, v9, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-eqz v10, :cond_f

    if-eqz v11, :cond_e

    .line 33
    invoke-interface {v11}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 34
    :cond_e
    invoke-virtual {p0, v9}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h(Lio/reactivex/rxjava3/internal/operators/observable/w0$a;)V

    add-int/lit8 v4, v4, 0x1

    :cond_f
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_10

    :goto_6
    const/4 v5, 0x0

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 35
    :cond_11
    iput v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->m:I

    :cond_12
    if-eqz v4, :cond_13

    .line 36
    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    if-eq v3, v2, :cond_0

    .line 37
    invoke-virtual {p0, v4}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j(I)V

    goto/16 :goto_0

    :cond_13
    neg-int v1, v1

    .line 38
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method h(Lio/reactivex/rxjava3/internal/operators/observable/w0$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/w0$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    .line 2
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 3
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v2, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 4
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->q:[Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    .line 6
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method i(Lio/reactivex/rxjava3/core/l0;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p1, Lq7/s;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lq7/s;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->l(Lq7/s;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    const/4 p1, 0x0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->o:I

    sub-int/2addr p1, v1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->o:I

    const/4 p1, 0x1

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d()V

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->l:J

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/w0$b;J)V

    .line 10
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a(Lio/reactivex/rxjava3/internal/operators/observable/w0$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->i:Z

    return v0
.end method

.method j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "innerCompleted"
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->n:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/core/l0;

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->o:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->o:I

    .line 4
    monitor-exit p0

    goto :goto_1

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->i(Lio/reactivex/rxjava3/core/l0;)V

    :goto_1
    move p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method k(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/observable/w0$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/rxjava3/internal/operators/observable/w0$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/b;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    .line 6
    iput-object v0, p2, Lio/reactivex/rxjava3/internal/operators/observable/w0$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 7
    :cond_1
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->e()V

    return-void
.end method

.method l(Lq7/s;)Z
    .locals 4
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
            "(",
            "Lq7/s<",
            "+TU;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 5
    :cond_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-nez v1, :cond_3

    .line 6
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 7
    new-instance v1, Lio/reactivex/rxjava3/internal/queue/b;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->e:I

    invoke-direct {v1, v3}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    invoke-direct {v1, v3}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 9
    :goto_0
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->f:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 10
    :cond_3
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->e()V

    return v0

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 15
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d()V

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->g:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d()V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->h:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->g:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d()V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->b:Lq7/o;

    invoke-interface {v0, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null ObservableSource"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->o:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->d:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->n:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->o:I

    .line 9
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->i(Lio/reactivex/rxjava3/core/l0;)V

    return-void

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->k:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 13
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->k:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->k:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method
