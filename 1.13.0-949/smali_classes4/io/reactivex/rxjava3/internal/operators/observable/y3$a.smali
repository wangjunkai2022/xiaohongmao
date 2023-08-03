.class final Lio/reactivex/rxjava3/internal/operators/observable/y3$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableThrottleLatest.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/y3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final m:J = -0x7323c2cdbcdaca16L


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/rxjava3/core/o0$c;

.field final e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/rxjava3/disposables/f;

.field volatile h:Z

.field i:Ljava/lang/Throwable;

.field volatile j:Z

.field volatile k:Z

.field l:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;Z)V
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
            "downstream",
            "timeout",
            "unit",
            "worker",
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0$c;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->d:Lio/reactivex/rxjava3/core/o0$c;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->e:Z

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->a:Lio/reactivex/rxjava3/core/n0;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->j:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->h:Z

    if-eqz v4, :cond_3

    .line 7
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->i:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->i:Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v4, :cond_6

    .line 12
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_5

    .line 13
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->e:Z

    if-eqz v2, :cond_5

    .line 14
    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 15
    :cond_5
    invoke-interface {v1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    .line 16
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :cond_6
    if-eqz v6, :cond_7

    .line 17
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->k:Z

    if-eqz v4, :cond_8

    .line 18
    iput-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->l:Z

    .line 19
    iput-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->k:Z

    goto :goto_2

    .line 20
    :cond_7
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->l:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->k:Z

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    neg-int v3, v3

    .line 21
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 22
    :cond_9
    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 23
    invoke-interface {v1, v4}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 24
    iput-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->k:Z

    .line 25
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->l:Z

    .line 26
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->d:Lio/reactivex/rxjava3/core/o0$c;

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->b:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, v5, v6, v7}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->j:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->j:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->h:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->i:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->h:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->a()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->g:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/y3$a;->a()V

    return-void
.end method
