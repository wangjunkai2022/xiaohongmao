.class final Lio/reactivex/rxjava3/internal/operators/observable/l4$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/l4$d$a;
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
.field private static final q:J = -0x6cfb005a8ed6e316L

.field static final r:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;


# instance fields
.field final n:J

.field final o:Lio/reactivex/rxjava3/core/o0$c;

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/subjects/j<",
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

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->r:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->s:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/core/n0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;I)V
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
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
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;-><init>(Lio/reactivex/rxjava3/core/n0;JLjava/util/concurrent/TimeUnit;I)V

    .line 2
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->n:J

    .line 3
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->o:Lio/reactivex/rxjava3/core/o0$c;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->o:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method b()V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    .line 2
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->f:J

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->e:I

    invoke-static {v0, p0}, Lio/reactivex/rxjava3/subjects/j;->H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/k4;

    invoke-direct {v1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/k4;-><init>(Lio/reactivex/rxjava3/subjects/i;)V

    .line 7
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v2, v1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->o:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/observable/l4$d$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lio/reactivex/rxjava3/internal/operators/observable/l4$d$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/l4$d;Z)V

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->c:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    .line 9
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->o:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/observable/l4$d$a;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/l4$d$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/l4$d;Z)V

    iget-wide v11, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->n:J

    iget-object v13, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->d:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v11

    invoke-virtual/range {v7 .. v13}, Lio/reactivex/rxjava3/core/o0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    .line 10
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/k4;->A8()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    .line 12
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->b:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->p:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->k:Z

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_6

    .line 8
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->g:Z

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
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->h:Ljava/lang/Throwable;

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

    check-cast v7, Lio/reactivex/rxjava3/subjects/j;

    .line 12
    invoke-virtual {v7, v5}, Lio/reactivex/rxjava3/subjects/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-interface {v1, v5}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

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

    check-cast v6, Lio/reactivex/rxjava3/subjects/j;

    .line 15
    invoke-virtual {v6}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto :goto_3

    .line 16
    :cond_6
    invoke-interface {v1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    .line 17
    :goto_4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->a()V

    .line 18
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->k:Z

    goto :goto_0

    :cond_7
    if-nez v8, :cond_a

    .line 19
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->r:Ljava/lang/Object;

    if-ne v6, v5, :cond_8

    .line 20
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 21
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->f:J

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 22
    iput-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->f:J

    .line 23
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 24
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->e:I

    invoke-static {v5, p0}, Lio/reactivex/rxjava3/subjects/j;->H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;

    move-result-object v5

    .line 25
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/observable/k4;

    invoke-direct {v6, v5}, Lio/reactivex/rxjava3/internal/operators/observable/k4;-><init>(Lio/reactivex/rxjava3/subjects/i;)V

    .line 27
    invoke-interface {v1, v6}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 28
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->o:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v9, Lio/reactivex/rxjava3/internal/operators/observable/l4$d$a;

    invoke-direct {v9, p0, v7}, Lio/reactivex/rxjava3/internal/operators/observable/l4$d$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/l4$d;Z)V

    iget-wide v10, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->c:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11, v7}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    .line 29
    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/operators/observable/k4;->A8()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 30
    invoke-virtual {v5}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto/16 :goto_0

    .line 31
    :cond_8
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->s:Ljava/lang/Object;

    if-ne v6, v5, :cond_9

    .line 32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/rxjava3/subjects/j;

    invoke-virtual {v5}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto/16 :goto_0

    .line 34
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/rxjava3/subjects/j;

    .line 35
    invoke-virtual {v7, v6}, Lio/reactivex/rxjava3/subjects/j;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    :goto_6
    neg-int v4, v4

    .line 36
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->b:Lio/reactivex/rxjava3/internal/fuseable/p;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->r:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->s:Ljava/lang/Object;

    :goto_0
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;->c()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/l4$a;->d()V

    return-void
.end method
