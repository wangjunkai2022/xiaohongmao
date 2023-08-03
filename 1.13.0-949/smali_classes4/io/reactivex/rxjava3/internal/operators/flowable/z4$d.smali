.class final Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;
.super Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;
.source "FlowableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/z4$a<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final r:J = -0x6cfb005a8ed6e316L

.field static final s:Ljava/lang/Object;

.field static final t:Ljava/lang/Object;


# instance fields
.field final o:J

.field final p:Lio/reactivex/rxjava3/core/o0$c;

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->s:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->t:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "timespan",
            "timeskip",
            "unit",
            "worker",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0$c;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p6

    move v5, p8

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;I)V

    .line 2
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->o:J

    .line 3
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->p:Lio/reactivex/rxjava3/core/o0$c;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->q:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->p:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method b()V
    .locals 15

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const-wide/16 v0, 0x1

    .line 3
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 5
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->e:I

    invoke-static {v0, p0}, Lio/reactivex/rxjava3/processors/h;->o9(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/h;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/y4;

    invoke-direct {v1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;-><init>(Lio/reactivex/rxjava3/processors/c;)V

    .line 8
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v2, v1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->p:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;Z)V

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->c:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v5, v6, v7}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    .line 10
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->p:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v9, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;

    invoke-direct {v9, p0, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;Z)V

    iget-wide v12, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->o:J

    iget-object v14, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->d:Ljava/util/concurrent/TimeUnit;

    move-wide v10, v12

    invoke-virtual/range {v8 .. v14}, Lio/reactivex/rxjava3/core/o0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    .line 11
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;->g9()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    .line 13
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->j:Lorg/reactivestreams/e;

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->j:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 16
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->a:Lorg/reactivestreams/d;

    new-instance v1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    invoke-static {v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->g9(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->a()V

    .line 18
    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    :cond_2
    :goto_0
    return-void
.end method

.method c()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->b:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->a:Lorg/reactivestreams/d;

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->q:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    .line 8
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->h:Z

    .line 9
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    .line 10
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->i:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/rxjava3/processors/h;

    .line 12
    invoke-virtual {v7, v5}, Lio/reactivex/rxjava3/processors/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-interface {v1, v5}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 14
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/rxjava3/processors/h;

    .line 15
    invoke-virtual {v6}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    goto :goto_3

    .line 16
    :cond_6
    invoke-interface {v1}, Lorg/reactivestreams/d;->onComplete()V

    .line 17
    :goto_4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->a()V

    .line 18
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    goto :goto_0

    :cond_7
    if-nez v8, :cond_c

    .line 19
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->s:Ljava/lang/Object;

    if-ne v6, v5, :cond_a

    .line 20
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 21
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    .line 22
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-eqz v10, :cond_8

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 23
    iput-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    .line 24
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->e:I

    invoke-static {v5, p0}, Lio/reactivex/rxjava3/processors/h;->o9(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/h;

    move-result-object v5

    .line 26
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/y4;

    invoke-direct {v6, v5}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;-><init>(Lio/reactivex/rxjava3/processors/c;)V

    .line 28
    invoke-interface {v1, v6}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 29
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->p:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v9, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;

    invoke-direct {v9, p0, v7}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;Z)V

    iget-wide v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->c:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11, v7}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    .line 30
    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;->g9()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 31
    invoke-virtual {v5}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    goto/16 :goto_0

    .line 32
    :cond_8
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->j:Lorg/reactivestreams/e;

    invoke-interface {v7}, Lorg/reactivestreams/e;->cancel()V

    .line 33
    new-instance v7, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-static {v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->g9(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/rxjava3/processors/h;

    .line 35
    invoke-virtual {v6, v7}, Lio/reactivex/rxjava3/processors/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 36
    :cond_9
    invoke-interface {v1, v7}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->a()V

    .line 38
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    goto/16 :goto_0

    .line 39
    :cond_a
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->t:Ljava/lang/Object;

    if-ne v6, v5, :cond_b

    .line 40
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 41
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/rxjava3/processors/h;

    invoke-virtual {v5}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    goto/16 :goto_0

    .line 42
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/rxjava3/processors/h;

    .line 43
    invoke-virtual {v7, v6}, Lio/reactivex/rxjava3/processors/h;->onNext(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    :goto_7
    neg-int v4, v4

    .line 44
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method e(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->b:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->s:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->t:Ljava/lang/Object;

    :goto_0
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->c()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->d()V

    return-void
.end method
