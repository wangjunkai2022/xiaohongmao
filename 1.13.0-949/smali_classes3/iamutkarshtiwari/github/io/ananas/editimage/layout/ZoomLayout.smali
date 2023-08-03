.class public Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;
.super Landroid/widget/FrameLayout;
.source "ZoomLayout.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;
    }
.end annotation


# static fields
.field private static final m:F = 1.0f

.field private static final n:F = 4.0f

.field private static final o:I = 0x12c


# instance fields
.field private a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c:F

    .line 5
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d:F

    .line 6
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->e:F

    .line 7
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    .line 8
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    .line 9
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->h:F

    .line 10
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->i:F

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->j:Z

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->k:J

    .line 13
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->l:Z

    .line 14
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 17
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c:F

    .line 19
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d:F

    .line 20
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->e:F

    .line 21
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    .line 22
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    .line 23
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->h:F

    .line 24
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->i:F

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->j:Z

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->k:J

    .line 27
    iput-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->l:Z

    .line 28
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 31
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c:F

    .line 33
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d:F

    .line 34
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->e:F

    .line 35
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    .line 36
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    .line 37
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->h:F

    .line 38
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->i:F

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->j:Z

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->k:J

    .line 41
    iput-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->l:Z

    .line 42
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->e(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private c()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 2
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/layout/a;

    invoke-direct {p1, p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic e(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x6

    if-eq p2, v3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    goto/16 :goto_1

    .line 3
    :cond_1
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->c:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    goto/16 :goto_1

    .line 4
    :cond_2
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    sget-object v3, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->b:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    if-ne p2, v3, :cond_8

    .line 5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d:F

    sub-float/2addr p2, v3

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    .line 6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->e:F

    sub-float/2addr p2, v3

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    goto :goto_1

    .line 7
    :cond_3
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    .line 8
    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->h:F

    .line 9
    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->i:F

    goto :goto_1

    .line 10
    :cond_4
    iget-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->j:Z

    if-eqz p2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->k:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long p2, v3, v5

    if-gtz p2, :cond_6

    .line 11
    iget-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->l:Z

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 12
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    .line 13
    iput-boolean v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->l:Z

    goto :goto_0

    .line 14
    :cond_5
    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    mul-float p2, p2, v0

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    .line 15
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->l:Z

    .line 16
    :goto_0
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->c:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    .line 17
    iput-boolean v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->j:Z

    goto :goto_1

    .line 18
    :cond_6
    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_7

    .line 19
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->b:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    .line 20
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->h:F

    sub-float/2addr p2, v3

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->d:F

    .line 21
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->i:F

    sub-float/2addr p2, v3

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->e:F

    .line 22
    :cond_7
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->j:Z

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->k:J

    .line 24
    :cond_8
    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->b:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    if-ne p1, p2, :cond_9

    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    cmpl-float p2, p2, v1

    if-gez p2, :cond_a

    :cond_9
    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->c:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    if-ne p1, p2, :cond_b

    .line 26
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 27
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    div-float/2addr p1, v0

    mul-float p1, p1, p3

    .line 28
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    div-float/2addr p3, v1

    sub-float/2addr p2, p3

    div-float/2addr p2, v0

    mul-float p2, p2, v1

    .line 29
    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    neg-float v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->f:F

    .line 30
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    neg-float p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->g:F

    .line 31
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b()V

    :cond_b
    return v2
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 2
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c:F

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    mul-float v0, v0, p1

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    .line 5
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    .line 6
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c:F

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public setChildScale(F)V
    .locals 1

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->b:F

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
