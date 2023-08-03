.class final Lio/reactivex/rxjava3/internal/operators/observable/p3$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableSwitchMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final k:J = -0x3072c973d405526bL

.field static final l:Lio/reactivex/rxjava3/internal/operators/observable/p3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/p3$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z

.field final e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field volatile f:Z

.field volatile g:Z

.field h:Lio/reactivex/rxjava3/disposables/f;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/p3$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field volatile j:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/p3$b;JI)V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->l:Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a()V

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "mapper",
            "bufferSize",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->a:Lio/reactivex/rxjava3/core/n0;

    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b:Lq7/o;

    .line 5
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->c:I

    .line 6
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->d:Z

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->l:Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->d:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->g:Z

    if-eqz v5, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->f:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v5, :cond_7

    .line 8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    :goto_2
    return-void

    .line 11
    :cond_5
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    .line 12
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :cond_6
    if-eqz v5, :cond_7

    .line 13
    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void

    .line 14
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    if-eqz v5, :cond_f

    .line 15
    iget-object v7, v5, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-eqz v7, :cond_f

    const/4 v8, 0x0

    .line 16
    :goto_3
    iget-boolean v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->g:Z

    if-eqz v9, :cond_8

    return-void

    .line 17
    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eq v5, v9, :cond_9

    :goto_4
    const/4 v8, 0x1

    goto :goto_8

    :cond_9
    if-nez v2, :cond_a

    .line 18
    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_a

    .line 19
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 20
    :cond_a
    iget-boolean v9, v5, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->e:Z

    const/4 v10, 0x0

    .line 21
    :try_start_0
    invoke-interface {v7}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v8

    .line 22
    invoke-static {v8}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 23
    iget-object v11, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v11, v8}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 24
    invoke-virtual {v1, v5, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v2, :cond_b

    .line 25
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->a()V

    .line 26
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v8}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 27
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->f:Z

    goto :goto_5

    .line 28
    :cond_b
    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a()V

    :goto_5
    move-object v11, v10

    const/4 v8, 0x1

    :goto_6
    if-nez v11, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_7
    if-eqz v9, :cond_d

    if-eqz v12, :cond_d

    .line 29
    invoke-virtual {v1, v5, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    if-eqz v12, :cond_e

    :goto_8
    if-eqz v8, :cond_f

    goto/16 :goto_0

    .line 30
    :cond_e
    invoke-interface {v0, v11}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    neg-int v4, v4

    .line 31
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method c(Lio/reactivex/rxjava3/internal/operators/observable/p3$a;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inner",
            "ex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/p3$a<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->b:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->d:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p2}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->f:Z

    .line 5
    :cond_0
    iput-boolean v0, p1, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->e:Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->g:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->a()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->f:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b()V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->e:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->d:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->f:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
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
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->j:J

    .line 3
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a()V

    .line 5
    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b:Lq7/o;

    invoke-interface {v2, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The ObservableSource returned is null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->c:I

    invoke-direct {v2, p0, v0, v1, v3}, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/p3$b;JI)V

    .line 7
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    .line 8
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->l:Lio/reactivex/rxjava3/internal/operators/observable/p3$a;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1, v2}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 13
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->h:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method
