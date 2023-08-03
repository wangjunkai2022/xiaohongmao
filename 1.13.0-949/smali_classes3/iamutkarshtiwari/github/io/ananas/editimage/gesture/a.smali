.class public Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;
.super Ljava/lang/Object;
.source "MultiTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;
    }
.end annotation


# static fields
.field private static final v:I = -0x1


# instance fields
.field private final a:Landroid/view/GestureDetector;

.field b:Z

.field c:Z

.field d:Z

.field e:F

.field f:F

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;

.field private m:[I

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Li7/e;

.field private s:Li7/b;

.field t:Z

.field private u:Li7/f;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Li7/f;Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->b:Z

    .line 3
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->c:Z

    .line 4
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->d:Z

    const v1, 0x3e4ccccd    # 0.2f

    .line 5
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->e:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 6
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->f:F

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 8
    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->m:[I

    .line 9
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->t:Z

    .line 10
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)V

    invoke-direct {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;-><init>(Li7/g;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->l:Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;

    .line 11
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$a;)V

    invoke-direct {v0, p5, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a:Landroid/view/GestureDetector;

    .line 12
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->o:Landroid/view/View;

    .line 13
    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->q:Landroid/widget/RelativeLayout;

    .line 14
    iput-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->p:Landroid/widget/ImageView;

    .line 15
    iput-object p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->u:Li7/f;

    if-eqz p1, :cond_0

    .line 16
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p4

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {p2, p3, p4, p5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->n:Landroid/graphics/Rect;

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->n:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method static synthetic a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)Li7/b;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->s:Li7/b;

    return-object p0
.end method

.method private b(F)F
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    add-float/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private c(Landroid/view/View;FF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p3

    aget v1, v0, v1

    add-float/2addr p3, v1

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p3

    aget p2, v0, p2

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private d(Landroid/view/View;FF)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    new-array p2, v0, [F

    .line 6
    fill-array-data p2, :array_1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p3, 0x0

    aget v0, p2, p3

    aget p3, v1, p3

    sub-float/2addr v0, p3

    const/4 p3, 0x1

    aget p2, p2, p3

    aget p3, v1, p3

    sub-float/2addr p2, p3

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p3

    sub-float/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p3

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private e(Landroid/view/View;Z)V
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->r:Li7/e;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->u:Li7/f;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1}, Li7/f;->k()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Li7/f;->M()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->u:Li7/f;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p1}, Li7/f;->k()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1}, Li7/f;->M()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->u:Li7/f;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 10
    invoke-interface {p1}, Li7/f;->k()V

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {p1}, Li7/f;->M()V

    :cond_5
    :goto_0
    return-void
.end method

.method private f(Landroid/view/View;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->m:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->n:Landroid/graphics/Rect;

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->m:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private i(Li7/e;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->r:Li7/e;

    return-void
.end method


# virtual methods
.method g(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;)V
    .locals 3

    .line 1
    iget v0, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->e:F

    iget v1, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->f:F

    invoke-direct {p0, p1, v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->d(Landroid/view/View;FF)V

    .line 2
    iget v0, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->a:F

    iget v1, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->b:F

    invoke-direct {p0, p1, v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->c(Landroid/view/View;FF)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->c:F

    mul-float v0, v0, v1

    .line 4
    iget v1, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->g:F

    iget v2, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->h:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iget p2, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->d:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->b(F)F

    move-result p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public h(Li7/b;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->s:Li7/b;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->l:Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;

    invoke-virtual {v0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->o(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    and-int/2addr v4, v0

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    const/4 v6, -0x1

    if-eq v4, v1, :cond_5

    const/4 v2, 0x2

    if-eq v4, v2, :cond_4

    const/4 p1, 0x3

    if-eq v4, p1, :cond_3

    const/4 p1, 0x6

    if-eq v4, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    const p1, 0xff00

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 9
    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g:I

    if-ne v0, v2, :cond_9

    if-nez p1, :cond_2

    const/4 v5, 0x1

    .line 10
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->h:F

    .line 11
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->i:F

    .line 12
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g:I

    goto/16 :goto_1

    .line 13
    :cond_3
    iput v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g:I

    goto/16 :goto_1

    .line 14
    :cond_4
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v6, :cond_9

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 17
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->l:Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->n()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->h:F

    sub-float/2addr v2, v0

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->i:F

    sub-float/2addr p2, v0

    invoke-direct {p0, p1, v2, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->c(Landroid/view/View;FF)V

    goto :goto_1

    .line 19
    :cond_5
    iput v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g:I

    .line 20
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->o:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-direct {p0, p2, v2, v3}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->f(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 21
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->r:Li7/e;

    if-eqz p2, :cond_7

    .line 22
    invoke-interface {p2, p1}, Li7/e;->F(Landroid/view/View;)V

    goto :goto_0

    .line 23
    :cond_6
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->p:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v2, v3}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->f(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 25
    :cond_7
    :goto_0
    invoke-direct {p0, p1, v5}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->e(Landroid/view/View;Z)V

    goto :goto_1

    .line 26
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->h:F

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->i:F

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->j:F

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->k:F

    .line 30
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g:I

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 32
    invoke-direct {p0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->e(Landroid/view/View;Z)V

    :cond_9
    :goto_1
    return v1
.end method
