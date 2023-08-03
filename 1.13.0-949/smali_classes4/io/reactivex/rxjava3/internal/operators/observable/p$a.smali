.class final Lio/reactivex/rxjava3/internal/operators/observable/p$a;
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
    name = "a"
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

.field final M:Ljava/util/concurrent/TimeUnit;

.field final N:I

.field final O:Z

.field final P:Lio/reactivex/rxjava3/core/o0$c;

.field Q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field R:Lio/reactivex/rxjava3/disposables/f;

.field S:Lio/reactivex/rxjava3/disposables/f;

.field T:J

.field U:J


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/s;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/rxjava3/core/o0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "unit",
            "maxSize",
            "restartOnMaxSize",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;",
            "Lq7/s<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Lio/reactivex/rxjava3/core/o0$c;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/observers/l;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/fuseable/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->K:Lq7/s;

    .line 3
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->L:J

    .line 4
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->M:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->N:I

    .line 6
    iput-boolean p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->O:Z

    .line 7
    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->P:Lio/reactivex/rxjava3/core/o0$c;

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->S:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->P:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 5
    monitor-enter p0

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    .line 7
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->i(Lio/reactivex/rxjava3/core/n0;Ljava/util/Collection;)V

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

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->P:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/l;->G:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->I:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->G:Lio/reactivex/rxjava3/internal/fuseable/p;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/rxjava3/internal/util/o;->d(Lio/reactivex/rxjava3/internal/fuseable/p;Lio/reactivex/rxjava3/core/n0;ZLio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/internal/util/k;)V

    :cond_0
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

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->P:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->N:I

    if-ge p1, v1, :cond_1

    .line 6
    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    .line 8
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->T:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->T:J

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->O:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->R:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_2
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, p0}, Lio/reactivex/rxjava3/internal/observers/l;->h(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/f;)V

    .line 13
    :try_start_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->K:Lq7/s;

    invoke-interface {p1}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The buffer supplied is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    monitor-enter p0

    .line 15
    :try_start_2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    .line 16
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->U:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->U:J

    .line 17
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->O:Z

    if-eqz p1, :cond_3

    .line 19
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->P:Lio/reactivex/rxjava3/core/o0$c;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->L:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->M:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/o0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->R:Lio/reactivex/rxjava3/disposables/f;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 21
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->dispose()V

    return-void

    :catchall_2
    move-exception p1

    .line 24
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->S:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->S:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->K:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->P:Lio/reactivex/rxjava3/core/o0$c;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->L:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->M:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/o0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->R:Lio/reactivex/rxjava3/disposables/f;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;)V

    .line 10
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->P:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->K:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 4
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->T:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->U:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->Q:Ljava/util/Collection;

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/rxjava3/internal/observers/l;->h(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/f;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/p$a;->dispose()V

    .line 12
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/l;->F:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
