.class public Lcom/facebook/imagepipeline/platform/a;
.super Lcom/facebook/imagepipeline/platform/b;
.source "ArtDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
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


# virtual methods
.method public g(IILandroid/graphics/BitmapFactory$Options;)I
    .locals 0
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
    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap$Config;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/facebook/imageutils/a;->f(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    return p1
.end method
