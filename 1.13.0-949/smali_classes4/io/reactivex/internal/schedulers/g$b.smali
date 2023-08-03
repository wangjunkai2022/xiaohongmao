.class final Lio/reactivex/internal/schedulers/g$b;
.super Lio/reactivex/h0$c;
.source "IoScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/reactivex/disposables/b;

.field private final b:Lio/reactivex/internal/schedulers/g$a;

.field private final c:Lio/reactivex/internal/schedulers/g$c;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/g$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/h0$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/schedulers/g$b;->b:Lio/reactivex/internal/schedulers/g$a;

    .line 4
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->a:Lio/reactivex/disposables/b;

    .line 5
    invoke-virtual {p1}, Lio/reactivex/internal/schedulers/g$a;->b()Lio/reactivex/internal/schedulers/g$c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/g$b;->c:Lio/reactivex/internal/schedulers/g$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation build Lm7/e;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->a:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->c:Lio/reactivex/internal/schedulers/g$c;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/g$b;->a:Lio/reactivex/disposables/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/i;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->a:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 3
    sget-boolean v0, Lio/reactivex/internal/schedulers/g;->p:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/schedulers/g$b;->c:Lio/reactivex/internal/schedulers/g$c;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/schedulers/i;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->b:Lio/reactivex/internal/schedulers/g$a;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/g$b;->c:Lio/reactivex/internal/schedulers/g$c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/g$a;->d(Lio/reactivex/internal/schedulers/g$c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/schedulers/g$b;->b:Lio/reactivex/internal/schedulers/g$a;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/g$b;->c:Lio/reactivex/internal/schedulers/g$c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/g$a;->d(Lio/reactivex/internal/schedulers/g$c;)V

    return-void
.end method
