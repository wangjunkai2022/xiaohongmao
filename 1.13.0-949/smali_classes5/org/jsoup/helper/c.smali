.class public Lorg/jsoup/helper/c;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/c$d;,
        Lorg/jsoup/helper/c$e;,
        Lorg/jsoup/helper/c$c;,
        Lorg/jsoup/helper/c$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "Content-Encoding"

.field public static final d:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36"

.field private static final e:Ljava/lang/String; = "User-Agent"

.field public static final f:Ljava/lang/String; = "Content-Type"

.field public static final g:Ljava/lang/String; = "multipart/form-data"

.field public static final h:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final i:I = 0x133

.field private static final j:Ljava/lang/String; = "application/octet-stream"

.field private static final k:Ljava/nio/charset/Charset;

.field private static final l:Ljava/nio/charset/Charset;


# instance fields
.field private a:Lorg/jsoup/helper/c$d;

.field private b:Lorg/jsoup/Connection$d;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/c;->k:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/c;->l:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/jsoup/helper/c$d;

    invoke-direct {v0}, Lorg/jsoup/helper/c$d;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    return-void
.end method

.method constructor <init>(Lorg/jsoup/helper/c$d;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lorg/jsoup/helper/c$d;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/c$d;-><init>(Lorg/jsoup/helper/c$d;)V

    iput-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    .line 8
    iput-object p2, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;Lorg/jsoup/helper/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jsoup/helper/c;-><init>(Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;)V

    return-void
.end method

.method static synthetic I(Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    invoke-static {p0}, Lorg/jsoup/helper/c;->T(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method static synthetic J(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/jsoup/helper/c;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic K()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lorg/jsoup/helper/c;->l:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic L()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lorg/jsoup/helper/c;->k:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic M(Lorg/jsoup/Connection$c;)Z
    .locals 0

    invoke-static {p0}, Lorg/jsoup/helper/c;->S(Lorg/jsoup/Connection$c;)Z

    move-result p0

    return p0
.end method

.method public static N(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/helper/c;

    invoke-direct {v0}, Lorg/jsoup/helper/c;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->x(Ljava/lang/String;)Lorg/jsoup/Connection;

    return-object v0
.end method

.method public static O(Ljava/net/URL;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/helper/c;

    invoke-direct {v0}, Lorg/jsoup/helper/c;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->k(Ljava/net/URL;)Lorg/jsoup/Connection;

    return-object v0
.end method

.method private static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, "%22"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lorg/jsoup/helper/c;->R(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method static R(Ljava/net/URL;)Ljava/net/URL;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/c;->T(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "%20"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method private static S(Lorg/jsoup/Connection$c;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->data()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$b;

    .line 2
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static T(Ljava/net/URL;)Ljava/net/URL;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/f;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v0, v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-object p0
.end method


# virtual methods
.method public A()Ljava/net/CookieStore;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-static {v0}, Lorg/jsoup/helper/c$d;->Z(Lorg/jsoup/helper/c$d;)Ljava/net/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 2

    const-string v0, "Referrer must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    const-string v1, "Referer"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/helper/c$d;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public C(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    const-string v0, "Cookie map must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    iget-object v1, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/helper/c$d;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-static {p1, p2, p3}, Lorg/jsoup/helper/c$c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/c$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public E(Lorg/jsoup/Connection$d;)Lorg/jsoup/Connection;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    return-object p0
.end method

.method public varargs F([Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 4

    const-string v0, "Data key value pairs must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Must supply an even number of key value pairs"

    invoke-static {v0, v2}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 3
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 4
    aget-object v0, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 5
    aget-object v2, p1, v2

    const-string v3, "Data key must not be empty"

    .line 6
    invoke-static {v0, v3}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Data value must not be null"

    .line 7
    invoke-static {v2, v3}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-static {v0, v2}, Lorg/jsoup/helper/c$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jsoup/helper/c$d;->f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public G(Ljava/lang/String;)Lorg/jsoup/Connection$b;
    .locals 3

    const-string v0, "Data key must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/helper/c;->request()Lorg/jsoup/Connection$c;

    move-result-object v0

    invoke-interface {v0}, Lorg/jsoup/Connection$c;->data()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/Connection$b;

    .line 3
    invoke-interface {v1}, Lorg/jsoup/Connection$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public H(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    const-string v0, "Data map must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    iget-object v1, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/jsoup/helper/c$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/helper/c$d;->f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Z)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->a(Z)Lorg/jsoup/Connection$c;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->b(Ljava/lang/String;)Lorg/jsoup/Connection$c;

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/helper/c$d;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public d(I)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->j0(I)Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public e(Ljava/util/Collection;)Lorg/jsoup/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$b;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    const-string v0, "Data collection must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$b;

    .line 3
    iget-object v1, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v1, v0}, Lorg/jsoup/helper/c$d;->f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public execute()Lorg/jsoup/Connection$d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-static {v0}, Lorg/jsoup/helper/c$e;->c0(Lorg/jsoup/helper/c$d;)Lorg/jsoup/helper/c$e;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    return-object v0
.end method

.method public f(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    const-string v0, "Header map must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    iget-object v1, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/helper/c$d;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public g(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->g(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object p0
.end method

.method public get()Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/c$d;->m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/helper/c;->execute()Lorg/jsoup/Connection$d;

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    invoke-interface {v0}, Lorg/jsoup/Connection$d;->D()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->h(Ljava/lang/String;)Lorg/jsoup/Connection$c;

    return-object p0
.end method

.method public i(Ljava/net/Proxy;)Lorg/jsoup/Connection;
    .locals 1
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->i0(Ljava/net/Proxy;)Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public j(Lorg/jsoup/parser/f;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->g0(Lorg/jsoup/parser/f;)Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public k(Ljava/net/URL;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->k(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/helper/c$d;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-static {p1, p2, p3}, Lorg/jsoup/helper/c$c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/c$c;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/jsoup/helper/c$c;->f(Ljava/lang/String;)Lorg/jsoup/Connection$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public o(Ljava/lang/String;I)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/helper/c$d;->h0(Ljava/lang/String;I)Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public p(I)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->p(I)Lorg/jsoup/Connection$c;

    return-object p0
.end method

.method public q(Z)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->q(Z)Lorg/jsoup/Connection$c;

    return-object p0
.end method

.method public r(Z)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->r(Z)Lorg/jsoup/Connection$c;

    return-object p0
.end method

.method public request()Lorg/jsoup/Connection$c;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    return-object v0
.end method

.method public s()Lorg/jsoup/Connection;
    .locals 2

    new-instance v0, Lorg/jsoup/helper/c;

    iget-object v1, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-direct {v0, v1}, Lorg/jsoup/helper/c;-><init>(Lorg/jsoup/helper/c$d;)V

    return-object v0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    invoke-static {p1, p2}, Lorg/jsoup/helper/c$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/c$d;->f0(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public u()Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    sget-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/c$d;->m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/helper/c;->execute()Lorg/jsoup/Connection$d;

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    invoke-interface {v0}, Lorg/jsoup/Connection$d;->D()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 2

    const-string v0, "User agent must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/helper/c$d;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public w(Lorg/jsoup/Connection$c;)Lorg/jsoup/Connection;
    .locals 0

    check-cast p1, Lorg/jsoup/helper/c$d;

    iput-object p1, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 4

    const-string v0, "Must supply a valid URL"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lorg/jsoup/helper/c;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/c$d;->k(Ljava/net/URL;)Lorg/jsoup/Connection$a;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public y()Lorg/jsoup/Connection$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/c;->b:Lorg/jsoup/Connection$d;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must execute the request before getting a response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(Ljava/net/CookieStore;)Lorg/jsoup/Connection;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/helper/c;->a:Lorg/jsoup/helper/c$d;

    new-instance v1, Ljava/net/CookieManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    invoke-static {v0, v1}, Lorg/jsoup/helper/c$d;->a0(Lorg/jsoup/helper/c$d;Ljava/net/CookieManager;)Ljava/net/CookieManager;

    return-object p0
.end method
