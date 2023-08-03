.class Lcom/facebook/imagepipeline/memory/r$b;
.super Lcom/facebook/imagepipeline/memory/s;
.source "FlexByteArrayPool.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryTrimmableRegistry",
            "poolParams",
            "poolStatsTracker"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/s;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V

    return-void
.end method


# virtual methods
.method I(I)Lcom/facebook/imagepipeline/memory/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/h<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/b0;

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/s;->z(I)I

    move-result p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lcom/facebook/imagepipeline/memory/f0;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/f0;->g:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/b0;-><init>(III)V

    return-object v0
.end method
