.class public Lcom/facebook/imagepipeline/core/c;
.super Ljava/lang/Object;
.source "DiskStorageCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/g;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private a:Lcom/facebook/imagepipeline/core/d;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskStorageFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/c;->a:Lcom/facebook/imagepipeline/core/d;

    return-void
.end method

.method public static b(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/d;)Lcom/facebook/cache/disk/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "diskCacheConfig",
            "diskStorage"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/imagepipeline/core/c;->c(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/d;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/e;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/d;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/e;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diskCacheConfig",
            "diskStorage",
            "executorForBackgroundInit"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/facebook/cache/disk/e$c;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->l()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->k()J

    move-result-wide v3

    .line 4
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->g()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/cache/disk/e$c;-><init>(JJJ)V

    .line 5
    new-instance v9, Lcom/facebook/cache/disk/e;

    .line 6
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->i()Lcom/facebook/cache/disk/h;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->e()Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->d()Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v5

    .line 9
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->h()Lm0/b;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->j()Z

    move-result v8

    move-object v0, v9

    move-object v1, p1

    move-object v3, v7

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/cache/disk/e;-><init>(Lcom/facebook/cache/disk/d;Lcom/facebook/cache/disk/h;Lcom/facebook/cache/disk/e$c;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lm0/b;Ljava/util/concurrent/Executor;Z)V

    return-object v9
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskCacheConfig"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/c;->a:Lcom/facebook/imagepipeline/core/d;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/core/d;->a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/c;->b(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/d;)Lcom/facebook/cache/disk/e;

    move-result-object p1

    return-object p1
.end method
