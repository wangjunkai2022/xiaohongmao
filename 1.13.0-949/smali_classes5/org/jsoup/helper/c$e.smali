.class public Lorg/jsoup/helper/c$e;
.super Lorg/jsoup/helper/c$b;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/c$b<",
        "Lorg/jsoup/Connection$d;",
        ">;",
        "Lorg/jsoup/Connection$d;"
    }
.end annotation


# static fields
.field private static final q:I = 0x14

.field private static final r:Ljava/lang/String; = "Location"

.field private static final s:Ljava/util/regex/Pattern;


# instance fields
.field private final f:I

.field private final g:Ljava/lang/String;

.field private h:Ljava/nio/ByteBuffer;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Ljava/io/InputStream;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Ljava/net/HttpURLConnection;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:I

.field private final p:Lorg/jsoup/helper/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(application|text)/\\w*\\+?xml.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/c$e;->s:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/helper/c$b;-><init>(Lorg/jsoup/helper/c$a;)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lorg/jsoup/helper/c$e;->m:Z

    .line 3
    iput-boolean v1, p0, Lorg/jsoup/helper/c$e;->n:Z

    .line 4
    iput v1, p0, Lorg/jsoup/helper/c$e;->o:I

    const/16 v1, 0x190

    .line 5
    iput v1, p0, Lorg/jsoup/helper/c$e;->f:I

    const-string v1, "Request not made"

    .line 6
    iput-object v1, p0, Lorg/jsoup/helper/c$e;->g:Ljava/lang/String;

    .line 7
    new-instance v1, Lorg/jsoup/helper/c$d;

    invoke-direct {v1}, Lorg/jsoup/helper/c$d;-><init>()V

    iput-object v1, p0, Lorg/jsoup/helper/c$e;->p:Lorg/jsoup/helper/c$d;

    .line 8
    iput-object v0, p0, Lorg/jsoup/helper/c$e;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;)V
    .locals 2
    .param p3    # Lorg/jsoup/helper/c$e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lorg/jsoup/helper/c$b;-><init>(Lorg/jsoup/helper/c$a;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/jsoup/helper/c$e;->m:Z

    .line 11
    iput-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    .line 12
    iput v0, p0, Lorg/jsoup/helper/c$e;->o:I

    .line 13
    iput-object p1, p0, Lorg/jsoup/helper/c$e;->j:Ljava/net/HttpURLConnection;

    .line 14
    iput-object p2, p0, Lorg/jsoup/helper/c$e;->p:Lorg/jsoup/helper/c$d;

    .line 15
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    .line 16
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    .line 17
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lorg/jsoup/helper/c$e;->f:I

    .line 18
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/c$e;->g:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/c$e;->l:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lorg/jsoup/helper/c$e;->b0(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$e;->f0(Ljava/util/Map;)V

    .line 22
    iget-object v1, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    invoke-static {p2, v1, p1}, Lorg/jsoup/helper/a;->d(Lorg/jsoup/helper/c$d;Ljava/net/URL;Ljava/util/Map;)V

    if-eqz p3, :cond_3

    .line 23
    invoke-virtual {p3}, Lorg/jsoup/helper/c$e;->A()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jsoup/helper/c$e;->F(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lorg/jsoup/helper/c$e;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p3}, Lorg/jsoup/helper/c$e;->g0()V

    .line 27
    iget p1, p3, Lorg/jsoup/helper/c$e;->o:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jsoup/helper/c$e;->o:I

    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/jsoup/helper/c$e;->v()Ljava/net/URL;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Too many redirects occurred trying to load URL %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private static a0(Lorg/jsoup/helper/c$d;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->y()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->v()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->v()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 4
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 6
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->timeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 7
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->timeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 8
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->x()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    .line 9
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->x()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 12
    :cond_2
    invoke-static {p0, v0}, Lorg/jsoup/helper/a;->a(Lorg/jsoup/helper/c$d;Ljava/net/HttpURLConnection;)V

    .line 13
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->N()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static b0(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static c0(Lorg/jsoup/helper/c$d;)Lorg/jsoup/helper/c$e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/helper/c$e;->d0(Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;)Lorg/jsoup/helper/c$e;

    move-result-object p0

    return-object p0
.end method

.method static d0(Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;)Lorg/jsoup/helper/c$e;
    .locals 8
    .param p1    # Lorg/jsoup/helper/c$e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/jsoup/helper/c$d;->b0(Lorg/jsoup/helper/c$d;)Z

    move-result v0

    const-string v1, "Multiple threads were detected trying to execute the same request concurrently. Make sure to use Connection#newRequest() and do not share an executing request between threads."

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lorg/jsoup/helper/c$d;->c0(Lorg/jsoup/helper/c$d;Z)Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v1, "Request must not be null"

    .line 5
    invoke-static {p0, v1}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->v()Ljava/net/URL;

    move-result-object v1

    const-string v2, "URL must be specified to connect"

    .line 7
    invoke-static {v1, v2}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string p1, "Only http & https protocols supported"

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v1

    .line 12
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->Q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set a request body for HTTP method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->method()Lorg/jsoup/Connection$Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->data()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    .line 15
    :cond_4
    invoke-static {p0}, Lorg/jsoup/helper/c$e;->h0(Lorg/jsoup/Connection$c;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 16
    invoke-static {p0}, Lorg/jsoup/helper/c$e;->i0(Lorg/jsoup/Connection$c;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    :goto_2
    move-object v1, v5

    .line 17
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 18
    invoke-static {p0}, Lorg/jsoup/helper/c$e;->a0(Lorg/jsoup/helper/c$d;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 19
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-static {p0, v4, v1}, Lorg/jsoup/helper/c$e;->j0(Lorg/jsoup/Connection$c;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 24
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw p1

    .line 26
    :cond_7
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 27
    new-instance v4, Lorg/jsoup/helper/c$e;

    invoke-direct {v4, v2, p0, p1}, Lorg/jsoup/helper/c$e;-><init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string p1, "Location"

    .line 28
    invoke-virtual {v4, p1}, Lorg/jsoup/helper/c$e;->I(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->C()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x133

    if-eq v1, p1, :cond_8

    .line 29
    sget-object p1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 30
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->data()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 31
    invoke-virtual {p0, v5}, Lorg/jsoup/helper/c$d;->b(Ljava/lang/String;)Lorg/jsoup/Connection$c;

    const-string p1, "Content-Type"

    .line 32
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->G(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    :cond_8
    const-string p1, "Location"

    .line 33
    invoke-virtual {v4, p1}, Lorg/jsoup/helper/c$e;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const-string v0, "http:/"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_9

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_9
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->v()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/internal/f;->r(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lorg/jsoup/helper/c;->R(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->k(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    .line 39
    invoke-static {p0, v3}, Lorg/jsoup/helper/c$d;->c0(Lorg/jsoup/helper/c$d;Z)Z

    .line 40
    invoke-static {p0, v4}, Lorg/jsoup/helper/c$e;->d0(Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;)Lorg/jsoup/helper/c$e;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 41
    invoke-static {p0, v3}, Lorg/jsoup/helper/c$d;->c0(Lorg/jsoup/helper/c$d;Z)Z

    return-object p1

    :cond_a
    const/16 p1, 0xc8

    if-lt v1, p1, :cond_b

    const/16 p1, 0x190

    if-lt v1, p1, :cond_c

    .line 42
    :cond_b
    :try_start_7
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->s()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 43
    :cond_c
    invoke-virtual {v4}, Lorg/jsoup/helper/c$e;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 44
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->J()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "text/"

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lorg/jsoup/helper/c$e;->s:Ljava/util/regex/Pattern;

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    .line 47
    :cond_d
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v1, "Unhandled content type. Must be text/*, application/xml, or application/*+xml"

    .line 48
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->v()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_6
    if-eqz p1, :cond_f

    .line 49
    sget-object v1, Lorg/jsoup/helper/c$e;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 50
    invoke-static {p0}, Lorg/jsoup/helper/c$d;->d0(Lorg/jsoup/helper/c$d;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lorg/jsoup/parser/f;->t()Lorg/jsoup/parser/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$d;->g0(Lorg/jsoup/parser/f;)Lorg/jsoup/helper/c$d;

    .line 51
    :cond_f
    iget-object p1, v4, Lorg/jsoup/helper/c$e;->l:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/c$e;->k:Ljava/lang/String;

    .line 52
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->method()Lorg/jsoup/Connection$Method;

    move-result-object p1

    sget-object v1, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    if-eq p1, v1, :cond_13

    .line 53
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_7

    :cond_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_7
    iput-object p1, v4, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    .line 54
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const-string p1, "Content-Encoding"

    const-string v1, "gzip"

    .line 55
    invoke-virtual {v4, p1, v1}, Lorg/jsoup/helper/c$e;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 56
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    iget-object v1, v4, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, v4, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    goto :goto_8

    :cond_11
    const-string p1, "Content-Encoding"

    const-string v1, "deflate"

    .line 57
    invoke-virtual {v4, p1, v1}, Lorg/jsoup/helper/c$e;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 58
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    iget-object v1, v4, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p1, v4, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    .line 59
    :cond_12
    :goto_8
    iget-object p1, v4, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    const v1, 0x8000

    .line 60
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->R()I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/jsoup/internal/a;->h(Ljava/io/InputStream;II)Lorg/jsoup/internal/a;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->timeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v6, v7, v1, v2}, Lorg/jsoup/internal/a;->d(JJ)Lorg/jsoup/internal/a;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    goto :goto_9

    .line 62
    :cond_13
    invoke-static {}, Lorg/jsoup/helper/b;->c()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 63
    :goto_9
    invoke-static {p0, v3}, Lorg/jsoup/helper/c$d;->c0(Lorg/jsoup/helper/c$d;Z)Z

    .line 64
    iput-boolean v0, v4, Lorg/jsoup/helper/c$e;->m:Z

    return-object v4

    .line 65
    :cond_14
    :try_start_8
    new-instance p1, Lorg/jsoup/HttpStatusException;

    const-string v0, "HTTP error fetching URL"

    invoke-virtual {p0}, Lorg/jsoup/helper/c$d;->v()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    move-exception p1

    move-object v5, v4

    goto :goto_a

    :catchall_1
    move-exception p1

    goto :goto_b

    :catch_2
    move-exception p1

    :goto_a
    if-eqz v5, :cond_15

    .line 66
    :try_start_9
    invoke-direct {v5}, Lorg/jsoup/helper/c$e;->g0()V

    .line 67
    :cond_15
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 68
    :goto_b
    invoke-static {p0, v3}, Lorg/jsoup/helper/c$d;->c0(Lorg/jsoup/helper/c$d;Z)Z

    .line 69
    throw p1

    :catchall_2
    move-exception p1

    .line 70
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method private e0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/c$e;->m:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    const-string v1, "Request has already been read (with .parse())"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/jsoup/helper/c$e;->p:Lorg/jsoup/helper/c$d;

    invoke-virtual {v2}, Lorg/jsoup/helper/c$d;->R()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jsoup/helper/b;->k(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    .line 6
    invoke-direct {p0}, Lorg/jsoup/helper/c$e;->g0()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    new-instance v2, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v2, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    iput-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    .line 9
    invoke-direct {p0}, Lorg/jsoup/helper/c$e;->g0()V

    .line 10
    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iput-object v1, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    .line 4
    throw v0

    .line 5
    :catch_0
    :goto_0
    iput-object v1, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 8
    iput-object v1, p0, Lorg/jsoup/helper/c$e;->j:Ljava/net/HttpURLConnection;

    :cond_1
    return-void
.end method

.method private static h0(Lorg/jsoup/Connection$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->v()Ljava/net/URL;

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 10
    :goto_0
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->data()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/Connection$b;

    .line 11
    invoke-interface {v4}, Lorg/jsoup/Connection$b;->j()Z

    move-result v5

    const-string v6, "InputStream data not supported in URL query string."

    invoke-static {v5, v6}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    const/16 v5, 0x26

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_2
    invoke-interface {v4}, Lorg/jsoup/Connection$b;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jsoup/helper/b;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-interface {v4}, Lorg/jsoup/Connection$b;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-static {v1}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$a;->k(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    .line 17
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->data()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method private static i0(Lorg/jsoup/Connection$c;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lr7/h;
    .end annotation

    const-string v0, "Content-Type"

    .line 1
    invoke-interface {p0, v0}, Lorg/jsoup/Connection$a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/form-data; boundary="

    if-eqz v1, :cond_0

    const-string v3, "multipart/form-data"

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "boundary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lorg/jsoup/helper/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$a;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lorg/jsoup/helper/c;->M(Lorg/jsoup/Connection$c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lorg/jsoup/helper/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$a;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jsoup/Connection$a;->l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static j0(Lorg/jsoup/Connection$c;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->data()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->t()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p2, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "--"

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$b;

    .line 4
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, "\r\n"

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "Content-Disposition: form-data; name=\""

    .line 7
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/helper/c;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\""

    .line 9
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "\r\n\r\n"

    if-eqz v3, :cond_1

    const-string v5, "; filename=\""

    .line 11
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 12
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jsoup/helper/c;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, "\"\r\nContent-Type: "

    .line 13
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "application/octet-stream"

    .line 15
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 18
    invoke-static {v3, p1}, Lorg/jsoup/helper/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 19
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 22
    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 26
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->Q()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$b;

    if-nez p1, :cond_5

    const/16 v2, 0x26

    .line 29
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(C)Ljava/io/Writer;

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 30
    :goto_4
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v2, 0x3d

    .line 31
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 32
    invoke-interface {v0}, Lorg/jsoup/Connection$b;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 33
    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void
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

.method public D()Lorg/jsoup/nodes/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/c$e;->m:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    const-string v1, "Input stream already read and parsed, cannot re-read."

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/jsoup/helper/c$e;->k:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/helper/c$e;->p:Lorg/jsoup/helper/c$d;

    invoke-virtual {v3}, Lorg/jsoup/helper/c$d;->U()Lorg/jsoup/parser/f;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/helper/b;->j(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 7
    new-instance v1, Lorg/jsoup/helper/c;

    iget-object v2, p0, Lorg/jsoup/helper/c$e;->p:Lorg/jsoup/helper/c$d;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/jsoup/helper/c;-><init>(Lorg/jsoup/helper/c$d;Lorg/jsoup/helper/c$e;Lorg/jsoup/helper/c$a;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->z2(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;

    .line 8
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/c$e;->k:Ljava/lang/String;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lorg/jsoup/helper/c$e;->n:Z

    .line 10
    invoke-direct {p0}, Lorg/jsoup/helper/c$e;->g0()V

    return-object v0
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

.method public bridge synthetic K(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/c$b;->K(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L(Ljava/lang/String;)Lorg/jsoup/Connection$d;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$e;->Z(Ljava/lang/String;)Lorg/jsoup/helper/c$e;

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

.method public O()Lorg/jsoup/Connection$d;
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/helper/c$e;->e0()V

    return-object p0
.end method

.method public P()I
    .locals 1

    iget v0, p0, Lorg/jsoup/helper/c$e;->f:I

    return v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public T()[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/helper/c$e;->e0()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public Z(Ljava/lang/String;)Lorg/jsoup/helper/c$e;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/helper/c$e;->k:Ljava/lang/String;

    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/jsoup/helper/c$e;->e0()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jsoup/helper/b;->b:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/helper/c$e;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/c$b;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic f()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/c$b;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method f0(Ljava/util/Map;)V
    .locals 6
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

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "Set-Cookie"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    new-instance v4, Lorg/jsoup/parser/h;

    invoke-direct {v4, v3}, Lorg/jsoup/parser/h;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    .line 7
    invoke-virtual {v4, v3}, Lorg/jsoup/parser/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    .line 8
    invoke-virtual {v4, v5}, Lorg/jsoup/parser/h;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/c$e;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/c$e;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_2

    :cond_5
    return-void
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

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/io/BufferedInputStream;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/c$e;->m:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    const-string v1, "Request has already been read"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/jsoup/helper/c$e;->n:Z

    .line 4
    iget-object v0, p0, Lorg/jsoup/helper/c$e;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/jsoup/helper/c$e;->p:Lorg/jsoup/helper/c$d;

    invoke-virtual {v1}, Lorg/jsoup/helper/c$d;->R()I

    move-result v1

    const v2, 0x8000

    invoke-static {v0, v2, v1}, Lorg/jsoup/internal/a;->h(Ljava/io/InputStream;II)Lorg/jsoup/internal/a;

    move-result-object v0

    return-object v0
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
