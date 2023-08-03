.class final Lio/reactivex/rxjava3/internal/operators/mixed/q$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMapCompletable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/mixed/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final l:J = 0x321c7f6dd838d46aL


# instance fields
.field final a:Lio/reactivex/rxjava3/core/d;

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field final d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final e:Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;

.field final f:I

.field g:Lio/reactivex/rxjava3/internal/fuseable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/rxjava3/disposables/f;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/d;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V
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
            "errorMode",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/d;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->b:Lq7/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->c:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->f:I

    .line 6
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 7
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/mixed/q$a;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->e:Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->c:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 4
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    return-void

    .line 6
    :cond_2
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->i:Z

    if-nez v2, :cond_6

    .line 7
    sget-object v2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    .line 10
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 11
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    return-void

    .line 12
    :cond_3
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->j:Z

    const/4 v4, 0x0

    .line 13
    :try_start_0
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v5}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 14
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->b:Lq7/o;

    invoke-interface {v4, v5}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lio/reactivex/rxjava3/core/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    .line 15
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    .line 16
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    return-void

    :cond_5
    if-nez v5, :cond_6

    .line 17
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->i:Z

    .line 18
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->e:Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;

    invoke-interface {v4, v2}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 19
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 20
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    .line 21
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v2}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 22
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v2}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 23
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 24
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    return-void

    .line 25
    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->c:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->i:Z

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->e:Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;->a()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->c:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->k:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->e:Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a$a;->a()V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->j:Z

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a()V

    :cond_1
    :goto_0
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

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->h:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->h:Lio/reactivex/rxjava3/disposables/f;

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
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 7
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->j:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->f:I

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->g:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 13
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/q$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_2
    return-void
.end method
