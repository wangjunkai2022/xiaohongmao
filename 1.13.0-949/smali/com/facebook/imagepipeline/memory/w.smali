.class public abstract Lcom/facebook/imagepipeline/memory/w;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "MemoryChunkPool.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "Lcom/facebook/imagepipeline/memory/v;",
        ">;"
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private final k:[I


# direct methods
.method constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryTrimmableRegistry",
            "poolParams",
            "memoryChunkPoolStatsTracker"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V

    .line 2
    iget-object p1, p2, Lcom/facebook/imagepipeline/memory/f0;->c:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/w;->k:[I

    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-object p3, p0, Lcom/facebook/imagepipeline/memory/w;->k:[I

    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->D()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic F(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/memory/v;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/w;->S(Lcom/facebook/imagepipeline/memory/v;)Z

    move-result p1

    return p1
.end method

.method protected abstract O(I)Lcom/facebook/imagepipeline/memory/v;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketedSize"
        }
    .end annotation
.end method

.method protected P(Lcom/facebook/imagepipeline/memory/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/memory/v;->close()V

    return-void
.end method

.method protected Q(Lcom/facebook/imagepipeline/memory/v;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/memory/v;->getSize()I

    move-result p1

    return p1
.end method

.method R()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/w;->k:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected S(Lcom/facebook/imagepipeline/memory/v;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/memory/v;->isClosed()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected bridge synthetic i(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bucketedSize"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/w;->O(I)Lcom/facebook/imagepipeline/memory/v;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic u(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/memory/v;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/w;->P(Lcom/facebook/imagepipeline/memory/v;)V

    return-void
.end method

.method protected x(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestSize"
        }
    .end annotation

    if-lez p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/w;->k:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-lt v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1

    .line 2
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected bridge synthetic y(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/memory/v;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/w;->Q(Lcom/facebook/imagepipeline/memory/v;)I

    move-result p1

    return p1
.end method

.method protected z(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketedSize"
        }
    .end annotation

    return p1
.end method
