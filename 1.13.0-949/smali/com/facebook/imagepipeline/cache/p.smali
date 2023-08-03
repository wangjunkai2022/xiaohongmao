.class public Lcom/facebook/imagepipeline/cache/p;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/q;)Lcom/facebook/imagepipeline/cache/r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "encodedMemoryCache",
            "imageCacheStatsTracker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/q;",
            ")",
            "Lcom/facebook/imagepipeline/cache/r<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/facebook/imagepipeline/cache/q;->a(Lcom/facebook/imagepipeline/cache/u;)V

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/cache/p$a;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/p$a;-><init>(Lcom/facebook/imagepipeline/cache/q;)V

    .line 3
    new-instance p1, Lcom/facebook/imagepipeline/cache/r;

    invoke-direct {p1, p0, v0}, Lcom/facebook/imagepipeline/cache/r;-><init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/w;)V

    return-object p1
.end method
