.class public Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;,
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field protected d:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field e:Z

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/net/InetSocketAddress;

.field i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field j:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 2

    const-string v0, "http"

    const/16 v1, 0x50

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    const v0, 0x493e0

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->c:I

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Ljava/util/Hashtable;

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:I

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->d:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 6
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->b:I

    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 4
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 5
    iget-wide v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->b:J

    iget v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->c:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->pop()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-interface {v2, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 8
    invoke-interface {v2}, Lcom/koushikdutta/async/DataEmitter;->close()V

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private B(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->t(Landroid/net/Uri;)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->p()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    .line 8
    :goto_0
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:I

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 10
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->d:Lcom/koushikdutta/async/future/Cancellable;

    check-cast v2, Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 11
    invoke-virtual {v2}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->e(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/future/SimpleCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->A(Ljava/lang/String;)V

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private C(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->t(Landroid/net/Uri;)I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->p()I

    move-result p2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->s(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 8
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/util/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic i(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;[Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->w(ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;[Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->x(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic k(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->z(ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->y(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method

.method static synthetic m(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->A(Ljava/lang/String;)V

    return-void
.end method

.method private s(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private u(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method private synthetic w(ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;[Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/http/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/http/i;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V

    invoke-static {p3, v0}, Lcom/koushikdutta/async/future/Futures;->d([Ljava/lang/Object;Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method private synthetic x(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p4, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method

.method private synthetic y(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 6

    if-nez p5, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 v4, 0x0

    .line 1
    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, p5}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void

    .line 2
    :cond_1
    iget-object p2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string p3, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->u(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 4
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p5, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->C(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method private synthetic z(ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s:%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object p2, p2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->d:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->D()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p2

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance p1, Lcom/koushikdutta/async/http/f;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/f;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p2, v1, p1}, Lcom/koushikdutta/async/AsyncServer;->v(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v0
.end method


# virtual methods
.method public D(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->e:Z

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->c:I

    return-void
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:I

    return-void
.end method

.method protected G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
    .locals 0

    return-object p5
.end method

.method public e(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v3

    .line 2
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->t(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v4, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v2, "socket-owner"

    invoke-virtual {v1, v2, p0}, Lcom/koushikdutta/async/util/UntypedHashtable;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->p()I

    move-result v2

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->s(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:I

    if-lt v2, v5, :cond_1

    .line 8
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 9
    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 11
    iput v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    .line 12
    :goto_0
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 14
    iget-object v6, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 15
    iget-wide v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->b:J

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->c:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    .line 16
    invoke-interface {v6, v0}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 17
    invoke-interface {v6}, Lcom/koushikdutta/async/DataEmitter;->close()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {v6}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "Reusing keep-alive socket"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 20
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {p1, v0, v6}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 21
    new-instance p1, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->i()Z

    .line 23
    monitor-exit p0

    return-object p1

    .line 24
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 26
    :cond_5
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->d:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->D()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->B(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/j;

    invoke-direct {v2, p0, v4, p1}, Lcom/koushikdutta/async/http/j;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V

    .line 29
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->t(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/g;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/koushikdutta/async/http/g;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V

    .line 30
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->p(Lcom/koushikdutta/async/future/FailCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->Z(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/h;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/koushikdutta/async/http/h;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V

    .line 32
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-object v0

    .line 33
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->o()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 35
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v6, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->g:I

    invoke-virtual {v2, v1, v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e(Ljava/lang/String;I)V

    .line 36
    :cond_7
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 37
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->o()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->p()I

    move-result v1

    move v7, v1

    goto :goto_2

    .line 39
    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move v7, v4

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_9

    .line 40
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using proxy: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 41
    :cond_9
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->d:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->D()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v8

    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v1, p0

    move-object v2, p1

    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p1

    .line 43
    invoke-virtual {v8, v0, v7, p1}, Lcom/koushikdutta/async/AsyncServer;->u(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->u(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 3
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->k:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->v(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "closing out socket (not keep alive)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 7
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->B(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void

    .line 9
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->C(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->B(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void

    .line 12
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "closing out socket (exception)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 13
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 14
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->B(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    throw v0
.end method

.method n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    if-eqz p3, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "//"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?proxy="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->g:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->f:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->h:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public p(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->f:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->g:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->h:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->e:Z

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:I

    return v0
.end method

.method public t(Landroid/net/Uri;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->b:I

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected v(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)Z
    .locals 2

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->protocol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil;->e(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/HttpUtil;->d(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
