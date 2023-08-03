.class public Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation


# instance fields
.field a:[Ljava/io/FileInputStream;

.field b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

.field c:J

.field d:Lcom/koushikdutta/async/http/cache/ResponseHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
