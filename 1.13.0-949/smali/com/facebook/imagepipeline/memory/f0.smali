.class public Lcom/facebook/imagepipeline/memory/f0;
.super Ljava/lang/Object;
.source "PoolParams.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final h:I = -0x1


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/util/SparseIntArray;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public f:Z

.field public final g:I


# direct methods
.method public constructor <init>(IILandroid/util/SparseIntArray;)V
    .locals 7
    .param p3    # Landroid/util/SparseIntArray;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxSizeSoftCap",
            "maxSizeHardCap",
            "bucketSizes"
        }
    .end annotation

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/memory/f0;-><init>(IILandroid/util/SparseIntArray;III)V

    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseIntArray;III)V
    .locals 1
    .param p3    # Landroid/util/SparseIntArray;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxSizeSoftCap",
            "maxSizeHardCap",
            "bucketSizes",
            "minBucketSize",
            "maxBucketSize",
            "maxNumThreads"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/memory/f0;->b:I

    .line 6
    iput p2, p0, Lcom/facebook/imagepipeline/memory/f0;->a:I

    .line 7
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/f0;->c:Landroid/util/SparseIntArray;

    .line 8
    iput p4, p0, Lcom/facebook/imagepipeline/memory/f0;->d:I

    .line 9
    iput p5, p0, Lcom/facebook/imagepipeline/memory/f0;->e:I

    .line 10
    iput p6, p0, Lcom/facebook/imagepipeline/memory/f0;->g:I

    return-void
.end method

.method public constructor <init>(ILandroid/util/SparseIntArray;)V
    .locals 7
    .param p2    # Landroid/util/SparseIntArray;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxSize",
            "bucketSizes"
        }
    .end annotation

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/memory/f0;-><init>(IILandroid/util/SparseIntArray;III)V

    return-void
.end method
