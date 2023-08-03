.class public Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;
.super Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$b;,
        Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;,
        Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;,
        Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;,
        Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;
    }
.end annotation


# static fields
.field static final P:F = 1.0f


# instance fields
.field protected C:Landroid/view/ScaleGestureDetector;

.field protected D:Landroid/view/GestureDetector;

.field protected E:I

.field protected F:F

.field protected G:I

.field protected H:Landroid/view/GestureDetector$OnGestureListener;

.field protected I:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field private M:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;

.field private N:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;

.field private O:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->J:Z

    .line 3
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->K:Z

    .line 4
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->L:Z

    return-void
.end method

.method static synthetic J(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->N:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;

    return-object p0
.end method

.method static synthetic K(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->M:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;

    return-object p0
.end method


# virtual methods
.method public L(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->w:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->E(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 5
    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    const/4 v5, 0x1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    if-gez p1, :cond_2

    int-to-float p1, v1

    sub-float/2addr v3, p1

    .line 6
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 7
    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v3

    if-lez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method protected M(FF)F
    .locals 2

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->F:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    add-float/2addr v1, p1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    add-float/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    .line 3
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->G:I

    return p2

    .line 4
    :cond_1
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->G:I

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public N(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->L:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->O:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$b;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$b;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->C:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    return v1

    .line 7
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x44480000    # 800.0f

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_6

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-lez p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    .line 10
    :cond_6
    :goto_0
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->g:Z

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    div-float/2addr p2, p1

    const-wide p3, 0x4072c00000000000L    # 300.0

    .line 11
    invoke-virtual {p0, v0, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->B(FFD)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method public O(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->L:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->C:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getScale()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    return v1

    .line 5
    :cond_4
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->g:Z

    neg-float p1, p3

    neg-float p2, p4

    .line 6
    invoke-virtual {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->A(FF)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public P()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v1

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x43480000    # 200.0f

    .line 5
    invoke-virtual {p0, v0, v1, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->I(FFFF)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->F:F

    return-void
.end method

.method public getDoubleTapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->J:Z

    return v0
.end method

.method protected getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method protected getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$e;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->C:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->C:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->D:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getScale()F

    move-result p1

    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result p1

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {p0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->G(FF)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected p()V
    .locals 5

    .line 1
    invoke-super {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->p()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->E:I

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->H:Landroid/view/GestureDetector$OnGestureListener;

    .line 4
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->I:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 5
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->I:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->C:Landroid/view/ScaleGestureDetector;

    .line 6
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->H:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->D:Landroid/view/GestureDetector;

    .line 7
    iput v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->G:I

    return-void
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->J:Z

    return-void
.end method

.method public setDoubleTapListener(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->M:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$c;

    return-void
.end method

.method public setFlingListener(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$b;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->O:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$b;

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->K:Z

    .line 2
    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->setDoubleTapEnabled(Z)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->L:Z

    return-void
.end method

.method public setSingleTapListener(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->N:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$d;

    return-void
.end method

.method protected u(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p0, p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->G(FF)V

    :cond_0
    return-void
.end method
