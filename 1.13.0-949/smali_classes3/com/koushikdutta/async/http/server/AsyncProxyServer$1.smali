.class Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;
.super Ljava/lang/Object;
.source "AsyncProxyServer.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncProxyServer;->K(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

.field final synthetic b:Lcom/koushikdutta/async/http/server/AsyncProxyServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncProxyServer;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;->b:Lcom/koushikdutta/async/http/server/AsyncProxyServer;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    const/16 v0, 0x1f4

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 2
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->send(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->I(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method
