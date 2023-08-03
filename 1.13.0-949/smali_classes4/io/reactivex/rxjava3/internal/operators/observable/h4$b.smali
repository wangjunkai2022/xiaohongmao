.class final Lio/reactivex/rxjava3/internal/operators/observable/h4$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ObservableWindow.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final k:J = 0x2eb9e739d805fc76L


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

.field final b:J

.field final c:J

.field final d:I

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field f:J

.field volatile g:Z

.field h:J

.field i:Lio/reactivex/rxjava3/disposables/f;

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "count",
            "skip",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->a:Lio/reactivex/rxjava3/core/n0;

    .line 4
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->b:J

    .line 5
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->c:J

    .line 6
    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->d:I

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->e:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->g:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->e:Ljava/util/ArrayDeque;

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/subjects/j;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->e:Ljava/util/ArrayDeque;

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/subjects/j;

    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/subjects/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 13
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->e:Ljava/util/ArrayDeque;

    .line 2
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->f:J

    .line 3
    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->c:J

    .line 4
    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->g:Z

    if-nez v5, :cond_0

    .line 5
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->d:I

    invoke-static {v5, p0}, Lio/reactivex/rxjava3/subjects/j;->H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;

    move-result-object v5

    .line 7
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/observable/k4;

    invoke-direct {v6, v5}, Lio/reactivex/rxjava3/internal/operators/observable/k4;-><init>(Lio/reactivex/rxjava3/subjects/i;)V

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 9
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v5, v6}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 10
    :goto_0
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->h:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/rxjava3/subjects/j;

    .line 12
    invoke-virtual {v11, p1}, Lio/reactivex/rxjava3/subjects/j;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-wide v11, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->b:J

    cmp-long p1, v7, v11

    if-ltz p1, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/subjects/j;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->g:Z

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->i:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :cond_2
    sub-long/2addr v7, v3

    .line 17
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->h:J

    goto :goto_2

    .line 18
    :cond_3
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->h:J

    :goto_2
    add-long/2addr v1, v9

    .line 19
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->f:J

    if-eqz v6, :cond_4

    .line 20
    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/operators/observable/k4;->A8()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, v6, Lio/reactivex/rxjava3/internal/operators/observable/k4;->a:Lio/reactivex/rxjava3/subjects/i;

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    :cond_4
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->i:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->i:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->g:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$b;->i:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    return-void
.end method
