.class final Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableGroupBy.java"

# interfaces
.implements Lio/reactivex/disposables/c;
.implements Lio/reactivex/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/c;",
        "Lio/reactivex/e0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final j:J = -0x35762a4bbab31538L


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field volatile e:Z

.field f:Ljava/lang/Throwable;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/g0<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Lio/reactivex/internal/queue/b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b:Lio/reactivex/internal/queue/b;

    .line 6
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    .line 7
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->a:Ljava/lang/Object;

    .line 8
    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->d:Z

    return-void
.end method


# virtual methods
.method a(ZZLio/reactivex/g0;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/g0<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b:Lio/reactivex/internal/queue/b;

    invoke-virtual {p1}, Lio/reactivex/internal/queue/b;->clear()V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;->cancel(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->f:Ljava/lang/Throwable;

    .line 6
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p3, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p3}, Lio/reactivex/g0;->onComplete()V

    :goto_0
    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->f:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b:Lio/reactivex/internal/queue/b;

    invoke-virtual {p2}, Lio/reactivex/internal/queue/b;->clear()V

    .line 11
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p3, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 14
    invoke-interface {p3}, Lio/reactivex/g0;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b:Lio/reactivex/internal/queue/b;

    .line 3
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->d:Z

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/g0;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 5
    :goto_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->e:Z

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 7
    :goto_2
    invoke-virtual {p0, v5, v7, v2, v1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->a(ZZLio/reactivex/g0;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-interface {v2, v6}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_3
    neg-int v4, v4

    .line 9
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/g0;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->e:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b()V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->f:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;->cancel(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public subscribe(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$b;->b()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Observer allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/g0;)V

    :goto_0
    return-void
.end method
