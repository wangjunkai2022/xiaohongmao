.class final Lio/reactivex/rxjava3/internal/operators/observable/w$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMapScheduler.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
.field private static final n:J = -0x6077449f877ccfe7L


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final e:Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/w$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final f:Z

.field final g:Lio/reactivex/rxjava3/core/o0$c;

.field h:Lio/reactivex/rxjava3/internal/fuseable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Lio/reactivex/rxjava3/disposables/f;

.field volatile j:Z

.field volatile k:Z

.field volatile l:Z

.field m:I


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;IZLio/reactivex/rxjava3/core/o0$c;)V
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
            "actual",
            "mapper",
            "bufferSize",
            "tillTheEnd",
            "worker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;IZ",
            "Lio/reactivex/rxjava3/core/o0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->b:Lq7/o;

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->c:I

    .line 5
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->f:Z

    .line 6
    new-instance p2, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 7
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;

    invoke-direct {p2, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/operators/observable/w$a;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->e:Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;

    .line 8
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->g:Lio/reactivex/rxjava3/core/o0$c;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->g:Lio/reactivex/rxjava3/core/o0$c;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/o0$c;->b(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->i:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->e:Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;->a()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->g:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->k:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a()V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
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
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->m:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a()V

    return-void
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->i:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->i:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    instance-of v0, p1, Lio/reactivex/rxjava3/internal/fuseable/l;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lio/reactivex/rxjava3/internal/fuseable/l;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/internal/fuseable/m;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->m:I

    .line 7
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 8
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->k:Z

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->m:I

    .line 12
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 13
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->c:I

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 15
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 3
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 4
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->j:Z

    if-nez v3, :cond_6

    .line 5
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    return-void

    .line 7
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->f:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 10
    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    .line 11
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->g:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    .line 13
    :cond_2
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->k:Z

    .line 14
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 15
    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    .line 16
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    .line 17
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->g:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :cond_4
    if-nez v6, :cond_6

    .line 18
    :try_start_1
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->b:Lq7/o;

    invoke-interface {v3, v5}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "The mapper returned a null ObservableSource"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lio/reactivex/rxjava3/core/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    instance-of v5, v3, Lq7/s;

    if-eqz v5, :cond_5

    .line 20
    :try_start_2
    check-cast v3, Lq7/s;

    invoke-interface {v3}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 21
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    if-nez v4, :cond_0

    .line 22
    invoke-interface {v0, v3}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 23
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 25
    :cond_5
    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->j:Z

    .line 26
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->e:Lio/reactivex/rxjava3/internal/operators/observable/w$a$a;

    invoke-interface {v3, v4}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 27
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 28
    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    .line 29
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->i:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v4}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 30
    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 31
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 32
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    .line 33
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->g:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :catchall_2
    move-exception v1

    .line 34
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 35
    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->l:Z

    .line 36
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->i:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v3}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 37
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 38
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    .line 39
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/w$a;->g:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    .line 40
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method
