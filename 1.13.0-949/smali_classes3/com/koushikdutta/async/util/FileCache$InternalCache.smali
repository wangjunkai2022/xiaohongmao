.class Lcom/koushikdutta/async/util/FileCache$InternalCache;
.super Lcom/koushikdutta/async/util/LruCache;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/util/FileCache$CacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/util/FileCache;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->i:Lcom/koushikdutta/async/util/FileCache;

    .line 2
    iget-wide v0, p1, Lcom/koushikdutta/async/util/FileCache;->f:J

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/util/LruCache;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic c(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    check-cast p4, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->s(ZLjava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)V

    return-void
.end method

.method protected bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->t(Ljava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected s(ZLjava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/LruCache;->c(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->i:Lcom/koushikdutta/async/util/FileCache;

    iget-boolean p1, p1, Lcom/koushikdutta/async/util/FileCache;->h:Z

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->i:Lcom/koushikdutta/async/util/FileCache;

    iget-object p3, p3, Lcom/koushikdutta/async/util/FileCache;->e:Ljava/io/File;

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method protected t(Ljava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)J
    .locals 2

    iget-object p1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->i:Lcom/koushikdutta/async/util/FileCache;

    iget-wide v0, p1, Lcom/koushikdutta/async/util/FileCache;->c:J

    iget-wide p1, p2, Lcom/koushikdutta/async/util/FileCache$CacheEntry;->a:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method
