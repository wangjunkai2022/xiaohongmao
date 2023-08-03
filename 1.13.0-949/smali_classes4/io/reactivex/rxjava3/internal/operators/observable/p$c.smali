.class final Lio/reactivex/rxjava3/internal/operators/observable/p$c;
.super Lio/reactivex/rxjava3/internal/observers/l;
.source "ObservableBufferTimed.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/p$c$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/p$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/internal/observers/l<",
        "TT;TU;TU;>;",
        "Ljava/lang/Runnable;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# instance fields
.field final K:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TU;>;"
        }
    .end annotation
.end field

.field final L:J

.field final M:J

.field final N:Ljava/util/concurrent/TimeUnit;

.field final O:Lio/reactivex/rxjava3/core/o0$c;

.field final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field Q:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/s;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;)V
    .locals 1
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
            "bufferSupplier",
            "timespan",
            "timeskip",
            "unit",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;",
            "Lq7/s<",
            "TU;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0$c;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/observers/l;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/fuseable/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->K:Lq7/s;

    .line 3
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->L:J

    .line 4
    iput-wide p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->M:J

    .line 5
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->N:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->P:Ljava/util/List;

    return-void
.end method

.method static synthetic j(Lio/reactivex/rxjava3/internal/operators/observable/p$c;Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/f;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/observers/l;->h(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method

.method static synthetic k(Lio/reactivex/rxjava3/internal/operators/observable/p$c;Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/f;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/observers/l;->h(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->H:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->l()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->Q:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lio/reactivex/rxjava3/core/n0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->i(Lio/reactivex/rxjava3/core/n0;Ljava/util/Collection;)V

    return-void
.end method

.method public i(Lio/reactivex/rxjava3/core/n0;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;TU;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->H:Z

    return v0
.end method

.method l()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onComplete()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->P:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 6
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/l;->G:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v2, v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->I:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->G:Lio/reactivex/rxjava3/internal/fuseable/p;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    invoke-static {v0, v1, v2, v3, p0}, Lio/reactivex/rxjava3/internal/util/o;->d(Lio/reactivex/rxjava3/internal/fuseable/p;Lio/reactivex/rxjava3/core/n0;ZLio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/k;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->I:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->l()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->Q:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->Q:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->K:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->P:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->M:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->N:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/rxjava3/core/o0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/p$c$b;

    invoke-direct {v1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/p$c$b;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/p$c;Ljava/util/Collection;)V

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->L:J

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->N:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3, v0}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 10
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;)V

    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->H:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->K:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/observers/l;->H:Z

    if-eqz v1, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->O:Lio/reactivex/rxjava3/core/o0$c;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/p$c$a;

    invoke-direct {v2, p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/p$c$a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/p$c;Ljava/util/Collection;)V

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->L:J

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->N:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v0}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p$c;->dispose()V

    return-void
.end method
