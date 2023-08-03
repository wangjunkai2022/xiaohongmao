.class public Lcom/koushikdutta/async/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    }
.end annotation


# static fields
.field private static f:Lcom/koushikdutta/async/http/AsyncHttpClient; = null

.field private static final g:Ljava/lang/String; = "AsyncHttp"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

.field c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

.field e:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    .line 4
    new-instance p1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 5
    new-instance p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 6
    new-instance p1, Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/HttpTransportMiddleware;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    new-instance v0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->H(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V

    return-void
.end method

.method public static A()Lcom/koushikdutta/async/http/AsyncHttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->E()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    sput-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 3
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method

.method private static F(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->s()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private H(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback<",
            "TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/koushikdutta/async/http/AsyncHttpClient$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$7;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1, v7}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method private I(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/http/callback/RequestCallback;->a(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    :cond_0
    return-void
.end method

.method private J(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p6}, Lcom/koushikdutta/async/http/callback/RequestCallback;->c(Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    :cond_0
    return-void
.end method

.method private K(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback<",
            "TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p2, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    move-result p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p5}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1, p4, p3, p5}, Lcom/koushikdutta/async/callback/ResultCallback;->b(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic L(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 6

    if-eqz p4, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->H(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->I(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 3
    invoke-interface {p3, p5}, Lcom/koushikdutta/async/parser/AsyncParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p3

    .line 4
    new-instance p4, Lcom/koushikdutta/async/http/a;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/koushikdutta/async/http/a;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    invoke-interface {p3, p4}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 5
    invoke-virtual {p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-void
.end method

.method private synthetic M(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->H(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic N(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, p3, p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/koushikdutta/async/http/WebSocketImpl;->v0(Lcom/koushikdutta/async/http/Headers;Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object p2

    if-nez p2, :cond_2

    .line 4
    new-instance p3, Lcom/koushikdutta/async/http/WebSocketHandshakeException;

    const-string v0, "Unable to complete websocket handshake"

    invoke-direct {p3, v0}, Lcom/koushikdutta/async/http/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {p4}, Lcom/koushikdutta/async/DataEmitter;->close()V

    .line 6
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1, p3, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    :cond_4
    return-void
.end method

.method private O(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->l:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    if-eqz p2, :cond_0

    const-string v0, "Connection error"

    .line 2
    invoke-virtual {p4, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "Connection successful"

    .line 4
    invoke-virtual {p4, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p5, p2, p3}, Lcom/koushikdutta/async/http/callback/HttpConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/DataEmitterBase;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 8
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->close()V

    :cond_2
    return-void
.end method

.method private static P(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 5
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 8
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e(Ljava/lang/String;I)V

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->N(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method

.method public static synthetic b(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->L(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method

.method public static synthetic c(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->M(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->t(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->I(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method

.method static synthetic f(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->J(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    return-void
.end method

.method static synthetic g(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->O(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic h(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->y(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V

    return-void
.end method

.method static synthetic i(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .locals 2

    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->F(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic j(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->P(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method static synthetic k(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->o(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->s(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic m(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->K(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic n(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->H(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private static o(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_0
    return-void
.end method

.method private s(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->t(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    new-instance v7, Lcom/koushikdutta/async/http/AsyncHttpClient$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {v0, v7}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    :goto_0
    return-void
.end method

.method private t(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    const/16 v0, 0xf

    move v6, p2

    if-le v6, v0, :cond_0

    .line 1
    new-instance v2, Lcom/koushikdutta/async/http/RedirectLimitExceededException;

    const-string v0, "too many redirects"

    invoke-direct {v2, v0}, Lcom/koushikdutta/async/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->O(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    .line 3
    new-instance v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-direct {v10}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:J

    .line 5
    iput-object v8, v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Executing request."

    .line 6
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 7
    iget-object v0, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 8
    invoke-interface {v1, v10}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->b(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->s()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    new-instance v11, Lcom/koushikdutta/async/http/AsyncHttpClient$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    iput-object v11, v9, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->m:Ljava/lang/Runnable;

    .line 11
    iget-object v0, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->F(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v1

    invoke-virtual {v0, v11, v1, v2}, Lcom/koushikdutta/async/AsyncServer;->e0(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    iput-object v0, v9, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->l:Lcom/koushikdutta/async/future/Cancellable;

    .line 12
    :cond_2
    new-instance v11, Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;I)V

    iput-object v11, v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 13
    invoke-static {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->P(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 14
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v2

    invoke-interface {v2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 17
    :cond_3
    iget-object v0, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 18
    invoke-interface {v1, v10}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->e(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 19
    iput-object v1, v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->d:Lcom/koushikdutta/async/future/Cancellable;

    .line 20
    invoke-virtual {p3, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-void

    .line 21
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " middlewares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->O(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method private y(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/koushikdutta/async/http/AsyncHttpClient$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;I)V

    .line 2
    new-instance p1, Lcom/koushikdutta/async/http/AsyncHttpClient$5;

    invoke-direct {p1, p0, v8}, Lcom/koushikdutta/async/http/AsyncHttpClient$5;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object p1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 3
    new-instance p1, Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    invoke-direct {p1, p0, v8}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object p1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->i:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 4
    iput-object v8, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 5
    iget-object p1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v8, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->c0(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 6
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 7
    invoke-interface {p2, p5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public B()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    return-object v0
.end method

.method public C()Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    return-object v0
.end method

.method public D()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public E()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    return-object v0
.end method

.method public G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public Q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->R(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public R(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "[",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;->t0(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p2}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/b;

    invoke-direct {v0, p2, p3, p1}, Lcom/koushikdutta/async/http/b;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->p(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object p2
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wss://"

    const-string v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->Q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public T(Ljava/lang/String;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wss://"

    const-string v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->R(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->s(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-object v0
.end method

.method public q(Ljava/lang/String;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->p(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/callback/RequestCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    .line 2
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 3
    new-instance v2, Lcom/koushikdutta/async/http/c;

    invoke-direct {v2, p0, p3, v1, p2}, Lcom/koushikdutta/async/http/c;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->s(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object v1
.end method

.method public u(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->r(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, v3}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p2

    const/16 v0, 0x2000

    invoke-direct {v2, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance p2, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    .line 5
    new-instance v6, Lcom/koushikdutta/async/http/AsyncHttpClient$8;

    invoke-direct {v6, p0, p2, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient$8;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/io/OutputStream;Ljava/io/File;)V

    .line 6
    invoke-virtual {v6, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    const/4 v7, 0x0

    .line 7
    new-instance v8, Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$9;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-direct {p0, p1, v7, p2, v8}, Lcom/koushikdutta/async/http/AsyncHttpClient;->s(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-object v6

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p2}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 9
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    return-object p2
.end method

.method public w(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/parser/JSONArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONArrayParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->r(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/parser/JSONObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONObjectParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->r(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public z(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->r(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method
