.class public final Lio/reactivex/rxjava3/internal/operators/observable/k2;
.super Lio/reactivex/rxjava3/observables/a;
.source "ObservablePublish.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/k2$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/k2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/observables/a<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/k2$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/observables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->a:Lio/reactivex/rxjava3/core/l0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public E8(Lq7/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :cond_2
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/g;->i(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public L8()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;

    if-nez v0, :cond_1

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/k2$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/k2$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/operators/observable/k2$b;)V

    .line 5
    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;->a(Lio/reactivex/rxjava3/internal/operators/observable/k2$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/k2$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;->b(Lio/reactivex/rxjava3/internal/operators/observable/k2$a;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/k2$b;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    :goto_1
    return-void
.end method

.method public source()Lio/reactivex/rxjava3/core/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/k2;->a:Lio/reactivex/rxjava3/core/l0;

    return-object v0
.end method
