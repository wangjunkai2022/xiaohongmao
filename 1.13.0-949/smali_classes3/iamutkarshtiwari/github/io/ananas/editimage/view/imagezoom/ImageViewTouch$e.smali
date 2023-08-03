.class public Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->b:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->a:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->b:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v1, v2

    .line 3
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->b:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    iget-boolean v3, v2, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->K:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4
    iget-boolean v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->a:Z

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v4, v2, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->g:Z

    .line 6
    invoke-virtual {v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->b:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    .line 7
    invoke-virtual {v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 9
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->b:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 10
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 11
    invoke-virtual {v1, v0, v2, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->H(FFF)V

    .line 12
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->b:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    iput v4, p1, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->G:I

    .line 13
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return v4

    :cond_0
    if-nez v3, :cond_1

    .line 14
    iput-boolean v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;->a:Z

    :cond_1
    return v4
.end method
