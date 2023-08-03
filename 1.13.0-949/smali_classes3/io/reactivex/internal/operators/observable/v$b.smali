.class final Lio/reactivex/internal/operators/observable/v$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMap.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v$b$a;
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
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final k:J = 0x7a85719c209ca572L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/observable/v$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/v$b$a<",
            "TU;>;"
        }
    .end annotation
.end field

.field final d:I

.field e:Lo7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/disposables/c;

.field volatile g:Z

.field volatile h:Z

.field volatile i:Z

.field j:I


# direct methods
.method constructor <init>(Lio/reactivex/g0;Ln7/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TU;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TU;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v$b;->b:Ln7/o;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/observable/v$b;->d:I

    .line 5
    new-instance p2, Lio/reactivex/internal/operators/observable/v$b$a;

    invoke-direct {p2, p1, p0}, Lio/reactivex/internal/operators/observable/v$b$a;-><init>(Lio/reactivex/g0;Lio/reactivex/internal/operators/observable/v$b;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v$b;->c:Lio/reactivex/internal/operators/observable/v$b$a;

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->h:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    invoke-interface {v0}, Lo7/o;->clear()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->g:Z

    if-nez v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->i:Z

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    invoke-interface {v1}, Lo7/o;->poll()Ljava/lang/Object;

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
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/v$b;->h:Z

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void

    :cond_3
    if-nez v3, :cond_4

    .line 9
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->b:Ln7/o;

    invoke-interface {v0, v1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/e0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/v$b;->g:Z

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v$b;->c:Lio/reactivex/internal/operators/observable/v$b$a;

    invoke-interface {v0, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$b;->dispose()V

    .line 14
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    invoke-interface {v1}, Lo7/o;->clear()V

    .line 15
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    invoke-interface {v1, v0}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 16
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$b;->dispose()V

    .line 18
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    invoke-interface {v1}, Lo7/o;->clear()V

    .line 19
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    invoke-interface {v1, v0}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

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
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->g:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$b;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->h:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->c:Lio/reactivex/internal/operators/observable/v$b$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/v$b$a;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->f:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    invoke-interface {v0}, Lo7/o;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->h:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->i:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$b;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->i:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$b;->dispose()V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/v$b;->j:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    invoke-interface {v0, p1}, Lo7/o;->offer(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$b;->a()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$b;->f:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->f:Lio/reactivex/disposables/c;

    .line 3
    instance-of v0, p1, Lo7/j;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lo7/j;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Lo7/k;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Lio/reactivex/internal/operators/observable/v$b;->j:I

    .line 7
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    .line 8
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/v$b;->i:Z

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$b;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Lio/reactivex/internal/operators/observable/v$b;->j:I

    .line 12
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lio/reactivex/internal/queue/b;

    iget v0, p0, Lio/reactivex/internal/operators/observable/v$b;->d:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->e:Lo7/o;

    .line 15
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v$b;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    :cond_2
    return-void
.end method
