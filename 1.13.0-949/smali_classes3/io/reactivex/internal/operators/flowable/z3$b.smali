.class final Lio/reactivex/internal/operators/flowable/z3$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableSwitchMap.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/z3;
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
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final l:J = -0x3072c973d405526bL

.field static final m:Lio/reactivex/internal/operators/flowable/z3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/z3$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z

.field volatile e:Z

.field final f:Lio/reactivex/internal/util/AtomicThrowable;

.field volatile g:Z

.field h:Lorg/reactivestreams/e;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/z3$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile k:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/z3$a;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/z3$a;-><init>(Lio/reactivex/internal/operators/flowable/z3$b;JI)V

    sput-object v0, Lio/reactivex/internal/operators/flowable/z3$b;->m:Lio/reactivex/internal/operators/flowable/z3$a;

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/z3$a;->a()V

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;Ln7/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->a:Lorg/reactivestreams/d;

    .line 5
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/z3$b;->b:Ln7/o;

    .line 6
    iput p3, p0, Lio/reactivex/internal/operators/flowable/z3$b;->c:I

    .line 7
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/z3$b;->d:Z

    .line 8
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/z3$a;

    .line 2
    sget-object v1, Lio/reactivex/internal/operators/flowable/z3$b;->m:Lio/reactivex/internal/operators/flowable/z3$a;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/z3$a;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/z3$a;->a()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/z3$b;->a:Lorg/reactivestreams/d;

    const/4 v4, 0x1

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->g:Z

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->e:Z

    if-eqz v0, :cond_6

    .line 5
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->d:Z

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 7
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    :goto_1
    return-void

    .line 10
    :cond_4
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/z3$b;->a()V

    .line 12
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_5
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 14
    invoke-interface {v2}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    .line 15
    :cond_6
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/reactivex/internal/operators/flowable/z3$a;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 16
    iget-object v0, v5, Lio/reactivex/internal/operators/flowable/z3$a;->d:Lo7/o;

    move-object v7, v0

    goto :goto_2

    :cond_7
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_15

    .line 17
    iget-boolean v0, v5, Lio/reactivex/internal/operators/flowable/z3$a;->e:Z

    if-eqz v0, :cond_a

    .line 18
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->d:Z

    if-nez v0, :cond_9

    .line 19
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/z3$b;->a()V

    .line 21
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 22
    :cond_8
    invoke-interface {v7}, Lo7/o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_9
    invoke-interface {v7}, Lo7/o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :cond_a
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_3
    const/4 v14, 0x0

    cmp-long v0, v12, v8

    if-eqz v0, :cond_12

    .line 27
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->g:Z

    if-eqz v0, :cond_b

    return-void

    .line 28
    :cond_b
    iget-boolean v0, v5, Lio/reactivex/internal/operators/flowable/z3$a;->e:Z

    .line 29
    :try_start_0
    invoke-interface {v7}, Lo7/o;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v15, v0

    .line 30
    invoke-static {v15}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 31
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/z3$a;->a()V

    .line 32
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, v15}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-object v15, v6

    const/4 v0, 0x1

    :goto_4
    if-nez v15, :cond_c

    const/16 v16, 0x1

    goto :goto_5

    :cond_c
    const/16 v16, 0x0

    .line 33
    :goto_5
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v5, v3, :cond_d

    :goto_6
    const/4 v14, 0x1

    goto :goto_7

    :cond_d
    if-eqz v0, :cond_10

    .line 34
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->d:Z

    if-nez v0, :cond_f

    .line 35
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_e

    .line 36
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_e
    if-eqz v16, :cond_10

    .line 37
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    if-eqz v16, :cond_10

    .line 38
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    if-eqz v16, :cond_11

    goto :goto_7

    .line 39
    :cond_11
    invoke-interface {v2, v15}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    goto :goto_3

    :cond_12
    :goto_7
    cmp-long v0, v12, v10

    if-eqz v0, :cond_14

    .line 40
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->g:Z

    if-nez v0, :cond_14

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v8, v6

    if-eqz v0, :cond_13

    .line 41
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/z3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v12

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 42
    :cond_13
    invoke-virtual {v5, v12, v13}, Lio/reactivex/internal/operators/flowable/z3$a;->b(J)V

    :cond_14
    if-eqz v14, :cond_15

    goto/16 :goto_0

    :cond_15
    neg-int v0, v4

    .line 43
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->g:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->h:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/z3$b;->a()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/z3$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->d:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/z3$b;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->e:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/z3$b;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->k:J

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/z3$a;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/z3$a;->a()V

    .line 6
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/z3$b;->b:Ln7/o;

    invoke-interface {v2, p1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The publisher returned is null"

    invoke-static {p1, v2}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v2, Lio/reactivex/internal/operators/flowable/z3$a;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/z3$b;->c:I

    invoke-direct {v2, p0, v0, v1, v3}, Lio/reactivex/internal/operators/flowable/z3$a;-><init>(Lio/reactivex/internal/operators/flowable/z3$b;JI)V

    .line 8
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/z3$a;

    .line 9
    sget-object v1, Lio/reactivex/internal/operators/flowable/z3$b;->m:Lio/reactivex/internal/operators/flowable/z3$a;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p1, v2}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->h:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 14
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/z3$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->h:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->h:Lorg/reactivestreams/e;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->a:Lorg/reactivestreams/d;

    invoke-interface {p1, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-wide p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->k:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/z3$b;->h:Lorg/reactivestreams/e;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/z3$b;->b()V

    :cond_1
    :goto_0
    return-void
.end method
