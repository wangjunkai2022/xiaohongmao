.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;",
        ">;",
        "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:J = 0x2090aef8efde5e9eL


# instance fields
.field final a:Z

.field b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

.field c:I

.field d:J


# direct methods
.method constructor <init>(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eagerTruncate"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->a:Z

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;-><init>(Ljava/lang/Object;J)V

    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->h(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d:J

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;-><init>(Ljava/lang/Object;J)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->r()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->h(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d:J

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;-><init>(Ljava/lang/Object;J)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->q()V

    return-void
.end method

.method public final c(Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->f:Z

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    iput-boolean v1, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->e:Z

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    const-wide/16 v6, 0x0

    if-nez v5, :cond_2

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->i()Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    move-result-object v5

    .line 10
    iput-object v5, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    .line 11
    iget-object v8, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v9, v5, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->b:J

    invoke-static {v8, v9, v10}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_2
    move-wide v8, v6

    :goto_2
    const/4 v10, 0x0

    cmp-long v11, v2, v6

    if-eqz v11, :cond_6

    .line 12
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->isDisposed()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 13
    iput-object v10, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    return-void

    .line 14
    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    if-eqz v12, :cond_6

    .line 15
    iget-object v5, v12, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 16
    :try_start_1
    iget-object v11, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->b:Lorg/reactivestreams/d;

    invoke-static {v5, v11}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/d;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 17
    iput-object v10, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    sub-long/2addr v2, v10

    move-object v5, v12

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 19
    iput-object v10, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->dispose()V

    .line 21
    invoke-static {v5}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v5}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 22
    iget-object p1, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->b:Lorg/reactivestreams/d;

    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 23
    :cond_5
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :cond_6
    if-nez v11, :cond_7

    .line 24
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    iput-object v10, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    return-void

    :cond_7
    cmp-long v2, v8, v6

    if-eqz v2, :cond_8

    .line 26
    iput-object v5, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    if-nez v4, :cond_8

    .line 27
    invoke-virtual {p1, v8, v9}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->b(J)J

    .line 28
    :cond_8
    monitor-enter p1

    .line 29
    :try_start_2
    iget-boolean v2, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->f:Z

    if-nez v2, :cond_9

    .line 30
    iput-boolean v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->e:Z

    .line 31
    monitor-exit p1

    return-void

    .line 32
    :cond_9
    iput-boolean v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->f:Z

    .line 33
    monitor-exit p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 34
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public final complete()V
    .locals 6

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->h(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d:J

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;-><init>(Ljava/lang/Object;J)V

    .line 3
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->d(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->r()V

    return-void
.end method

.method final d(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 3
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    return-void
.end method

.method final e(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->i()Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method h(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "terminal"
        }
    .end annotation

    return-object p1
.end method

.method i()Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    return-object v0
.end method

.method j()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method k()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return-object p1
.end method

.method final m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->o(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final n(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    :goto_0
    if-lez p1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    add-int/lit8 p1, p1, -0x1

    .line 3
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->o(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    :cond_1
    return-void
.end method

.method final o(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    const/4 v1, 0x0

    iget-wide v2, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->b:J

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;-><init>(Ljava/lang/Object;J)V

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final p()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 2
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;-><init>(Ljava/lang/Object;J)V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method abstract q()V
.end method

.method r()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->p()V

    return-void
.end method
