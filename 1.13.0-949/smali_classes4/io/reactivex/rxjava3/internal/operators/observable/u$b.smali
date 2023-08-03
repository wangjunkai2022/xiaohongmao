.class final Lio/reactivex/rxjava3/internal/operators/observable/u$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final k:J = 0x7a85719c209ca572L


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/u$b$a<",
            "TU;>;"
        }
    .end annotation
.end field

.field final d:I

.field e:Lio/reactivex/rxjava3/internal/fuseable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/rxjava3/disposables/f;

.field volatile g:Z

.field volatile h:Z

.field volatile i:Z

.field j:I


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "mapper",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->b:Lq7/o;

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->d:I

    .line 5
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;

    invoke-direct {p2, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/operators/observable/u$b;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->c:Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->h:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->g:Z

    if-nez v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->i:Z

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 7
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->h:Z

    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void

    :cond_3
    if-nez v3, :cond_4

    .line 9
    :try_start_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->b:Lq7/o;

    invoke-interface {v0, v1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lio/reactivex/rxjava3/core/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->g:Z

    .line 11
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->c:Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->dispose()V

    .line 14
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 15
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 16
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->dispose()V

    .line 18
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 19
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->g:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->h:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->c:Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b$a;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->f:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->h:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->i:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a()V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->i:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->dispose()V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

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

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->j:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->f:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->f:Lio/reactivex/rxjava3/disposables/f;

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
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->j:I

    .line 7
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 8
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->i:Z

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->j:I

    .line 12
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 13
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->d:I

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->e:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 15
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u$b;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_2
    return-void
.end method
