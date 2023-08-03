.class final Lio/reactivex/rxjava3/internal/operators/observable/j4$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableWindowBoundarySelector.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;,
        Lio/reactivex/rxjava3/internal/operators/observable/j4$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final r:J = 0x77fd892250a4eda9L


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TB;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lio/reactivex/rxjava3/disposables/c;

.field final f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c<",
            "TB;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/rxjava3/internal/fuseable/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final k:Ljava/util/concurrent/atomic/AtomicLong;

.field l:J

.field volatile m:Z

.field volatile n:Z

.field volatile o:Z

.field final p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field q:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/l0;Lq7/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "downstream",
            "open",
            "closingIndicator",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;",
            "Lq7/o<",
            "-TB;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/a;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/queue/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->b:Lio/reactivex/rxjava3/core/l0;

    .line 5
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c:Lq7/o;

    .line 6
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->d:I

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->g:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 12
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/j4$a;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

    return-void
.end method

.method b(Ljava/lang/Throwable;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->n:Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->g:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->m:Z

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_3

    .line 8
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->n:Z

    .line 9
    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-nez v7, :cond_4

    .line 10
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 11
    :cond_4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->i(Lio/reactivex/rxjava3/core/n0;)V

    .line 12
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->m:Z

    goto :goto_0

    :cond_5
    if-nez v7, :cond_9

    .line 13
    instance-of v5, v6, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$b;

    if-eqz v5, :cond_7

    .line 14
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 15
    check-cast v6, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$b;

    iget-object v5, v6, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$b;->a:Ljava/lang/Object;

    .line 16
    :try_start_0
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c:Lq7/o;

    invoke-interface {v6, v5}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The closingIndicator returned a null ObservableSource"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lio/reactivex/rxjava3/core/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 18
    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->d:I

    invoke-static {v6, p0}, Lio/reactivex/rxjava3/subjects/j;->H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;

    move-result-object v6

    .line 19
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;

    invoke-direct {v7, p0, v6}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/j4$a;Lio/reactivex/rxjava3/subjects/j;)V

    .line 20
    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v7}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;->A8()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 22
    invoke-virtual {v6}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto :goto_0

    .line 23
    :cond_6
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v6, v7}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 25
    invoke-interface {v5, v7}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 26
    invoke-static {v5}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 27
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v6}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 28
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    .line 29
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v6}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 30
    invoke-static {v5}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 31
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v6, v5}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 32
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->n:Z

    goto/16 :goto_0

    .line 33
    :cond_7
    instance-of v5, v6, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;

    if-eqz v5, :cond_8

    .line 34
    move-object v5, v6

    check-cast v5, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;

    iget-object v5, v5, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$a;->b:Lio/reactivex/rxjava3/subjects/j;

    .line 35
    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    check-cast v6, Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {v7, v6}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 37
    invoke-virtual {v5}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto/16 :goto_0

    .line 38
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/rxjava3/subjects/j;

    .line 39
    invoke-virtual {v7, v6}, Lio/reactivex/rxjava3/subjects/j;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    .line 40
    :cond_9
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->o:Z

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 41
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v5}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 42
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    .line 43
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v5}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 44
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->i(Lio/reactivex/rxjava3/core/n0;)V

    .line 45
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->m:Z

    goto/16 :goto_0

    :cond_a
    :goto_3
    neg-int v4, v4

    .line 46
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$b;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

    return-void
.end method

.method public dispose()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 7
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->m:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->o:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

    return-void
.end method

.method h(Ljava/lang/Throwable;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->n:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

    :cond_0
    return-void
.end method

.method i(Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downstream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/subjects/j;

    .line 3
    invoke-virtual {v1}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    goto :goto_2

    .line 5
    :cond_1
    sget-object v1, Lio/reactivex/rxjava3/internal/util/g;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/subjects/j;

    .line 7
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/subjects/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->n:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->n:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->h:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->b:Lio/reactivex/rxjava3/core/l0;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->q:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a$c;->a()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->e:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->p:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->m:Z

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;->c()V

    :cond_0
    return-void
.end method
