.class abstract Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;
.implements Lcom/koushikdutta/async/http/AsyncHttpResponse;
.implements Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;


# instance fields
.field private h:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private i:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field private j:Lcom/koushikdutta/async/AsyncSocket;

.field protected k:Lcom/koushikdutta/async/http/Headers;

.field l:Z

.field m:I

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field private p:Z

.field q:Lcom/koushikdutta/async/DataSink;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->l:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->p:Z

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->i:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-void
.end method

.method private B0()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method static synthetic w0(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    return-object p0
.end method

.method private x0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->p:Z

    return-void
.end method


# virtual methods
.method protected A0(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public N()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->l0()Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Ljava/lang/String;

    return-object p0
.end method

.method public P(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->k:Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->m:I

    return v0
.end method

.method c0(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->close()V

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->B0()V

    return-void
.end method

.method public e()Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->i:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method

.method public f()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->k:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public h(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->m:I

    return-object p0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "charset"

    .line 2
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o0(Lcom/koushikdutta/async/DataSink;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->q:Lcom/koushikdutta/async/DataSink;

    return-object p0
.end method

.method public p0()Lcom/koushikdutta/async/DataSink;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->q:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public socket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->k:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->B0()V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->l:Z

    return-void
.end method

.method public y(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->n:Ljava/lang/String;

    return-object p0
.end method

.method protected y0()V
    .locals 0

    return-void
.end method

.method public z(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V

    return-object p0
.end method

.method protected z0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->i:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->i:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->q:Lcom/koushikdutta/async/DataSink;

    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->A0(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
