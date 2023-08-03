.class Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;
.super Ljava/lang/Object;
.source "HttpTransportMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpTransportMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/http/Headers;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

.field final synthetic d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpTransportMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->a:Lcom/koushikdutta/async/http/Headers;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->b:Ljava/lang/String;

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->f(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->b:Ljava/lang/String;

    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_6

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    iget-object v3, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->P(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v0, 0x0

    .line 9
    aget-object v3, p1, v0

    .line 10
    iget-object v4, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v4, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v4, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->y(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 11
    iget-object v4, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v4, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->h(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 12
    iget-object v4, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v4, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    array-length v5, p1

    if-ne v5, v1, :cond_2

    aget-object p1, p1, v2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-interface {v4, p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->O(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 13
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->i:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    .line 14
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->u()Z

    move-result v2

    if-nez v2, :cond_4

    .line 16
    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->x0(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->c()I

    move-result v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/HttpTransportMiddleware;->i(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->x0(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v3}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-static {p1, v1, v2, v0}, Lcom/koushikdutta/async/http/HttpUtil;->c(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;

    move-result-object p1

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->z(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    goto :goto_2

    .line 21
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not HTTP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->i:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
