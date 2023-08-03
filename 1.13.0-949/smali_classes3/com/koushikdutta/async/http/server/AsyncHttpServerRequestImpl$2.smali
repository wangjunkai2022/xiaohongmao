.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;
.super Ljava/lang/Object;
.source "AsyncHttpServerRequestImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->w0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->x0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->w0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTTP/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->F0()V

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 6
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "data/header received was not not http"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->y0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "\r"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->z0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->f(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v0, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-static {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->z0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/koushikdutta/async/http/HttpUtil;->c(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->z0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->D0(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 11
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-nez v1, :cond_3

    .line 12
    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->A0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->z0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/koushikdutta/async/http/HttpUtil;->b(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-nez v1, :cond_3

    .line 14
    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->z0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->G0(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Lcom/koushikdutta/async/http/server/UnknownRequestBody;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->z0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->A0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 18
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->E0()V

    return-void
.end method
