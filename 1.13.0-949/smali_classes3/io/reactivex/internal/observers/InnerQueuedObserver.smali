.class public final Lio/reactivex/internal/observers/InnerQueuedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InnerQueuedObserver.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/c;",
        ">;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final f:J = -0x4b2db39073b2fa8dL


# instance fields
.field final a:Lio/reactivex/internal/observers/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Lo7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile d:Z

.field e:I


# direct methods
.method public constructor <init>(Lio/reactivex/internal/observers/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/j<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    .line 3
    iput p2, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->b:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public fusionMode()I
    .locals 1

    iget v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->e:I

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/c;)Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->d:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0, p0}, Lio/reactivex/internal/observers/j;->d(Lio/reactivex/internal/observers/InnerQueuedObserver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/observers/j;->c(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Throwable;)V

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
    iget v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->e:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/observers/j;->e(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {p1}, Lio/reactivex/internal/observers/j;->b()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lo7/j;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lo7/j;

    const/4 v0, 0x3

    .line 4
    invoke-interface {p1, v0}, Lo7/k;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->e:I

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lo7/o;

    .line 7
    iput-boolean v1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->d:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {p1, p0}, Lio/reactivex/internal/observers/j;->d(Lio/reactivex/internal/observers/InnerQueuedObserver;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->e:I

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lo7/o;

    return-void

    .line 11
    :cond_1
    iget p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->b:I

    neg-int p1, p1

    invoke-static {p1}, Lio/reactivex/internal/util/o;->c(I)Lo7/o;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lo7/o;

    :cond_2
    return-void
.end method

.method public queue()Lo7/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/o<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lo7/o;

    return-object v0
.end method

.method public setDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->d:Z

    return-void
.end method
