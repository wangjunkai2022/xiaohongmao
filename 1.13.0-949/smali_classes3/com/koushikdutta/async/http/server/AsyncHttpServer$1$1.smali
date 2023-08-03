.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->d0(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final A:Ljava/lang/Runnable;

.field final B:Lcom/koushikdutta/async/callback/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic C:Lcom/koushikdutta/async/AsyncSocket;

.field final synthetic D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

.field r:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;

.field s:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Z

.field w:Z

.field x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field y:Z

.field z:Z


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->C:Lcom/koushikdutta/async/AsyncSocket;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;)V

    .line 2
    iput-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->r:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;

    .line 3
    new-instance p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->A:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->B:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method static synthetic H0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic I0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->J0()V

    return-void
.end method

.method private J0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->G(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->r:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->F(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->C:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->d0(Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->C:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected D0(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->C0()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->t:Ljava/lang/String;

    const-string v2, "\\?"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->u:Ljava/lang/String;

    .line 5
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->n:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v2, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->c:Ljava/util/regex/Matcher;

    iput-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->p:Ljava/util/regex/Matcher;

    .line 8
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iput-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->s:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 9
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->e:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

    if-nez v0, :cond_1

    return-object v1

    .line 10
    :cond_1
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;->a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    return-object p1
.end method

.method protected E0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->y:Z

    if-nez v1, :cond_0

    const-string v1, "Expect"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->pause()V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Util;->n(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->C:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, p0, v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    .line 6
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v1, p0, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->L(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->z:Z

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->s:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 9
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->i0()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->t0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->w:Z

    if-eqz v0, :cond_4

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->K0()V

    :cond_4
    return-void
.end method

.method protected G0(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->N(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    return-object p1
.end method

.method K0()V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->s:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->K(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->G(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->w:Z

    .line 3
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->g(Ljava/lang/Exception;)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->close()V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->J0()V

    .line 7
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->i0()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->t0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->z:Z

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->K0()V

    :cond_2
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->t:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/koushikdutta/async/http/Multimap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->t:Ljava/lang/String;

    const-string v1, "\\?"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method
