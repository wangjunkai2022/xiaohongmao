.class public Lcom/koushikdutta/async/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"


# static fields
.field public static final m:Ljava/lang/String; = "*/*"

.field public static final n:I = 0x7530


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Landroid/net/Uri;

.field private d:Lcom/koushikdutta/async/http/Headers;

.field private e:Z

.field private f:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field g:I

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/lang/String;

.field k:I

.field l:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/1.1"

    .line 3
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:Lcom/koushikdutta/async/http/Headers;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Z

    const/16 v0, 0x7530

    .line 6
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    .line 8
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Landroid/net/Uri;

    if-nez p3, :cond_0

    .line 10
    new-instance p2, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p2}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    .line 11
    :cond_0
    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:Lcom/koushikdutta/async/http/Headers;

    :goto_0
    if-nez p3, :cond_1

    .line 12
    iget-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:Lcom/koushikdutta/async/http/Headers;

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->E(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public static E(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "Host"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 5
    :cond_1
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Accept-Encoding"

    const-string v0, "gzip, deflate"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Connection"

    const-string v0, "keep-alive"

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Accept"

    const-string v0, "*/*"

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected static g()Ljava/lang/String;
    .locals 2

    const-string v0, "http.agent"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:J

    sub-long v2, v0, v2

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "(%d ms) %s: %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public C(Lcom/koushikdutta/async/AsyncSSLException;)V
    .locals 0

    return-void
.end method

.method public D(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-void
.end method

.method public F(Z)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Z

    return-object p0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method

.method public H(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    return-void
.end method

.method public I(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t change method on a subclass of AsyncHttpRequest"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public K(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:I

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    return-void
.end method

.method public f()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Z

    return v0
.end method

.method public i()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:I

    return v0
.end method

.method public q()Lcom/koushikdutta/async/http/RequestLine;
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:I

    return v0
.end method

.method public t()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
