.class public Lcom/koushikdutta/async/AsyncNetworkSocket;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# instance fields
.field a:Ljava/net/InetSocketAddress;

.field private b:Lcom/koushikdutta/async/ChannelWrapper;

.field private c:Ljava/nio/channels/SelectionKey;

.field private d:Lcom/koushikdutta/async/AsyncServer;

.field private e:Lcom/koushikdutta/async/ByteBufferList;

.field f:Lcom/koushikdutta/async/util/Allocator;

.field g:Z

.field h:Lcom/koushikdutta/async/callback/WritableCallback;

.field i:Lcom/koushikdutta/async/callback/DataCallback;

.field j:Lcom/koushikdutta/async/callback/CompletedCallback;

.field k:Z

.field l:Ljava/lang/Exception;

.field private m:Lcom/koushikdutta/async/callback/CompletedCallback;

.field n:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Z

    return-void
.end method

.method private P(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public B()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public E()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->a()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public K()I
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->b()I

    move-result v0

    return v0
.end method

.method public N()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->a:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public O()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->z()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public X(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public a0(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket$1;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->o()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/ChannelWrapper;->s([Ljava/nio/ByteBuffer;)I

    .line 7
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->d([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 8
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->P(I)V

    .line 9
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->Y(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->y()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->v0(Ljava/lang/Exception;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->p0(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public b0(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->y()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->p0(Ljava/lang/Exception;)V

    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->h:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    :cond_1
    return-void
.end method

.method public e0(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->h:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public f0()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->j:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public h0()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->h()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->r()V

    return-void
.end method

.method public j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->j:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$3;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Z

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->x0()V

    .line 7
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->v0(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method o0()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->x0()V

    .line 2
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/Allocator;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-interface {v2, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v3, -0x1

    .line 5
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->y()V

    .line 6
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->v0(Ljava/lang/Exception;)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->p0(Ljava/lang/Exception;)V

    move-wide v2, v3

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->y()V

    const/4 v4, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    int-to-long v4, v1

    add-long/2addr v4, v2

    long-to-int v5, v4

    :goto_1
    if-lez v6, :cond_2

    .line 9
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v4, v2, v3}, Lcom/koushikdutta/async/util/Allocator;->g(J)V

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->v0(Ljava/lang/Exception;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->p0(Ljava/lang/Exception;)V

    :cond_3
    return v5
.end method

.method protected p0(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->g:Z

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->j:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->j:Lcom/koushikdutta/async/callback/CompletedCallback;

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$2;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Z

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method q(Ljava/nio/channels/DatagramChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/DatagramChannelWrapper;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/DatagramChannelWrapper;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    .line 2
    new-instance p1, Lcom/koushikdutta/async/util/Allocator;

    const/16 v0, 0x2000

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/util/Allocator;-><init>(I)V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/util/Allocator;

    return-void
.end method

.method public r0()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method s(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->a:Ljava/net/InetSocketAddress;

    .line 2
    new-instance p2, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {p2}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/util/Allocator;

    .line 3
    new-instance p2, Lcom/koushikdutta/async/SocketChannelWrapper;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/SocketChannelWrapper;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    return-void
.end method

.method t0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Z

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "NIO"

    const-string v1, "Unhandled exception"

    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public v()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->h:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method v0(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/lang/Exception;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->t0(Ljava/lang/Exception;)V

    return-void
.end method

.method w0(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/AsyncServer;

    .line 2
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method z()Lcom/koushikdutta/async/ChannelWrapper;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/ChannelWrapper;

    return-object v0
.end method
