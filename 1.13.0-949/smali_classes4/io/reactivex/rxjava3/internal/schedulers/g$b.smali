.class final Lio/reactivex/rxjava3/internal/schedulers/g$b;
.super Lio/reactivex/rxjava3/core/o0$c;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/disposables/c;

.field private final b:Lio/reactivex/rxjava3/internal/schedulers/g$a;

.field private final c:Lio/reactivex/rxjava3/internal/schedulers/g$c;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pool"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/o0$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->b:Lio/reactivex/rxjava3/internal/schedulers/g$a;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->a:Lio/reactivex/rxjava3/disposables/c;

    .line 5
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/schedulers/g$a;->b()Lio/reactivex/rxjava3/internal/schedulers/g$c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->c:Lio/reactivex/rxjava3/internal/schedulers/g$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "delayTime",
            "unit"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->a:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->c:Lio/reactivex/rxjava3/internal/schedulers/g$c;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->a:Lio/reactivex/rxjava3/disposables/c;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/i;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/g;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->a:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->b:Lio/reactivex/rxjava3/internal/schedulers/g$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->c:Lio/reactivex/rxjava3/internal/schedulers/g$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/g$a;->d(Lio/reactivex/rxjava3/internal/schedulers/g$c;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
