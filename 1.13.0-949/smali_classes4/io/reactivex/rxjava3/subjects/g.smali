.class final Lio/reactivex/rxjava3/subjects/g;
.super Lio/reactivex/rxjava3/subjects/i;
.source "SerializedSubject.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/util/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/subjects/i<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/util/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/subjects/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lio/reactivex/rxjava3/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/subjects/i;)V
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
            "Lio/reactivex/rxjava3/subjects/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/subjects/i;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    return-void
.end method


# virtual methods
.method public A8()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lp7/f;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/i;->A8()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public B8()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/i;->B8()Z

    move-result v0

    return v0
.end method

.method public C8()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/i;->C8()Z

    move-result v0

    return v0
.end method

.method public D8()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/i;->D8()Z

    move-result v0

    return v0
.end method

.method F8()V
    .locals 2

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/util/a;->d(Lio/reactivex/rxjava3/internal/util/a$a;)V

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

.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 1
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

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    .line 6
    iget-boolean v1, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 9
    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

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
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    .line 6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 9
    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

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
    iput-boolean v1, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

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
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 8
    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

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
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/g;->F8()V

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

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;-><init>(I)V

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->c:Lio/reactivex/rxjava3/internal/util/a;

    .line 8
    :cond_1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->disposable(Lio/reactivex/rxjava3/disposables/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/a;->c(Ljava/lang/Object;)V

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    iput-boolean v1, p0, Lio/reactivex/rxjava3/subjects/g;->b:Z

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
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 14
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/g;->F8()V

    :goto_2
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/g;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/rxjava3/core/n0;)Z

    move-result p1

    return p1
.end method
