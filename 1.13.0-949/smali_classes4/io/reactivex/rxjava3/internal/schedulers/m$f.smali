.class abstract Lio/reactivex/rxjava3/internal/schedulers/m$f;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SchedulerWhen.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/m;->e:Lio/reactivex/rxjava3/disposables/f;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/rxjava3/core/o0$c;Lio/reactivex/rxjava3/core/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actualWorker",
            "actionCompletable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/f;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/m;->f:Lio/reactivex/rxjava3/disposables/f;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/m;->e:Lio/reactivex/rxjava3/disposables/f;

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/m$f;->b(Lio/reactivex/rxjava3/core/o0$c;Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_2
    return-void
.end method

.method protected abstract b(Lio/reactivex/rxjava3/core/o0$c;Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/disposables/f;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actualWorker",
            "actionCompletable"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/m;->f:Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->isDisposed()Z

    move-result v0

    return v0
.end method
