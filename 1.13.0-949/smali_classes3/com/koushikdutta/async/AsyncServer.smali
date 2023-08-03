.class public Lcom/koushikdutta/async/AsyncServer;
.super Ljava/lang/Object;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;,
        Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;,
        Lcom/koushikdutta/async/AsyncServer$ConnectFuture;,
        Lcom/koushikdutta/async/AsyncServer$ObjectHolder;,
        Lcom/koushikdutta/async/AsyncServer$Scheduler;,
        Lcom/koushikdutta/async/AsyncServer$Scheduled;,
        Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "NIO"

.field static h:Lcom/koushikdutta/async/AsyncServer; = null

.field private static i:Ljava/util/concurrent/ExecutorService; = null

.field private static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/concurrent/ExecutorService; = null

.field private static final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/koushikdutta/async/AsyncServer;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:J = 0x7fffffffffffffffL


# instance fields
.field private a:Lcom/koushikdutta/async/SelectorWrapper;

.field b:Ljava/lang/String;

.field c:Z

.field d:I

.field e:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->h:Lcom/koushikdutta/async/AsyncServer;

    const-string v0, "AsyncServer-worker-"

    .line 2
    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->W(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->i:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$5;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer$5;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->j:Ljava/util/Comparator;

    const-string v0, "AsyncServer-resolver-"

    .line 4
    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->W(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->k:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->l:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncServer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/koushikdutta/async/AsyncServer;->d:I

    .line 4
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/koushikdutta/async/AsyncServer$Scheduler;->a:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    const-string p1, "AsyncServer"

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->b:Ljava/lang/String;

    return-void
.end method

.method public static D()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public static E()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->h:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method private F(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->z()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {v1}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ChannelWrapper;->k(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->w0(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method private synthetic K(Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->F(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    .line 2
    invoke-virtual {p2, p3}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 3
    invoke-static {p1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method private static synthetic L(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic M(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method private synthetic N(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v1, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v1}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->q(Ljava/nio/channels/DatagramChannel;)V

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lcom/koushikdutta/async/callback/ValueFunction;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p1, v2

    :goto_0
    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->F(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    .line 9
    invoke-virtual {p4, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/io/Closeable;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    .line 11
    invoke-static {p2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 12
    invoke-virtual {p4, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    :cond_2
    :goto_2
    return-void
.end method

.method private static synthetic O([Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private synthetic P(Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->q(Ljava/nio/channels/DatagramChannel;)V

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/net/InetSocketAddress;

    invoke-direct {p2, p3}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p2, v1

    :goto_0
    if-eqz p4, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->F(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "NIO"

    const-string p3, "Datagram error"

    .line 8
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    .line 9
    invoke-static {p1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    :catch_1
    :goto_1
    return-void
.end method

.method private static synthetic Q(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic R(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private static synthetic S(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic T(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static V(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)J"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    const/4 v2, 0x0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    .line 5
    iget-wide v6, v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;->c:J

    cmp-long v8, v6, v3

    if-gtz v8, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_0
    sub-long/2addr v6, v3

    .line 6
    invoke-virtual {p1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-wide v0, v6

    .line 7
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/koushikdutta/async/AsyncServer;->d:I

    return-wide v0

    .line 9
    :cond_2
    invoke-virtual {v2}, Lcom/koushikdutta/async/AsyncServer$Scheduled;->run()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static W(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 1
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;

    invoke-direct {v7, p0}, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p0
.end method

.method public static synthetic a(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->M(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->L(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->T(Lcom/koushikdutta/async/SelectorWrapper;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method public static d0(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/ThreadQueue;->b(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->c:Lcom/koushikdutta/async/ThreadQueue;

    .line 4
    iput-object p0, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->d:Landroid/os/Handler;

    .line 5
    iput-object p1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->b:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ThreadQueue;->a(Ljava/lang/Runnable;)Z

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-object p0, v1, Lcom/koushikdutta/async/ThreadQueue;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public static synthetic e(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->S(Lcom/koushikdutta/async/SelectorWrapper;)V

    return-void
.end method

.method public static synthetic f(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncServer;->K(Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static synthetic g(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->Q(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method private g0()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    new-instance v0, Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$8;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/koushikdutta/async/AsyncServer$8;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->f:Ljava/lang/Thread;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 7
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to create selector?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 10
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->j0(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_3
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "NIO"

    const-string v3, "Selector closed"

    .line 12
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :try_start_4
    invoke-virtual {v0}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public static synthetic h(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/AsyncServer;->P(Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V

    return-void
.end method

.method private static h0(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->j0(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/nio/channels/ClosedSelectorException;

    if-nez v2, :cond_0

    const-string v2, "NIO"

    const-string v3, "Selector exception, shutting down"

    .line 3
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-array v1, v0, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 5
    :goto_1
    monitor-enter p0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->k0(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 9
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    if-ne p2, p1, :cond_3

    .line 10
    new-instance p1, Ljava/util/PriorityQueue;

    sget-object p2, Lcom/koushikdutta/async/AsyncServer$Scheduler;->a:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    .line 12
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->f:Ljava/lang/Thread;

    .line 13
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic i(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/AsyncServer;->N(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V

    return-void
.end method

.method public static synthetic j([Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->O([Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static j0(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lcom/koushikdutta/async/AsyncServer;->V(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    move-result-wide v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->i()I

    move-result p2

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->d()V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;->h(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->k()Ljava/util/Set;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 11
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 13
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v2, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 15
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 16
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/callback/ListenCallback;

    .line 17
    new-instance v6, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 18
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v2, v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;->s(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 19
    invoke-virtual {v6, p0, v3}, Lcom/koushikdutta/async/AsyncNetworkSocket;->w0(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 20
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {v1, v6}, Lcom/koushikdutta/async/callback/ListenCallback;->d0(Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_0
    move-object v1, v3

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-object v1, v3

    :goto_3
    :try_start_6
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v3, v2, v4

    .line 22
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 26
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->o0()I

    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->X(I)V

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 30
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->d0()V

    goto/16 :goto_2

    .line 31
    :cond_8
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 32
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    .line 33
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    .line 34
    invoke-virtual {v1, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_3

    .line 35
    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 36
    new-instance v7, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 37
    invoke-virtual {v7, p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->w0(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 38
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v6, v8}, Lcom/koushikdutta/async/AsyncNetworkSocket;->s(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 39
    invoke-virtual {v1, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_3

    .line 40
    :try_start_8
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    iget-object v1, v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->l:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v1, v3, v7}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto/16 :goto_2

    :catch_2
    move-exception v7

    .line 42
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v6, v1, v4

    .line 43
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 44
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->l:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v1, v7, v3}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "NIO"

    const-string v2, "wtf"

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown key state."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    nop

    goto/16 :goto_2

    .line 48
    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 49
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception p0

    .line 50
    new-instance p1, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method static synthetic k(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->k0(Lcom/koushikdutta/async/SelectorWrapper;)V

    return-void
.end method

.method private static k0(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->l0(Lcom/koushikdutta/async/SelectorWrapper;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic l(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    return-object p0
.end method

.method private static l0(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method static synthetic m()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->j:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic n(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->F(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    return-void
.end method

.method static synthetic o()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private static o0(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 2

    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/koushikdutta/async/n;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/n;-><init>(Lcom/koushikdutta/async/SelectorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic p(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->h0(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method private w(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/callback/ValueFunction<",
            "Ljava/net/InetAddress;",
            ">;IZ",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/AsyncDatagramSocket;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v6}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    invoke-virtual {v6, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 3
    new-instance p4, Lcom/koushikdutta/async/m;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/m;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p0, p4}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v6
.end method


# virtual methods
.method public A()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method public B(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$6;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public C(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->B(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    sget-object v0, Lcom/koushikdutta/async/j;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public G()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->f:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

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

.method public I()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->n0(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public U(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 8

    .line 1
    new-instance v6, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 2
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$2;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncServer$ObjectHolder;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, v6, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;->a:Ljava/lang/Object;

    check-cast p1, Lcom/koushikdutta/async/AsyncServerSocket;

    return-object p1
.end method

.method protected X(I)V
    .locals 0

    return-void
.end method

.method protected Y(I)V
    .locals 0

    return-void
.end method

.method public Z()Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/koushikdutta/async/AsyncServer;->a0(Ljava/net/InetAddress;IZ)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public a0(Ljava/net/InetAddress;IZ)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 8

    .line 1
    new-instance v6, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 2
    new-instance v7, Lcom/koushikdutta/async/k;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/k;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 4
    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    return-object v6

    .line 5
    :cond_0
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-object v6
.end method

.method public b0(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/p;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/p;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->e0(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public e0(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/koushikdutta/async/future/SimpleCancellable;->e:Lcom/koushikdutta/async/future/Cancellable;

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 5
    iget p2, p0, Lcom/koushikdutta/async/AsyncServer;->d:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/koushikdutta/async/AsyncServer;->d:I

    int-to-long v0, p2

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    iget-wide p2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 8
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    new-instance p3, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;J)V

    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    if-nez p1, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncServer;->g0()V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->G()Z

    move-result p1

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->o0(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 13
    :cond_5
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->e0(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public i0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->f:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->V(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Z

    if-eqz v0, :cond_1

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 8
    new-instance v1, Lcom/koushikdutta/async/q;

    invoke-direct {v1, p1, v0}, Lcom/koushikdutta/async/q;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NIO"

    const-string v1, "run"

    .line 11
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public m0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->n0(Z)V

    return-void
.end method

.method public n0(Z)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->G()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    if-nez v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    new-instance v5, Lcom/koushikdutta/async/AsyncServer$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/koushikdutta/async/AsyncServer$1;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/concurrent/Semaphore;)V

    const-wide/16 v6, 0x0

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;J)V

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v3, Lcom/koushikdutta/async/AsyncServer;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/koushikdutta/async/o;

    invoke-direct {v4, v1}, Lcom/koushikdutta/async/o;-><init>(Lcom/koushikdutta/async/SelectorWrapper;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {v1}, Lcom/koushikdutta/async/AsyncServer;->l0(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 9
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v3, 0x1

    sget-object v4, Lcom/koushikdutta/async/AsyncServer$Scheduler;->a:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v1, v3, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/util/PriorityQueue;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/SelectorWrapper;

    .line 11
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->f:Ljava/lang/Thread;

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 13
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public q(Ljava/lang/String;I)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    .line 2
    new-instance v6, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 3
    invoke-virtual {v6, v5}, Lcom/koushikdutta/async/AsyncNetworkSocket;->q(Ljava/nio/channels/DatagramChannel;)V

    .line 4
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$7;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public r(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 2
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->q(Ljava/nio/channels/DatagramChannel;)V

    .line 4
    new-instance v2, Lcom/koushikdutta/async/l;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/koushikdutta/async/l;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    .line 5
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->A()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    return-object v0

    .line 7
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-object v0
.end method

.method public s(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .locals 8

    .line 1
    new-instance v6, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 2
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$3;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v6
.end method

.method public t(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/AsyncServer;->s(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 0

    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/koushikdutta/async/AsyncServer;->v(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->t(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->C(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 6
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$4;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/koushikdutta/async/AsyncServer$4;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/net/InetSocketAddress;)V

    .line 7
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-object v0
.end method

.method public x(Ljava/lang/String;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/AsyncDatagramSocket;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/h;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/koushikdutta/async/AsyncServer;->w(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/net/InetAddress;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "IZ",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/AsyncDatagramSocket;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/i;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/i;-><init>(Ljava/net/InetAddress;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/koushikdutta/async/AsyncServer;->w(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public z()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/AsyncServer$9;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncServer$9;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method
