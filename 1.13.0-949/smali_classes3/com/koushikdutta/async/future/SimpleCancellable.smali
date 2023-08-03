.class public Lcom/koushikdutta/async/future/SimpleCancellable;
.super Ljava/lang/Object;
.source "SimpleCancellable.java"

# interfaces
.implements Lcom/koushikdutta/async/future/DependentCancellable;


# static fields
.field public static final d:Lcom/koushikdutta/async/future/Cancellable;

.field public static final e:Lcom/koushikdutta/async/future/Cancellable;


# instance fields
.field a:Z

.field b:Z

.field private c:Lcom/koushikdutta/async/future/Cancellable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable$1;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/SimpleCancellable;->d:Lcom/koushikdutta/async/future/Cancellable;

    .line 2
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable$2;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable$2;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/SimpleCancellable;->e:Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/koushikdutta/async/future/Cancellable;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->c:Lcom/koushikdutta/async/future/Cancellable;

    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->b:Z

    .line 7
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->c:Lcom/koushikdutta/async/future/Cancellable;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->c:Lcom/koushikdutta/async/future/Cancellable;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->e()V

    .line 12
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()V

    return v1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public h()Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->b:Z

    return-object p0
.end method

.method public i()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->a:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->a:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->c:Lcom/koushikdutta/async/future/Cancellable;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->g()V

    .line 10
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()V

    return v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->c:Lcom/koushikdutta/async/future/Cancellable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->a:Z

    return v0
.end method
