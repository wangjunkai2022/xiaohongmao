.class public final Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;
.super Lio/reactivex/internal/schedulers/a;
.source "ScheduledDirectPeriodicTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:J = 0x1924f211b909b42fL


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/a;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    invoke-super {p0}, Lio/reactivex/internal/schedulers/a;->getWrappedRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/schedulers/a;->b:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/a;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/schedulers/a;->b:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    iput-object v0, p0, Lio/reactivex/internal/schedulers/a;->b:Ljava/lang/Thread;

    .line 5
    sget-object v0, Lio/reactivex/internal/schedulers/a;->d:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 6
    invoke-static {v1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
