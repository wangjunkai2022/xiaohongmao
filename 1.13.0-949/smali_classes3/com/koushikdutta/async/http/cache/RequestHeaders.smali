.class final Lcom/koushikdutta/async/http/cache/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d:I

    .line 3
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e:I

    .line 4
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->f:I

    .line 5
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->i:I

    .line 6
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 8
    new-instance p1, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;-><init>(Lcom/koushikdutta/async/http/cache/RequestHeaders;)V

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->n()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 10
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->h(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->m(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cache-Control"

    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-static {v2, p1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "Pragma"

    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v1, "no-cache"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 16
    iput-boolean v4, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c:Z

    goto/16 :goto_1

    :cond_1
    const-string v3, "If-None-Match"

    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v3, "If-Modified-Since"

    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v3, "Authorization"

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    iput-boolean v4, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->h:Z

    goto :goto_1

    :cond_4
    const-string v3, "Content-Length"

    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const-string v3, "Transfer-Encoding"

    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 26
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->j:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v3, "User-Agent"

    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->k:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v3, "Host"

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->l:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v3, "Connection"

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 32
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->m:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v3, "Accept-Encoding"

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 34
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->n:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v3, "Content-Type"

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 36
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->o:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v3, "Proxy-Authorization"

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 38
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->r:Ljava/lang/String;

    :catch_0
    :cond_c
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d:I

    return p1
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e:I

    return p1
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->f:I

    return p1
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->g:Z

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->g:Z

    return v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->n:Ljava/lang/String;

    const-string v1, "Accept-Encoding"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->n:Ljava/lang/String;

    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->j:Ljava/lang/String;

    const-string v1, "Transfer-Encoding"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->j:Ljava/lang/String;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->m:Ljava/lang/String;

    const-string v1, "Connection"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->m:Ljava/lang/String;

    return-void
.end method

.method public E(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->i:I

    const-string v1, "Content-Length"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    :cond_0
    if-eq p1, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->i:I

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->o:Ljava/lang/String;

    const-string v1, "Content-Type"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->o:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->l:Ljava/lang/String;

    const-string v1, "Host"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->l:Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/util/Date;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    const-string v1, "If-Modified-Since"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/koushikdutta/async/http/HttpDate;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    const-string v1, "If-None-Match"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->k:Ljava/lang/String;

    const-string v1, "User-Agent"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->k:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Cookie"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->f:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->r:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->j:Ljava/lang/String;

    return-object v0
.end method

.method public t()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->k:Ljava/lang/String;

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->h:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->m:Ljava/lang/String;

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->j:Ljava/lang/String;

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c:Z

    return v0
.end method
