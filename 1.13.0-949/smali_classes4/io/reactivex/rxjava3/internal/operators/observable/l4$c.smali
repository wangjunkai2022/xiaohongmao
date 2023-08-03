.class final Lio/reactivex/rxjava3/internal/operators/observable/l4$c;
.super Lio/reactivex/rxjava3/internal/operators/observable/l4$a;
.source "ObservableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/l4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/l4$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/l4$a<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final r:J = 0x100a4e91220eea64L

.field static final s:Ljava/lang/Object;


# instance fields
.field final n:Lio/reactivex/rxjava3/core/o0;

.field o:Lio/reactivex/rxjava3/subjects/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final p:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->s:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/core/n0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)V
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
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
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;-><init>(Lio/reactivex/rxjava3/core/n0;JLjava/util/concurrent/TimeUnit;I)V

    .line 2
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->n:Lio/reactivex/rxjava3/core/o0;

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->p:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/l4$c$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/l4$c$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/l4$c;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->q:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->p:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->e:I

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->q:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/subjects/j;->H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->o:Lio/reactivex/rxjava3/subjects/j;

    const-wide/16 v1, 0x1

    .line 4
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->f:J

    .line 5
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/k4;

    invoke-direct {v1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/k4;-><init>(Lio/reactivex/rxjava3/subjects/i;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->p:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->n:Lio/reactivex/rxjava3/core/o0;

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->c:J

    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->d:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/rxjava3/core/o0;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 8
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/k4;->A8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->o:Lio/reactivex/rxjava3/subjects/j;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->b:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->o:Lio/reactivex/rxjava3/subjects/j;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->k:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 7
    iput-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->o:Lio/reactivex/rxjava3/subjects/j;

    move-object v2, v6

    goto/16 :goto_3

    .line 8
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->g:Z

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
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->h:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2, v5}, Lio/reactivex/rxjava3/subjects/j;->onError(Ljava/lang/Throwable;)V

    .line 12
    :cond_4
    invoke-interface {v1, v5}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v2}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    .line 14
    :cond_6
    invoke-interface {v1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    .line 15
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->a()V

    .line 16
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->k:Z

    goto :goto_0

    :cond_7
    if-nez v8, :cond_b

    .line 17
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->s:Ljava/lang/Object;

    if-ne v7, v5, :cond_a

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {v2}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    .line 19
    iput-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->o:Lio/reactivex/rxjava3/subjects/j;

    move-object v2, v6

    .line 20
    :cond_8
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 21
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->p:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    goto :goto_0

    .line 22
    :cond_9
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->f:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->f:J

    .line 23
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 24
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->e:I

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->q:Ljava/lang/Runnable;

    invoke-static {v2, v5}, Lio/reactivex/rxjava3/subjects/j;->H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->o:Lio/reactivex/rxjava3/subjects/j;

    .line 26
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/observable/k4;

    invoke-direct {v5, v2}, Lio/reactivex/rxjava3/internal/operators/observable/k4;-><init>(Lio/reactivex/rxjava3/subjects/i;)V

    .line 27
    invoke-interface {v1, v5}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/operators/observable/k4;->A8()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    invoke-virtual {v2}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v2, v7}, Lio/reactivex/rxjava3/subjects/j;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    :goto_3
    neg-int v4, v4

    .line 31
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->b:Lio/reactivex/rxjava3/internal/fuseable/p;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->s:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;->c()V

    return-void
.end method
