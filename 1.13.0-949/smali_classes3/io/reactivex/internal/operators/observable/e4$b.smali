.class final Lio/reactivex/internal/operators/observable/e4$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ObservableWindow.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/e4;
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
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final k:J = 0x2eb9e739d805fc76L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
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
            "Lio/reactivex/subjects/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field f:J

.field volatile g:Z

.field h:J

.field i:Lio/reactivex/disposables/c;

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/g0;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e4$b;->a:Lio/reactivex/g0;

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/e4$b;->b:J

    .line 5
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/e4$b;->c:J

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/observable/e4$b;->d:I

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e4$b;->e:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->g:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->e:Ljava/util/ArrayDeque;

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/j;

    invoke-virtual {v1}, Lio/reactivex/subjects/j;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->e:Ljava/util/ArrayDeque;

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/j;

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->e:Ljava/util/ArrayDeque;

    .line 2
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/e4$b;->f:J

    .line 3
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/e4$b;->c:J

    .line 4
    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/e4$b;->g:Z

    if-nez v5, :cond_0

    .line 5
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/e4$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    iget v5, p0, Lio/reactivex/internal/operators/observable/e4$b;->d:I

    invoke-static {v5, p0}, Lio/reactivex/subjects/j;->j(ILjava/lang/Runnable;)Lio/reactivex/subjects/j;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/e4$b;->a:Lio/reactivex/g0;

    invoke-interface {v6, v5}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/e4$b;->h:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/subjects/j;

    .line 11
    invoke-virtual {v10, p1}, Lio/reactivex/subjects/j;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-wide v9, p0, Lio/reactivex/internal/operators/observable/e4$b;->b:J

    cmp-long p1, v5, v9

    if-ltz p1, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/subjects/j;

    invoke-virtual {p1}, Lio/reactivex/subjects/j;->onComplete()V

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/e4$b;->g:Z

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e4$b;->i:Lio/reactivex/disposables/c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    return-void

    :cond_2
    sub-long/2addr v5, v3

    .line 16
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/e4$b;->h:J

    goto :goto_1

    .line 17
    :cond_3
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/e4$b;->h:J

    :goto_1
    add-long/2addr v1, v7

    .line 18
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/e4$b;->f:J

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->i:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e4$b;->i:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e4$b;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->g:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$b;->i:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method
