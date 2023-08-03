.class Lcom/koushikdutta/async/http/AsyncHttpClient$4;
.super Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->y(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field final synthetic t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field final synthetic u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

.field final synthetic v:I

.field final synthetic w:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;I)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput-object p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput p7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->v:I

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method public static synthetic C0(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->F0(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method public static synthetic D0(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->E0(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method private synthetic E0(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->l(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method private synthetic F0(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->l(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method


# virtual methods
.method protected A0(Ljava/lang/Exception;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->g(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "request completed"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->k:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_2

    .line 5
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->l:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {p1}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    .line 6
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->m:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->i(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->e0(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    iput-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->l:Lcom/koushikdutta/async/future/Cancellable;

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 8
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->g(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public G(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;->j:Lcom/koushikdutta/async/DataEmitter;

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->f(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;->j:Lcom/koushikdutta/async/DataEmitter;

    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 6
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->c(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-wide v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:J

    iput-wide v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:J

    .line 8
    iget v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    iput v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    .line 9
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    iput-object v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    iput-object v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    .line 11
    iget p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    iput p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    .line 12
    invoke-static {v4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->j(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 13
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Response intercepted by middleware"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->z(Ljava/lang/String;)V

    const-string p1, "Request initiated by middleware intercept by middleware"

    .line 14
    invoke-virtual {v4, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->z(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->v:I

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    new-instance v0, Lcom/koushikdutta/async/http/e;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/e;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 16
    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->k:Lcom/koushikdutta/async/http/Headers;

    .line 18
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->c()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x133

    if-ne v0, v1, :cond_6

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Location"

    .line 20
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 23
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->m()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "GET"

    .line 25
    :goto_1
    new-instance v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {v4, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-wide v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:J

    iput-wide v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:J

    .line 27
    iget v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    iput v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    .line 28
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    iput-object v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    iput-object v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    .line 30
    iget p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    iput p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    .line 31
    invoke-static {v4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->j(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 32
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "User-Agent"

    invoke-static {p1, v4, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->k(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Range"

    invoke-static {p1, v4, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->k(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Redirecting"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->z(Ljava/lang/String;)V

    const-string p1, "Redirected"

    .line 35
    invoke-virtual {v4, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->z(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->v:I

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    new-instance v0, Lcom/koushikdutta/async/http/d;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/d;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 37
    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->g(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 39
    :cond_6
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final (post cache response) headers:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->g(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method public W()Lcom/koushikdutta/async/AsyncSocket;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Detaching socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->c0(Lcom/koushikdutta/async/AsyncSocket;)V

    return-object v0
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "exception during response"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/koushikdutta/async/AsyncSSLException;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/AsyncSSLException;

    .line 6
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->C(Lcom/koushikdutta/async/AsyncSSLException;)V

    .line 7
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSSLException;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->v0(Ljava/lang/Exception;)V

    .line 10
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->t:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->g(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->k:Ljava/lang/Exception;

    .line 14
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 15
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->h(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected y0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->y0()V

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->r:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->l:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->s:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->w:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 7
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->u:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->d(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V

    goto :goto_0

    :cond_2
    return-void
.end method
