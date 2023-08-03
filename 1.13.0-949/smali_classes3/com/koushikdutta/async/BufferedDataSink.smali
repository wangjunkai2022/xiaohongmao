.class public Lcom/koushikdutta/async/BufferedDataSink;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# instance fields
.field a:Lcom/koushikdutta/async/DataSink;

.field b:Z

.field final c:Lcom/koushikdutta/async/ByteBufferList;

.field d:Lcom/koushikdutta/async/callback/WritableCallback;

.field e:I

.field f:Z


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->e:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->z(Lcom/koushikdutta/async/DataSink;)V

    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->x()Z

    move-result v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->f:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->j()V

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic f(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->C()V

    return-void
.end method

.method public static synthetic i(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->C()V

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->e:I

    return-void
.end method

.method public a0(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->e:I

    if-lt v1, v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->s(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 6
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/u;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/u;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->s(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->q0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 14
    :try_start_2
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public e0(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public f0()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->f0()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/t;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/t;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->f:Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->j()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->C()V

    :cond_0
    return-void
.end method

.method public n()Lcom/koushikdutta/async/DataSink;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->e:I

    return v0
.end method

.method public q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->e:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public q0()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected s(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    return-void
.end method

.method public v()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    return v0
.end method

.method public z(Lcom/koushikdutta/async/DataSink;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    .line 2
    new-instance v0, Lcom/koushikdutta/async/s;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/s;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    return-void
.end method
