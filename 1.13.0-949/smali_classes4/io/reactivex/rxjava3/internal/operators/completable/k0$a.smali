.class final Lio/reactivex/rxjava3/internal/operators/completable/k0$a;
.super Ljava/lang/Object;
.source "CompletablePeek.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/d;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/completable/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/d;

.field b:Lio/reactivex/rxjava3/disposables/f;

.field final synthetic c:Lio/reactivex/rxjava3/internal/operators/completable/k0;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/k0;Lio/reactivex/rxjava3/core/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "downstream"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a:Lio/reactivex/rxjava3/core/d;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->f:Lq7/a;

    invoke-interface {v0}, Lq7/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->g:Lq7/a;

    invoke-interface {v0}, Lq7/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->b:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->b:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->b:Lio/reactivex/rxjava3/disposables/f;

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->d:Lq7/a;

    invoke-interface {v0}, Lq7/a;->run()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->e:Lq7/a;

    invoke-interface {v0}, Lq7/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/d;->onComplete()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/d;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->b:Lio/reactivex/rxjava3/disposables/f;

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->c:Lq7/g;

    invoke-interface {v0, p1}, Lq7/g;->accept(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->e:Lq7/a;

    invoke-interface {v0}, Lq7/a;->run()V
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

    .line 7
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/d;->onError(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->c:Lio/reactivex/rxjava3/internal/operators/completable/k0;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->b:Lq7/g;

    invoke-interface {v0, p1}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->b:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->b:Lio/reactivex/rxjava3/disposables/f;

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 7
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->b:Lio/reactivex/rxjava3/disposables/f;

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;->a:Lio/reactivex/rxjava3/core/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
