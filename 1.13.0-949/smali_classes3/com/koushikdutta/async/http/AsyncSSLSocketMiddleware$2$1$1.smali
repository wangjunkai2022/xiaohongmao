.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->g(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->A(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->a:Ljava/lang/String;

    const-string v0, "HTTP/1.\\d 2\\d\\d .*"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 6
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non 2xx status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 10
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 11
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v4, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->d:Landroid/net/Uri;

    iget v5, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->e:I

    iget-object v6, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-virtual/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->P(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILcom/koushikdutta/async/callback/ConnectCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
