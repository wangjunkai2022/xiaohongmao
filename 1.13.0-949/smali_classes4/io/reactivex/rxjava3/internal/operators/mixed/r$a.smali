.class final Lio/reactivex/rxjava3/internal/operators/mixed/r$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMapMaybe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/mixed/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;
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
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final l:J = -0x7ed83da4674d8da5L

.field static final m:I = 0x0

.field static final n:I = 0x1

.field static final o:I = 0x2


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
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final d:Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/rxjava3/internal/fuseable/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field g:Lio/reactivex/rxjava3/disposables/f;

.field volatile h:Z

.field volatile i:Z

.field j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field volatile k:I


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "downstream",
            "mapper",
            "prefetch",
            "errorMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;I",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->b:Lq7/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 5
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/mixed/r$a;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->d:Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-direct {p1, p3}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    return-void
.end method


# virtual methods
.method a()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    .line 5
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->i:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 7
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 8
    iput-object v7, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->j:Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->k:I

    .line 10
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 11
    sget-object v8, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq v1, v8, :cond_3

    sget-object v8, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne v1, v8, :cond_4

    if-nez v6, :cond_4

    .line 12
    :cond_3
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 13
    iput-object v7, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->j:Ljava/lang/Object;

    .line 14
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    if-nez v6, :cond_8

    .line 15
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->h:Z

    .line 16
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/p;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    .line 17
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_1

    .line 18
    :cond_7
    :try_start_0
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->b:Lq7/o;

    invoke-interface {v6, v7}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The mapper returned a null MaybeSource"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lio/reactivex/rxjava3/core/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->k:I

    .line 20
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->d:Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;

    invoke-interface {v6, v7}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 21
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v4}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 23
    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 24
    invoke-virtual {v3, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 25
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :cond_8
    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    .line 26
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->j:Ljava/lang/Object;

    .line 27
    iput-object v7, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->j:Ljava/lang/Object;

    .line 28
    invoke-interface {v0, v6}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 29
    iput v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->k:I

    goto :goto_0

    :cond_9
    :goto_1
    neg-int v5, v5

    .line 30
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->k:I

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->k:I

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a()V

    :cond_1
    return-void
.end method

.method d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->k:I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->i:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->d:Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;->a()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->j:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->h:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->c:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->f:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->d:Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a$a;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->h:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a()V

    :cond_1
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->e:Lio/reactivex/rxjava3/internal/fuseable/p;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->g:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/r$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method
