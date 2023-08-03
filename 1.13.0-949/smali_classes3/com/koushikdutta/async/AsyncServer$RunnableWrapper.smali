.class Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableWrapper"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/Runnable;

.field c:Lcom/koushikdutta/async/ThreadQueue;

.field d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->a:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->a:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->c:Lcom/koushikdutta/async/ThreadQueue;

    invoke-virtual {v1, p0}, Lcom/koushikdutta/async/ThreadQueue;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->d:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->c:Lcom/koushikdutta/async/ThreadQueue;

    .line 10
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->d:Landroid/os/Handler;

    .line 11
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->b:Ljava/lang/Runnable;

    return-void

    :catchall_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->c:Lcom/koushikdutta/async/ThreadQueue;

    invoke-virtual {v2, p0}, Lcom/koushikdutta/async/ThreadQueue;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->d:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->c:Lcom/koushikdutta/async/ThreadQueue;

    .line 15
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->d:Landroid/os/Handler;

    .line 16
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->b:Ljava/lang/Runnable;

    throw v1

    :catchall_1
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
