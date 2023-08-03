.class public Lcom/facebook/imagepipeline/core/e;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorageFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskCacheConfig"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/cache/disk/f;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/cache/disk/c;->m()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/cache/disk/c;->c()Lcom/facebook/common/internal/m;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/cache/disk/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/facebook/cache/disk/c;->d()Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/cache/disk/f;-><init>(ILcom/facebook/common/internal/m;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V

    return-object v0
.end method
