.class public Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleTap. double tap enabled? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    iget-boolean v1, v1, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageViewTouchBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    iget-boolean v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->J:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->g:Z

    .line 4
    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 5
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->M(FF)F

    move-result v0

    .line 6
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v1

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    .line 7
    invoke-virtual {v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 8
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 9
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v0, v2, v3, v4}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->I(FFFF)V

    .line 10
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 11
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->K(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->K(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;

    move-result-object v0

    invoke-interface {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;->onDoubleTap()V

    .line 13
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->N(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->C:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performLongClick()Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->O(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->J(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->J(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;

    move-result-object v0

    invoke-interface {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;->a()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
