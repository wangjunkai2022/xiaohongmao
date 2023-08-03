.class public Lcom/tangxiaolv/telegramgallery/Components/b;
.super Landroid/view/View;
.source "CheckBox.java"


# static fields
.field private static p:Landroid/graphics/Paint; = null

.field private static q:Landroid/graphics/Paint; = null

.field private static r:Landroid/graphics/Paint; = null

.field private static s:Landroid/graphics/Paint; = null

.field private static t:Landroid/graphics/Paint; = null

.field private static final u:F = 0.2f


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Canvas;

.field private e:Landroid/graphics/Canvas;

.field private f:Z

.field private g:F

.field private h:Landroid/animation/ObjectAnimator;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->i:Z

    const/16 v0, 0x16

    .line 20
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->l:I

    const v0, -0xa13dbb

    .line 21
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->n:I

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->a:Landroid/graphics/Paint;

    .line 23
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->a:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/b;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->p:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->p:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->t:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 7
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->t:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 8
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->t:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->q:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->q:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->r:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->r:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->r:Landroid/graphics/Paint;

    const/high16 p2, 0x41e00000    # 28.0f

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Components/b;->r:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->i:Z

    const/4 v0, 0x1

    new-array v0, v0, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 2
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->k:Z

    return v0
.end method

.method public d(IZZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->o:I

    .line 2
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->k:Z

    if-ne p2, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->k:Z

    .line 4
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->j:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 5
    invoke-direct {p0, p2}, Lcom/tangxiaolv/telegramgallery/Components/b;->a(Z)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/b;->b()V

    if-eqz p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/b;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public e(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->k:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->k:Z

    .line 3
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->j:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/b;->a(Z)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/b;->b()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/b;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->g:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->j:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->j:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 3
    :cond_1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Components/b;->r:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->l:I

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 6
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->g:F

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v3

    if-ltz v5, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    div-float v3, v2, v3

    .line 7
    :goto_0
    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->i:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    sub-float v2, v4, v2

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x3e4ccccd    # 0.2f

    cmpg-float v7, v2, v6

    if-gez v7, :cond_4

    .line 8
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v2

    div-float/2addr v7, v6

    :goto_2
    sub-float/2addr v0, v7

    goto :goto_3

    :cond_4
    const v7, 0x3ecccccd    # 0.4f

    cmpg-float v7, v2, v7

    if-gez v7, :cond_5

    .line 9
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v2, v6

    mul-float v8, v8, v2

    div-float/2addr v8, v6

    sub-float/2addr v7, v8

    goto :goto_2

    .line 10
    :cond_5
    :goto_3
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->f:Z

    if-eqz v2, :cond_6

    .line 11
    sget-object v2, Lcom/tangxiaolv/telegramgallery/Components/b;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x44000000    # 512.0f

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 13
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v0, v7

    sget-object v8, Lcom/tangxiaolv/telegramgallery/Components/b;->p:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 16
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->a:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 18
    :cond_6
    sget-object v2, Lcom/tangxiaolv/telegramgallery/Components/b;->p:Landroid/graphics/Paint;

    iget v6, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->n:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->d:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sget-object v8, Lcom/tangxiaolv/telegramgallery/Components/b;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v7, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 20
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->d:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v4, v3

    mul-float v0, v0, v4

    sget-object v3, Lcom/tangxiaolv/telegramgallery/Components/b;->q:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 21
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 22
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->k:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 25
    sget-object v2, Lcom/tangxiaolv/telegramgallery/Components/b;->t:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    sget-object v2, Lcom/tangxiaolv/telegramgallery/Components/b;->t:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 27
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v3, v2

    int-to-float v1, v1

    sub-float v2, v1, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 28
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->o:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tangxiaolv/telegramgallery/Components/b;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public setCheckOffset(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->m:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->n:I

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->f:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->g:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->l:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->l:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->l:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->b:Landroid/graphics/Bitmap;

    .line 4
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->b:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->d:Landroid/graphics/Canvas;

    .line 5
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->l:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->l:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->c:Landroid/graphics/Bitmap;

    .line 6
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->c:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/b;->e:Landroid/graphics/Canvas;

    :cond_0
    return-void
.end method
