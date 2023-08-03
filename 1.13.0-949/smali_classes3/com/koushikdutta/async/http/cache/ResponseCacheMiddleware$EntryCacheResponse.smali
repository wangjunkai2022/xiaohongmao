.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;
.super Ljava/net/CacheResponse;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryCacheResponse"
.end annotation


# instance fields
.field private final a:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

.field private final b:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    .line 3
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->b:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/FileInputStream;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public bridge synthetic getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
