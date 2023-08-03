.class final Lio/reactivex/rxjava3/internal/operators/completable/t0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableUsing.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/d;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/completable/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/rxjava3/core/d;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final e:J = -0x95bf75d78cfb0efL


# instance fields
.field final a:Lio/reactivex/rxjava3/core/d;

.field final b:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final c:Z

.field d:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/d;Ljava/lang/Object;Lq7/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "resource",
            "disposer",
            "eager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/d;",
            "TR;",
            "Lq7/g<",
            "-TR;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a:Lio/reactivex/rxjava3/core/d;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->b:Lq7/g;

    .line 4
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->c:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->b:Lq7/g;

    invoke-interface {v1, v0}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 6
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    .line 7
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a()V

    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->c:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->b:Lq7/g;

    invoke-interface {v1, v0}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/d;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/d;->onComplete()V

    .line 8
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->c:Z

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a()V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->c:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->b:Lq7/g;

    invoke-interface {v1, v0}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/d;->onError(Ljava/lang/Throwable;)V

    .line 8
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->c:Z

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a()V

    :cond_2
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->d:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/t0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method
