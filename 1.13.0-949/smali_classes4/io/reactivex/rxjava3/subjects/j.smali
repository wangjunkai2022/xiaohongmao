.class public final Lio/reactivex/rxjava3/subjects/j;
.super Lio/reactivex/rxjava3/subjects/i;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/subjects/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/subjects/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field volatile e:Z

.field volatile f:Z

.field g:Ljava/lang/Throwable;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:Z


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "capacityHint",
            "onTerminate",
            "delayError"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/subjects/i;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/subjects/j;->d:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/subjects/j$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/subjects/j$a;-><init>(Lio/reactivex/rxjava3/subjects/j;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method public static F8()Lio/reactivex/rxjava3/subjects/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/subjects/j;

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/rxjava3/subjects/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static G8(I)Lio/reactivex/rxjava3/subjects/j;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/subjects/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/subjects/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacityHint",
            "onTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "onTerminate"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/subjects/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/subjects/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static I8(ILjava/lang/Runnable;Z)Lio/reactivex/rxjava3/subjects/j;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "capacityHint",
            "onTerminate",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "onTerminate"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/subjects/j;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/subjects/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static J8(Z)Lio/reactivex/rxjava3/subjects/j;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/subjects/j;

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/rxjava3/subjects/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method public A8()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->g:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public B8()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->g:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C8()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D8()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method K8()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method L8()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/n0;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, p0, Lio/reactivex/rxjava3/subjects/j;->j:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/j;->M8(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/j;->N8(Lio/reactivex/rxjava3/core/n0;)V

    :goto_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/n0;

    goto :goto_0
.end method

.method M8(Lio/reactivex/rxjava3/core/n0;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    .line 2
    iget-boolean v1, p0, Lio/reactivex/rxjava3/subjects/j;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    :cond_0
    iget-boolean v3, p0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/subjects/j;->P8(Lio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/core/n0;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p1, v4}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/j;->O8(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 9
    :cond_3
    iget-object v3, p0, Lio/reactivex/rxjava3/subjects/j;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method N8(Lio/reactivex/rxjava3/core/n0;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    .line 2
    iget-boolean v1, p0, Lio/reactivex/rxjava3/subjects/j;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 3
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    if-eqz v5, :cond_1

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    return-void

    .line 6
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    .line 7
    iget-object v6, p0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/subjects/j;->P8(Lio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/core/n0;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz v8, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/j;->O8(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    .line 10
    iget-object v5, p0, Lio/reactivex/rxjava3/subjects/j;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 11
    :cond_6
    invoke-interface {p1, v6}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method O8(Lio/reactivex/rxjava3/core/n0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    :goto_0
    return-void
.end method

.method P8(Lio/reactivex/rxjava3/internal/fuseable/q;Lio/reactivex/rxjava3/core/n0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "q",
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 4
    invoke-interface {p2, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/j;->L8()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/j;->K8()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/j;->L8()V

    :cond_1
    :goto_0
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

    const-string v0, "onError called with a null Throwable."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/j;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/j;->K8()V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/j;->L8()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

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

    const-string v0, "onNext called with a null value."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/j;->L8()V

    :cond_1
    :goto_0
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_1
    return-void
.end method
