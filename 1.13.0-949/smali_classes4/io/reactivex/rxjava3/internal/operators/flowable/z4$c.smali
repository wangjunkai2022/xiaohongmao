.class final Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/z4$c$a;
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
.field private static final s:J = 0x100a4e91220eea64L

.field static final t:Ljava/lang/Object;


# instance fields
.field final o:Lio/reactivex/rxjava3/core/o0;

.field p:Lio/reactivex/rxjava3/processors/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field final q:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->t:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)V
    .locals 6
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
            "timespan",
            "unit",
            "scheduler",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;I)V

    .line 2
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->o:Lio/reactivex/rxjava3/core/o0;

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->q:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->r:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->q:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method b()V
    .locals 9

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

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->e:I

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->r:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/processors/h;->o9(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/h;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->p:Lio/reactivex/rxjava3/processors/h;

    const-wide/16 v0, 0x1

    .line 5
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/y4;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->p:Lio/reactivex/rxjava3/processors/h;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;-><init>(Lio/reactivex/rxjava3/processors/c;)V

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->a:Lorg/reactivestreams/d;

    invoke-interface {v1, v0}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->q:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->o:Lio/reactivex/rxjava3/core/o0;

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->c:J

    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->d:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/rxjava3/core/o0;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 9
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;->g9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->p:Lio/reactivex/rxjava3/processors/h;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    .line 11
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->j:Lorg/reactivestreams/e;

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->j:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 13
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->a:Lorg/reactivestreams/d;

    new-instance v1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    invoke-static {v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->g9(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->a()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    :cond_2
    :goto_0
    return-void
.end method

.method c()V
    .locals 10

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
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->p:Lio/reactivex/rxjava3/processors/h;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 7
    iput-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->p:Lio/reactivex/rxjava3/processors/h;

    move-object v2, v6

    goto/16 :goto_3

    .line 8
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->h:Z

    .line 9
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

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

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2, v5}, Lio/reactivex/rxjava3/processors/h;->onError(Ljava/lang/Throwable;)V

    .line 12
    :cond_4
    invoke-interface {v1, v5}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v2}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    .line 14
    :cond_6
    invoke-interface {v1}, Lorg/reactivestreams/d;->onComplete()V

    .line 15
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->a()V

    .line 16
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    goto :goto_0

    :cond_7
    if-nez v8, :cond_c

    .line 17
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->t:Ljava/lang/Object;

    if-ne v7, v5, :cond_b

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {v2}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    .line 19
    iput-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->p:Lio/reactivex/rxjava3/processors/h;

    move-object v2, v6

    .line 20
    :cond_8
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 21
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->q:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    goto :goto_0

    .line 22
    :cond_9
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_a

    .line 23
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->j:Lorg/reactivestreams/e;

    invoke-interface {v5}, Lorg/reactivestreams/e;->cancel()V

    .line 24
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->a()V

    .line 25
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->l:Z

    .line 26
    new-instance v5, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    invoke-static {v6, v7}, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->g9(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_a
    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    .line 27
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->g:J

    .line 28
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 29
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->e:I

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->r:Ljava/lang/Runnable;

    invoke-static {v2, v5}, Lio/reactivex/rxjava3/processors/h;->o9(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/h;

    move-result-object v2

    .line 30
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->p:Lio/reactivex/rxjava3/processors/h;

    .line 31
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/y4;

    invoke-direct {v5, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;-><init>(Lio/reactivex/rxjava3/processors/c;)V

    .line 32
    invoke-interface {v1, v5}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/operators/flowable/y4;->g9()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    invoke-virtual {v2}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v2, v7}, Lio/reactivex/rxjava3/processors/h;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    :goto_3
    neg-int v4, v4

    .line 36
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;->b:Lio/reactivex/rxjava3/internal/fuseable/p;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;->c()V

    return-void
.end method
