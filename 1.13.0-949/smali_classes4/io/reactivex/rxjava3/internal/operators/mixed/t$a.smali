.class final Lio/reactivex/rxjava3/internal/operators/mixed/t$a;
.super Ljava/lang/Object;
.source "ObservableSwitchMapCompletable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/mixed/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field static final h:Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;


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

.field final c:Z

.field final d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Z

.field g:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/mixed/t$a;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->h:Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/core/d;Lq7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downstream",
            "mapper",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/d;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a:Lio/reactivex/rxjava3/core/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->b:Lq7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->c:Z

    .line 5
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->h:Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;->a()V

    :cond_0
    return-void
.end method

.method b(Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sender"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->f:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    :cond_0
    return-void
.end method

.method c(Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sender",
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->c:Z

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->f:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a()V

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->h:Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->f:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    :cond_0
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->c:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a()V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->d:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
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
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->b:Lq7/o;

    invoke-interface {v0, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/mixed/t$a;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    .line 4
    sget-object v2, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->h:Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a$a;->a()V

    .line 7
    :cond_2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 10
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->g:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/t$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method
