.class public Lorg/jsoup/helper/c$d;
.super Lorg/jsoup/helper/c$b;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/c$b<",
        "Lorg/jsoup/Connection$c;",
        ">;",
        "Lorg/jsoup/Connection$c;"
    }
.end annotation


# instance fields
.field private f:Ljava/net/Proxy;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private final j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Lorg/jsoup/parser/f;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private r:Ljava/net/CookieManager;

.field private volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sun.net.http.allowRestrictedHeaders"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/helper/c$b;-><init>(Lorg/jsoup/helper/c$a;)V

    .line 2
    iput-object v0, p0, Lorg/jsoup/helper/c$d;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->l:Z

    .line 4
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->m:Z

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->o:Z

    .line 6
    sget-object v1, Lorg/jsoup/helper/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->p:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->s:Z

    const/16 v0, 0x7530

    .line 8
    iput v0, p0, Lorg/jsoup/helper/c$d;->g:I

    const/high16 v0, 0x200000

    .line 9
    iput v0, p0, Lorg/jsoup/helper/c$d;->h:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->i:Z

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/c$d;->j:Ljava/util/Collection;

    .line 12
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 13
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/helper/c$d;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36"

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/helper/c$d;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 15
    invoke-static {}, Lorg/jsoup/parser/f;->c()Lorg/jsoup/parser/f;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/c$d;->n:Lorg/jsoup/parser/f;

    .line 16
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/c$d;->r:Ljava/net/CookieManager;

    return-void
.end method

.method constructor <init>(Lorg/jsoup/helper/c$d;)V
    .locals 3

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lorg/jsoup/helper/c$b;-><init>(Lorg/jsoup/helper/c$b;Lorg/jsoup/helper/c$a;)V

    .line 18
    iput-object v0, p0, Lorg/jsoup/helper/c$d;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->l:Z

    .line 20
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->m:Z

    .line 21
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->o:Z

    .line 22
    sget-object v1, Lorg/jsoup/helper/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->p:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->s:Z

    .line 24
    iget-object v1, p1, Lorg/jsoup/helper/c$d;->f:Ljava/net/Proxy;

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->f:Ljava/net/Proxy;

    .line 25
    iget-object v1, p1, Lorg/jsoup/helper/c$d;->p:Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->p:Ljava/lang/String;

    .line 26
    iget v1, p1, Lorg/jsoup/helper/c$d;->g:I

    iput v1, p0, Lorg/jsoup/helper/c$d;->g:I

    .line 27
    iget v1, p1, Lorg/jsoup/helper/c$d;->h:I

    iput v1, p0, Lorg/jsoup/helper/c$d;->h:I

    .line 28
    iget-boolean v1, p1, Lorg/jsoup/helper/c$d;->i:Z

    iput-boolean v1, p0, Lorg/jsoup/helper/c$d;->i:Z

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->j:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/jsoup/helper/c$d;->data()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 30
    iget-object v1, p1, Lorg/jsoup/helper/c$d;->k:Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->k:Ljava/lang/String;

    .line 31
    iget-boolean v1, p1, Lorg/jsoup/helper/c$d;->l:Z

    iput-boolean v1, p0, Lorg/jsoup/helper/c$d;->l:Z

    .line 32
    iget-boolean v1, p1, Lorg/jsoup/helper/c$d;->m:Z

    iput-boolean v1, p0, Lorg/jsoup/helper/c$d;->m:Z

    .line 33
    iget-object v1, p1, Lorg/jsoup/helper/c$d;->n:Lorg/jsoup/parser/f;

    invoke-virtual {v1}, Lorg/jsoup/parser/f;->f()Lorg/jsoup/parser/f;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->n:Lorg/jsoup/parser/f;

    .line 34
    iget-boolean v1, p1, Lorg/jsoup/helper/c$d;->o:Z

    iput-boolean v1, p0, Lorg/jsoup/helper/c$d;->o:Z

    .line 35
    iget-object v1, p1, Lorg/jsoup/helper/c$d;->q:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lorg/jsoup/helper/c$d;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 36
    iget-object p1, p1, Lorg/jsoup/helper/c$d;->r:Ljava/net/CookieManager;

    iput-object p1, p0, Lorg/jsoup/helper/c$d;->r:Ljava/net/CookieManager;

    .line 37
    iput-boolean v0, p0, Lorg/jsoup/helper/c$d;->s:Z

    return-void
.end method

.method static synthetic Z(Lorg/jsoup/helper/c$d;)Ljava/net/CookieManager;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/helper/c$d;->r:Ljava/net/CookieManager;

    return-object p0
.end method

.method static synthetic a0(Lorg/jsoup/helper/c$d;Ljava/net/CookieManager;)Ljava/net/CookieManager;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/helper/c$d;->r:Ljava/net/CookieManager;

    return-object p1
.end method

.method static synthetic b0(Lorg/jsoup/helper/c$d;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/helper/c$d;->s:Z

    return p0
.end method

.method static synthetic c0(Lorg/jsoup/helper/c$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/helper/c$d;->s:Z

    return p1
.end method

.method static synthetic d0(Lorg/jsoup/helper/c$d;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/helper/c$d;->o:Z

    return p0
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/c$b;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/helper/c$d;->i:Z

    return v0
.end method

.method public bridge synthetic E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/c$b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->F(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic G(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->G(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic H(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->I(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/helper/c$d;->m:Z

    return v0
.end method

.method public bridge synthetic K(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->K(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic M(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->M(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/c$b;->N()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public R()I
    .locals 1

    iget v0, p0, Lorg/jsoup/helper/c$d;->h:I

    return v0
.end method

.method public U()Lorg/jsoup/parser/f;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$d;->n:Lorg/jsoup/parser/f;

    return-object v0
.end method

.method public a(Z)Lorg/jsoup/Connection$c;
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/helper/c$d;->i:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/jsoup/Connection$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jsoup/helper/c$d;->k:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/c$b;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(I)Lorg/jsoup/Connection$c;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->j0(I)Lorg/jsoup/helper/c$d;

    move-result-object p1

    return-object p1
.end method

.method public data()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/helper/c$d;->j:Ljava/util/Collection;

    return-object v0
.end method

.method e0()Ljava/net/CookieManager;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$d;->r:Ljava/net/CookieManager;

    return-object v0
.end method

.method public bridge synthetic f()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/c$b;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;
    .locals 1

    const-string v0, "Key val must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$d;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/helper/c$d;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public g0(Lorg/jsoup/parser/f;)Lorg/jsoup/helper/c$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/helper/c$d;->n:Lorg/jsoup/parser/f;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/jsoup/helper/c$d;->o:Z

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lorg/jsoup/Connection$c;
    .locals 1

    const-string v0, "Charset must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/jsoup/helper/c$d;->p:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v0, p1}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h0(Ljava/lang/String;I)Lorg/jsoup/helper/c$d;
    .locals 2

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/jsoup/helper/c$d;->f:Ljava/net/Proxy;

    return-object p0
.end method

.method public bridge synthetic i(Ljava/net/Proxy;)Lorg/jsoup/Connection$c;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->i0(Ljava/net/Proxy;)Lorg/jsoup/helper/c$d;

    move-result-object p1

    return-object p1
.end method

.method public i0(Ljava/net/Proxy;)Lorg/jsoup/helper/c$d;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jsoup/helper/c$d;->f:Ljava/net/Proxy;

    return-object p0
.end method

.method public bridge synthetic j(Lorg/jsoup/parser/f;)Lorg/jsoup/Connection$c;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->g0(Lorg/jsoup/parser/f;)Lorg/jsoup/helper/c$d;

    move-result-object p1

    return-object p1
.end method

.method public j0(I)Lorg/jsoup/helper/c$d;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Timeout milliseconds must be 0 (infinite) or greater"

    .line 1
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, Lorg/jsoup/helper/c$d;->g:I

    return-object p0
.end method

.method public bridge synthetic k(Ljava/net/URL;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->k(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/c$b;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/c$b;->method()Lorg/jsoup/Connection$Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o(Ljava/lang/String;I)Lorg/jsoup/Connection$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/c$d;->h0(Ljava/lang/String;I)Lorg/jsoup/helper/c$d;

    move-result-object p1

    return-object p1
.end method

.method public p(I)Lorg/jsoup/Connection$c;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    .line 1
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, Lorg/jsoup/helper/c$d;->h:I

    return-object p0
.end method

.method public q(Z)Lorg/jsoup/Connection$c;
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/helper/c$d;->l:Z

    return-object p0
.end method

.method public r(Z)Lorg/jsoup/Connection$c;
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/helper/c$d;->m:Z

    return-object p0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/helper/c$d;->l:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public timeout()I
    .locals 1

    iget v0, p0, Lorg/jsoup/helper/c$d;->g:I

    return v0
.end method

.method public bridge synthetic v()Ljava/net/URL;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/c$b;->v()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/c$b;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public x()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$d;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public y()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$d;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public bridge synthetic z(Lorg/jsoup/Connection$b;)Lorg/jsoup/Connection$c;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;

    move-result-object p1

    return-object p1
.end method
