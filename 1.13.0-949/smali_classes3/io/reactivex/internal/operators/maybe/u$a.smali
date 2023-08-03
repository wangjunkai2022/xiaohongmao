.class final Lio/reactivex/internal/operators/maybe/u$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeEqualSingle.java"

# interfaces
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/u;
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
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/maybe/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/u$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/maybe/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/u$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Ln7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/l0;Ln7/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ln7/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/u$a;->a:Lio/reactivex/l0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/u$a;->d:Ln7/d;

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/maybe/u$b;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/u$b;-><init>(Lio/reactivex/internal/operators/maybe/u$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/u$a;->b:Lio/reactivex/internal/operators/maybe/u$b;

    .line 5
    new-instance p1, Lio/reactivex/internal/operators/maybe/u$b;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/u$b;-><init>(Lio/reactivex/internal/operators/maybe/u$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/u$a;->c:Lio/reactivex/internal/operators/maybe/u$b;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$a;->b:Lio/reactivex/internal/operators/maybe/u$b;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/u$b;->b:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/u$a;->c:Lio/reactivex/internal/operators/maybe/u$b;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/u$b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/u$a;->d:Ln7/d;

    invoke-interface {v2, v0, v1}, Ln7/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/u$a;->a:Lio/reactivex/l0;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/u$a;->a:Lio/reactivex/l0;

    invoke-interface {v1, v0}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/u$a;->a:Lio/reactivex/l0;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method b(Lio/reactivex/internal/operators/maybe/u$b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/u$b<",
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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$a;->b:Lio/reactivex/internal/operators/maybe/u$b;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/u$a;->c:Lio/reactivex/internal/operators/maybe/u$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/u$b;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/u$b;->a()V

    .line 5
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/u$a;->a:Lio/reactivex/l0;

    invoke-interface {p1, p2}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method c(Lio/reactivex/w;Lio/reactivex/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$a;->b:Lio/reactivex/internal/operators/maybe/u$b;

    invoke-interface {p1, v0}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/u$a;->c:Lio/reactivex/internal/operators/maybe/u$b;

    invoke-interface {p2, p1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$a;->b:Lio/reactivex/internal/operators/maybe/u$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/u$b;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$a;->c:Lio/reactivex/internal/operators/maybe/u$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/u$b;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$a;->b:Lio/reactivex/internal/operators/maybe/u$b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/c;)Z

    move-result v0

    return v0
.end method
