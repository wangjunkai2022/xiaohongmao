.class final Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;
.super Ljava/util/ArrayList;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0
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

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;->a:I

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
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

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;->a:I

    return-void
.end method

.method public c(Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;)V
    .locals 14
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
    iget-object v0, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->b:Lorg/reactivestreams/d;

    .line 8
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 9
    :cond_1
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;->a:I

    .line 10
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 12
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v4

    move-wide v10, v6

    :goto_2
    cmp-long v12, v8, v6

    if-eqz v12, :cond_6

    if-ge v2, v1, :cond_6

    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 14
    :try_start_1
    invoke-static {v12, v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/d;)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->isDisposed()Z

    move-result v12

    if-eqz v12, :cond_4

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    add-long/2addr v10, v12

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 16
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->dispose()V

    .line 18
    invoke-static {v12}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v12}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 19
    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {v1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :cond_6
    cmp-long v1, v10, v6

    if-eqz v1, :cond_7

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v6, v4, v1

    if-eqz v6, :cond_7

    .line 22
    invoke-virtual {p1, v10, v11}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->b(J)J

    .line 23
    :cond_7
    monitor-enter p1

    .line 24
    :try_start_2
    iget-boolean v1, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->f:Z

    if-nez v1, :cond_8

    .line 25
    iput-boolean v3, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->e:Z

    .line 26
    monitor-exit p1

    return-void

    .line 27
    :cond_8
    iput-boolean v3, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->f:Z

    .line 28
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 29
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public complete()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;->a:I

    return-void
.end method
