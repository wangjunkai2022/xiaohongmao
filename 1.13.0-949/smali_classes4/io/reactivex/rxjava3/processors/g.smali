.class final Lio/reactivex/rxjava3/processors/g;
.super Lio/reactivex/rxjava3/processors/c;
.source "SerializedProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/processors/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/processors/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Lio/reactivex/rxjava3/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile e:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/processors/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "actual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/processors/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/processors/c;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 1
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

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->i(Lorg/reactivestreams/d;)V

    return-void
.end method

.method public g9()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lp7/f;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/c;->g9()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public h9()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/c;->h9()Z

    move-result v0

    return v0
.end method

.method public i9()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/c;->i9()Z

    move-result v0

    return v0
.end method

.method public j9()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/c;->j9()Z

    move-result v0

    return v0
.end method

.method l9()V
    .locals 2

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;->b(Lorg/reactivestreams/d;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    .line 6
    iget-boolean v1, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 9
    iput-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    .line 10
    :cond_2
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;->c(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    .line 6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 9
    iput-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    .line 10
    :cond_2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/a;->f(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput-boolean v1, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 14
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 15
    :cond_4
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 8
    iput-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    .line 9
    :cond_2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/a;->c(Ljava/lang/Object;)V

    .line 10
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/g;->l9()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/processors/g;->d:Lio/reactivex/rxjava3/internal/util/a;

    .line 8
    :cond_1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->subscription(Lorg/reactivestreams/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/a;->c(Ljava/lang/Object;)V

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    iput-boolean v1, p0, Lio/reactivex/rxjava3/processors/g;->c:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 12
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/r;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 14
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/g;->l9()V

    :goto_2
    return-void
.end method
