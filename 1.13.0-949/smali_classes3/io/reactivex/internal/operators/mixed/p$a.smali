.class final Lio/reactivex/internal/operators/mixed/p$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableSwitchMapMaybe.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/p$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final i:J = -0x4af86f46b0766842L

.field static final j:Lio/reactivex/internal/operators/mixed/p$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/p$a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/mixed/p$a$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/disposables/c;

.field volatile g:Z

.field volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/mixed/p$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/mixed/p$a$a;-><init>(Lio/reactivex/internal/operators/mixed/p$a;)V

    sput-object v0, Lio/reactivex/internal/operators/mixed/p$a;->j:Lio/reactivex/internal/operators/mixed/p$a$a;

    return-void
.end method

.method constructor <init>(Lio/reactivex/g0;Ln7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->a:Lio/reactivex/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/p$a;->b:Ln7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/p$a;->c:Z

    .line 5
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/p$a;->j:Lio/reactivex/internal/operators/mixed/p$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/p$a$a;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/p$a$a;->a()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->a:Lio/reactivex/g0;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/p$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/mixed/p$a;->h:Z

    if-eqz v5, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 7
    iget-boolean v5, p0, Lio/reactivex/internal/operators/mixed/p$a;->c:Z

    if-nez v5, :cond_3

    .line 8
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_3
    iget-boolean v5, p0, Lio/reactivex/internal/operators/mixed/p$a;->g:Z

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/internal/operators/mixed/p$a$a;

    if-nez v6, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 12
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    :goto_2
    return-void

    :cond_6
    if-nez v7, :cond_8

    .line 15
    iget-object v5, v6, Lio/reactivex/internal/operators/mixed/p$a$a;->b:Ljava/lang/Object;

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    iget-object v5, v6, Lio/reactivex/internal/operators/mixed/p$a$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v5}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    :goto_3
    neg-int v4, v4

    .line 18
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method c(Lio/reactivex/internal/operators/mixed/p$a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/p$a$a<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/p$a;->b()V

    :cond_0
    return-void
.end method

.method d(Lio/reactivex/internal/operators/mixed/p$a$a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/p$a$a<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->c:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->f:Lio/reactivex/disposables/c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/p$a;->a()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/p$a;->b()V

    return-void

    .line 7
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->h:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->f:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/p$a;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->h:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->g:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/p$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->c:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/p$a;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->g:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/p$a;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/p$a$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/p$a$a;->a()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->b:Ln7/o;

    invoke-interface {v0, p1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/mixed/p$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/mixed/p$a$a;-><init>(Lio/reactivex/internal/operators/mixed/p$a;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/mixed/p$a$a;

    .line 6
    sget-object v2, Lio/reactivex/internal/operators/mixed/p$a;->j:Lio/reactivex/internal/operators/mixed/p$a$a;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->f:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/p$a;->j:Lio/reactivex/internal/operators/mixed/p$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/p$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/p$a;->f:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->f:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/p$a;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    :cond_0
    return-void
.end method
