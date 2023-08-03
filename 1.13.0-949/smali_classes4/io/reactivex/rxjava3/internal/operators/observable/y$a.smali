.class final Lio/reactivex/rxjava3/internal/operators/observable/y$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableConcatWithMaybe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/core/y;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/y;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/core/y<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final d:J = -0x1b1d064eff7fbe78L


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/rxjava3/core/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->b:Lio/reactivex/rxjava3/core/b0;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->c:Z

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->b:Lio/reactivex/rxjava3/core/b0;

    .line 6
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->b:Lio/reactivex/rxjava3/core/b0;

    .line 7
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    :goto_0
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->c:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/y$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void
.end method
