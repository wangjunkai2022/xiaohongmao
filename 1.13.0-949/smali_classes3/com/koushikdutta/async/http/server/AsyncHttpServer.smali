.class public Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.source "AsyncHttpServer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;
    }
.end annotation


# static fields
.field private static h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/AsyncServerSocket;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/koushikdutta/async/callback/ListenCallback;

.field g:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0xc8

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Accepted"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Switching Protocols"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad Request"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Internal Server Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->f:Lcom/koushikdutta/async/callback/ListenCallback;

    return-void
.end method

.method static synthetic B(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->O(Ljava/lang/Exception;)V

    return-void
.end method

.method public static E(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "Unknown"

    :cond_0
    return-object p0
.end method

.method private O(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public C()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public D()Lcom/koushikdutta/async/callback/ListenCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->f:Lcom/koushikdutta/async/callback/ListenCallback;

    return-object v0
.end method

.method protected F(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 0

    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->k0()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/HttpUtil;->e(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z

    move-result p1

    return p1
.end method

.method protected G(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 1

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->c()I

    move-result p1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H(I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 1

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->E()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->I(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public I(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->f:Lcom/koushikdutta/async/callback/ListenCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/koushikdutta/async/AsyncServer;->U(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public J(ILjavax/net/ssl/SSLContext;)V
    .locals 2

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->E()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;ILjavax/net/ssl/SSLContext;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/koushikdutta/async/AsyncServer;->U(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    return-void
.end method

.method protected K(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AsyncHttpServer"

    const-string v0, "request callback raised uncaught exception. Catching versus crashing process"

    .line 2
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x1f4

    .line 3
    invoke-interface {p3, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 4
    invoke-interface {p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->j()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected L(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected M(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0

    return-void
.end method

.method protected N(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public P(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncServerSocket;

    .line 3
    invoke-interface {v1}, Lcom/koushikdutta/async/AsyncServerSocket;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method
