.class Lcom/koushikdutta/async/AsyncServer$3;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->s(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

.field final synthetic b:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic c:Lcom/koushikdutta/async/callback/SocketCreateCallback;

.field final synthetic d:Ljava/net/InetSocketAddress;

.field final synthetic e:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$3;->e:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$3;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$3;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$3;->c:Lcom/koushikdutta/async/callback/SocketCreateCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$3;->d:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$3;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->l:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iput-object v3, v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->k:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->e:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->l(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 6
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->c:Lcom/koushikdutta/async/callback/SocketCreateCallback;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/koushikdutta/async/callback/SocketCreateCallback;->a(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->d:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    .line 11
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 12
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$3;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    :goto_1
    return-void
.end method
