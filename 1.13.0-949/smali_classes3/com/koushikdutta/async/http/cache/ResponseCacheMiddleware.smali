.class public Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
    }
.end annotation


# static fields
.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:Ljava/lang/String; = "X-Served-From"

.field public static final n:Ljava/lang/String; = "conditional-cache"

.field public static final o:Ljava/lang/String; = "cache"

.field private static final p:Ljava/lang/String; = "AsyncHttpCache"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Lcom/koushikdutta/async/util/FileCache;

.field private e:Lcom/koushikdutta/async/AsyncServer;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    return-void
.end method

.method static synthetic i(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/AsyncServer;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->e:Lcom/koushikdutta/async/AsyncServer;

    return-object p0
.end method

.method static synthetic j(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    return-object p0
.end method

.method static synthetic k(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I
    .locals 2

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->b:I

    return v0
.end method

.method static synthetic l(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I
    .locals 2

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->c:I

    return v0
.end method

.method public static m(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/File;J)Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->B()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 2
    instance-of v1, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Response cache already added to http client"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->D()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->e:Lcom/koushikdutta/async/AsyncServer;

    .line 6
    new-instance v1, Lcom/koushikdutta/async/util/FileCache;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/koushikdutta/async/util/FileCache;-><init>(Ljava/io/File;JZ)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    .line 7
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->G(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    return-object v0
.end method


# virtual methods
.method public e(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 14

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/cache/RequestHeaders;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/Headers;->i()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->e(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 2
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v2, "request-headers"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/util/UntypedHashtable;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 4
    iget-object v4, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/koushikdutta/async/util/FileCache;->v([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    const/4 v6, 0x2

    invoke-virtual {v4, v1, v6}, Lcom/koushikdutta/async/util/FileCache;->h(Ljava/lang/String;I)[Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 6
    :try_start_1
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    return-object v2

    .line 7
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    int-to-long v6, v4

    .line 8
    new-instance v4, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 9
    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->m()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object v9

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/Headers;->i()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v9

    invoke-virtual {v4, v5, v8, v9}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 11
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-object v2

    .line 12
    :cond_2
    new-instance v5, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    aget-object v8, v1, v3

    invoke-direct {v5, v4, v8}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V

    .line 13
    :try_start_2
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v8

    .line 14
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_7

    if-nez v9, :cond_3

    goto/16 :goto_1

    .line 15
    :cond_3
    invoke-static {v8}, Lcom/koushikdutta/async/http/cache/RawHeaders;->e(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v8

    .line 16
    new-instance v9, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v10, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v10}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 17
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Content-Length"

    invoke-virtual {v8, v11, v10}, Lcom/koushikdutta/async/http/cache/RawHeaders;->q(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Encoding"

    .line 18
    invoke-virtual {v8, v10}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    const-string v10, "Transfer-Encoding"

    .line 19
    invoke-virtual {v8, v10}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->J(JJ)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 22
    invoke-virtual {v9, v10, v11, v0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g(JLcom/koushikdutta/async/http/cache/RequestHeaders;)Lcom/koushikdutta/async/http/cache/ResponseSource;

    move-result-object v0

    .line 23
    sget-object v10, Lcom/koushikdutta/async/http/cache/ResponseSource;->a:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-ne v0, v10, :cond_5

    .line 24
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Response retrieved from cache"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->z(Ljava/lang/String;)V

    .line 25
    invoke-static {v4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 26
    :goto_0
    iget-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->i:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/cache/RawHeaders;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 27
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->e:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 28
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->g:I

    .line 29
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v0, "socket-owner"

    invoke-virtual {p1, v0, p0}, Lcom/koushikdutta/async/util/UntypedHashtable;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    new-instance p1, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->i()Z

    return-object p1

    .line 32
    :cond_5
    sget-object v4, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-ne v0, v4, :cond_6

    .line 33
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v3, "Response may be served from conditional cache"

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->z(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;-><init>()V

    .line 35
    iput-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->a:[Ljava/io/FileInputStream;

    .line 36
    iput-wide v6, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->c:J

    .line 37
    iput-object v9, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    .line 38
    iput-object v5, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    .line 39
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "cache-data"

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/util/UntypedHashtable;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 40
    :cond_6
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Response can not be served from cache"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 41
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 42
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-object v2

    .line 43
    :cond_7
    :goto_1
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 44
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-object v2

    .line 45
    :catch_0
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 46
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-object v2

    :catch_1
    move-object v1, v2

    .line 47
    :catch_2
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 48
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-object v2

    .line 49
    :cond_8
    :goto_2
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    return-object v2
.end method

.method public f(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    const-class v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->e(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    const-string v1, "X-Served-From"

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string v0, "cache"

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v2, "cache-data"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    .line 4
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/Headers;->i()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->e(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v3

    const-string v4, "Content-Length"

    .line 5
    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    .line 6
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v6}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->protocol()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v6}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v9}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->message()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const-string v6, "%s %s %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->r(Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 8
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v5, "response-headers"

    invoke-virtual {v3, v5, v4}, Lcom/koushikdutta/async/util/UntypedHashtable;->c(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 9
    iget-object v3, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->L(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v3, "Serving response from conditional cache"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->z(Ljava/lang/String;)V

    .line 11
    iget-object v2, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-virtual {v2, v4}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    move-result-object v2

    .line 12
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    new-instance v4, Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;->t()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/Headers;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->P(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 13
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->j()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->h(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 14
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->O(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 15
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const-string v3, "conditional-cache"

    invoke-virtual {v2, v1, v3}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 16
    iget v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->f:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->f:I

    .line 17
    new-instance v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    iget-object v2, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    iget-wide v3, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->c:J

    invoke-direct {v1, v2, v3, v4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 18
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;->j:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V

    .line 19
    iput-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;->j:Lcom/koushikdutta/async/DataEmitter;

    .line 20
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->w0()V

    return-void

    .line 21
    :cond_1
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/UntypedHashtable;->d(Ljava/lang/String;)V

    .line 22
    iget-object v0, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 23
    :cond_2
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    if-nez v0, :cond_3

    return-void

    .line 24
    :cond_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "request-headers"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/RequestHeaders;

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->A(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    new-array v1, v8, [Ljava/lang/Object;

    .line 26
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/koushikdutta/async/util/FileCache;->v([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->k()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v0

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->w()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->g(Ljava/util/Set;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v0

    .line 28
    new-instance v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v4

    invoke-direct {v2, v3, v0, v5, v4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 29
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;)V

    .line 30
    new-instance v3, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    invoke-direct {v3, p0, v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Ljava/lang/String;)V

    .line 31
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->g(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;)V

    .line 32
    invoke-virtual {v3, v8}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c(I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-object v3, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    .line 34
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;->j:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V

    .line 35
    iput-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;->j:Lcom/koushikdutta/async/DataEmitter;

    .line 36
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v2, "body-cacher"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/util/UntypedHashtable;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Caching response"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    .line 38
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->i:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->i:I

    return-void

    .line 39
    :catch_0
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a()V

    .line 40
    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    return-void

    .line 41
    :cond_5
    :goto_0
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 42
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Response is not cacheable"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->v(Ljava/lang/String;)V

    return-void
.end method

.method public h(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->a:[Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/AsyncSocket;

    const-class v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->e(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 5
    iget-object v0, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->a:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "body-cacher"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->k:Ljava/lang/Exception;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->w0()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->x0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache;->a()V

    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->g:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->i:I

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->f:I

    return v0
.end method

.method public s()Lcom/koushikdutta/async/util/FileCache;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    return v0
.end method

.method public u(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->v([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->s()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/FileCache;->p(Ljava/lang/String;)V

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    return-void
.end method
