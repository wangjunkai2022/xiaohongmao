.class final Lio/reactivex/rxjava3/core/o0$b;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/schedulers/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/core/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;
    .annotation build Lp7/e;
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/core/o0$c;
    .annotation build Lp7/e;
    .end annotation
.end field

.field volatile c:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/core/o0$c;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/o0$c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "run",
            "worker"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/core/o0$b;->a:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/core/o0$b;->b:Lio/reactivex/rxjava3/core/o0$c;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/core/o0$b;->c:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/core/o0$b;->b:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method public getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/core/o0$b;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/core/o0$b;->c:Z

    return v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/core/o0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/core/o0$b;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/o0$b;->dispose()V

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 5
    throw v0

    :cond_0
    :goto_0
    return-void
.end method
