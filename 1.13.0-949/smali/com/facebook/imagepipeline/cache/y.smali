.class public Lcom/facebook/imagepipeline/cache/y;
.super Ljava/lang/Object;
.source "NoOpImageCacheStatsTracker.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/q;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Lcom/facebook/imagepipeline/cache/y;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized o()Lcom/facebook/imagepipeline/cache/y;
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/cache/y;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/y;->a:Lcom/facebook/imagepipeline/cache/y;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/cache/y;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/y;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/cache/y;->a:Lcom/facebook/imagepipeline/cache/y;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/y;->a:Lcom/facebook/imagepipeline/cache/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/cache/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedMemoryCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/u<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public c(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public d(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public e(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public f(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public g(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public h(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public i(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public j(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public k(Lcom/facebook/imagepipeline/cache/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/u<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public l(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public m(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method

.method public n(Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    return-void
.end method
