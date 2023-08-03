.class final Lio/reactivex/rxjava3/internal/schedulers/b$a;
.super Lio/reactivex/rxjava3/core/o0$c;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/internal/disposables/a;

.field private final b:Lio/reactivex/rxjava3/disposables/c;

.field private final c:Lio/reactivex/rxjava3/internal/disposables/a;

.field private final d:Lio/reactivex/rxjava3/internal/schedulers/b$c;

.field volatile e:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/b$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poolWorker"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/o0$c;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->d:Lio/reactivex/rxjava3/internal/schedulers/b$c;

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/a;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->a:Lio/reactivex/rxjava3/internal/disposables/a;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->b:Lio/reactivex/rxjava3/disposables/c;

    .line 5
    new-instance v1, Lio/reactivex/rxjava3/internal/disposables/a;

    invoke-direct {v1}, Lio/reactivex/rxjava3/internal/disposables/a;-><init>()V

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->c:Lio/reactivex/rxjava3/internal/disposables/a;

    .line 6
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/internal/disposables/a;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 7
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/disposables/a;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->d:Lio/reactivex/rxjava3/internal/schedulers/b$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->a:Lio/reactivex/rxjava3/internal/disposables/a;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/i;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/g;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->d:Lio/reactivex/rxjava3/internal/schedulers/b$c;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->b:Lio/reactivex/rxjava3/disposables/c;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/i;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/g;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->c:Lio/reactivex/rxjava3/internal/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/a;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$a;->e:Z

    return v0
.end method
