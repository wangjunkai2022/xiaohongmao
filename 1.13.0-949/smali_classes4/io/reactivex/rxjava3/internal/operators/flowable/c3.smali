.class public final Lio/reactivex/rxjava3/internal/operators/flowable/c3;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/flowables/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:Lio/reactivex/rxjava3/core/o0;

.field g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/flowables/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;-><init>(Lio/reactivex/rxjava3/flowables/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/flowables/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "n",
            "timeout",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->b:Lio/reactivex/rxjava3/flowables/a;

    .line 4
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->c:I

    .line 5
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->d:J

    .line 6
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->e:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->f:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/c3;)V

    .line 4
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    .line 5
    :cond_0
    iget-wide v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 6
    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->b:Lio/reactivex/rxjava3/disposables/f;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->c:J

    .line 9
    iget-boolean v3, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->d:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->c:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 10
    iput-boolean v4, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->d:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 11
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->b:Lio/reactivex/rxjava3/flowables/a;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;

    invoke-direct {v2, p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/c3$b;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/operators/flowable/c3;Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    if-eqz v4, :cond_3

    .line 13
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->b:Lio/reactivex/rxjava3/flowables/a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/flowables/a;->k9(Lq7/g;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method g9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rc"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-wide v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 4
    iput-wide v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 5
    iget-boolean v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->d:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->i9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    .line 10
    iput-object v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->b:Lio/reactivex/rxjava3/disposables/f;

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->f:Lio/reactivex/rxjava3/core/o0;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->d:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/core/o0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void

    .line 13
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 14
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method h9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rc"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    if-ne v0, p1, :cond_1

    .line 3
    iget-object v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->b:Lio/reactivex/rxjava3/disposables/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 5
    iput-object v1, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->b:Lio/reactivex/rxjava3/disposables/f;

    .line 6
    :cond_0
    iget-wide v2, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->c:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 7
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->b:Lio/reactivex/rxjava3/flowables/a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/flowables/a;->r9()V

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method i9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rc"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->g:Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/f;

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->e:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->b:Lio/reactivex/rxjava3/flowables/a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/flowables/a;->r9()V

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
