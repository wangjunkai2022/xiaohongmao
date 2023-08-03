.class final Lio/reactivex/rxjava3/internal/operators/maybe/w$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeEqualSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/maybe/w;
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
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/maybe/w$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/maybe/w$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lq7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/s0;Lq7/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "isEqual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lq7/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->a:Lio/reactivex/rxjava3/core/s0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->d:Lq7/d;

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;-><init>(Lio/reactivex/rxjava3/internal/operators/maybe/w$a;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->b:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    .line 5
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;-><init>(Lio/reactivex/rxjava3/internal/operators/maybe/w$a;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->c:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->b:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->b:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->c:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->d:Lq7/d;

    invoke-interface {v2, v0, v1}, Lq7/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->a:Lio/reactivex/rxjava3/core/s0;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/s0;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->a:Lio/reactivex/rxjava3/core/s0;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/s0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->a:Lio/reactivex/rxjava3/core/s0;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/s0;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method b(Lio/reactivex/rxjava3/internal/operators/maybe/w$b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sender",
            "ex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/maybe/w$b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->b:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->c:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a()V

    .line 5
    :goto_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->a:Lio/reactivex/rxjava3/core/s0;

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/s0;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method c(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->b:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->c:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->b:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->c:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->b:Lio/reactivex/rxjava3/internal/operators/maybe/w$b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    return v0
.end method
