.class public Lcom/facebook/imagepipeline/platform/c;
.super Lcom/facebook/imagepipeline/platform/b;
.source "OreoDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/d;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/e;ILandroidx/core/util/Pools$SynchronizedPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapPool",
            "maxNumThreads",
            "decodeBuffers"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/platform/b;-><init>(Lcom/facebook/imagepipeline/memory/e;ILandroidx/core/util/Pools$SynchronizedPool;)V

    return-void
.end method

.method private static i(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public g(IILandroid/graphics/BitmapFactory$Options;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "width",
            "height",
            "options"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/facebook/imagepipeline/platform/c;->i(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x8

    goto :goto_1

    :cond_0
    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/facebook/imageutils/a;->f(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    :goto_1
    return p1
.end method
