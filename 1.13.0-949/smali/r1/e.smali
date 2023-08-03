.class public Lr1/e;
.super Lcom/facebook/imagepipeline/request/a;
.source "RoundedCornersPostprocessor.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private c:Lcom/facebook/cache/common/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/common/c;
    .locals 2
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lr1/e;->c:Lcom/facebook/cache/common/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/cache/common/j;

    const-string v1, "RoundedCornersPostprocessor"

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lr1/e;->c:Lcom/facebook/cache/common/c;

    .line 3
    :cond_0
    iget-object v0, p0, Lr1/e;->c:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    invoke-static {p1, v1, v2, v3, v0}, Lcom/facebook/imagepipeline/nativecode/NativeRoundingFilter;->a(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method
