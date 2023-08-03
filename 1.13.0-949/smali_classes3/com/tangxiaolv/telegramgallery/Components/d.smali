.class public Lcom/tangxiaolv/telegramgallery/Components/d;
.super Landroid/widget/FrameLayout;
.source "PhotoCropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Components/d$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/RectF;

.field private x:Landroid/graphics/RectF;

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    const/high16 v0, 0x44160000    # 600.0f

    .line 3
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->j:F

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->k:F

    .line 7
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 8
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    .line 10
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    .line 11
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->b:Landroid/graphics/Paint;

    const v1, -0x4d000001

    .line 13
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    .line 19
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    .line 21
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/d;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->y:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Components/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->y:Ljava/lang/Runnable;

    return-object p1
.end method

.method private d(IIII)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    invoke-interface {v0}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    .line 3
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 4
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 8
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->i:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 9
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->i:I

    rem-int/lit16 v3, v2, 0x168

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, p2

    int-to-float p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, p2

    int-to-float p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p4, p1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p4, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p3
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->y:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->y:Ljava/lang/Runnable;

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->w:Landroid/graphics/RectF;

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->x:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    div-float/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    div-float/2addr v2, v3

    cmpl-float v4, v0, v2

    if-lez v4, :cond_0

    move v0, v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v5, v0, v4

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    div-float v0, v6, v4

    goto :goto_0

    :cond_1
    cmpg-float v4, v0, v2

    if-gez v4, :cond_2

    .line 4
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v5, v0, v4

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    div-float v0, v2, v4

    :cond_2
    :goto_0
    mul-float v1, v1, v0

    mul-float v3, v3, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    sub-int/2addr v8, v5

    int-to-float v5, v8

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 7
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v8, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v9, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    iget v10, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->w:Landroid/graphics/RectF;

    .line 8
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4, v5, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->x:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v2, v0, v2

    mul-float v1, v1, v2

    add-float/2addr v4, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    sub-float/2addr v1, v3

    mul-float v1, v1, v0

    add-float/2addr v4, v1

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v5, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v5, v1

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v2, v2, v0

    invoke-interface {v1, v4, v5, v2, p1}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    return-void
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    return v1

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    .line 4
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/16 v11, 0x8

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-nez v5, :cond_b

    .line 6
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    int-to-float v4, v4

    sub-float v14, v5, v4

    cmpg-float v14, v14, v2

    if-gez v14, :cond_1

    add-float v14, v5, v4

    cmpl-float v14, v14, v2

    if-lez v14, :cond_1

    iget v14, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v15, v14, v4

    cmpg-float v15, v15, v3

    if-gez v15, :cond_1

    add-float/2addr v14, v4

    cmpl-float v14, v14, v3

    if-lez v14, :cond_1

    .line 7
    iput v13, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto/16 :goto_0

    :cond_1
    sub-float v14, v5, v4

    .line 8
    iget v15, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v14, v15

    cmpg-float v14, v14, v2

    if-gez v14, :cond_2

    add-float v14, v5, v4

    add-float/2addr v14, v15

    cmpl-float v14, v14, v2

    if-lez v14, :cond_2

    iget v14, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v16, v14, v4

    cmpg-float v16, v16, v3

    if-gez v16, :cond_2

    add-float/2addr v14, v4

    cmpl-float v14, v14, v3

    if-lez v14, :cond_2

    .line 9
    iput v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto/16 :goto_0

    :cond_2
    sub-float v10, v5, v4

    cmpg-float v10, v10, v2

    if-gez v10, :cond_3

    add-float v10, v5, v4

    cmpl-float v10, v10, v2

    if-lez v10, :cond_3

    .line 10
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v14, v10, v4

    iget v13, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v14, v13

    cmpg-float v14, v14, v3

    if-gez v14, :cond_3

    add-float/2addr v10, v4

    add-float/2addr v10, v13

    cmpl-float v10, v10, v3

    if-lez v10, :cond_3

    .line 11
    iput v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto/16 :goto_0

    :cond_3
    sub-float v7, v5, v4

    add-float/2addr v7, v15

    cmpg-float v7, v7, v2

    if-gez v7, :cond_4

    add-float v7, v5, v4

    add-float/2addr v7, v15

    cmpl-float v7, v7, v2

    if-lez v7, :cond_4

    .line 12
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v10, v7, v4

    iget v13, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v10, v13

    cmpg-float v10, v10, v3

    if-gez v10, :cond_4

    add-float/2addr v7, v4

    add-float/2addr v7, v13

    cmpl-float v7, v7, v3

    if-lez v7, :cond_4

    .line 13
    iput v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto/16 :goto_0

    .line 14
    :cond_4
    iget-boolean v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    if-eqz v6, :cond_8

    add-float v6, v5, v4

    cmpg-float v6, v6, v2

    if-gez v6, :cond_5

    sub-float v6, v5, v4

    add-float/2addr v6, v15

    cmpl-float v6, v6, v2

    if-lez v6, :cond_5

    .line 15
    iget v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v7, v6, v4

    cmpg-float v7, v7, v3

    if-gez v7, :cond_5

    add-float/2addr v6, v4

    cmpl-float v6, v6, v3

    if-lez v6, :cond_5

    .line 16
    iput v12, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto :goto_0

    .line 17
    :cond_5
    iget v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float v7, v6, v4

    cmpg-float v7, v7, v3

    if-gez v7, :cond_6

    sub-float v7, v6, v4

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v7, v10

    cmpl-float v7, v7, v3

    if-lez v7, :cond_6

    sub-float v7, v5, v4

    add-float/2addr v7, v15

    cmpg-float v7, v7, v2

    if-gez v7, :cond_6

    add-float v7, v5, v4

    add-float/2addr v7, v15

    cmpl-float v7, v7, v2

    if-lez v7, :cond_6

    .line 18
    iput v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto :goto_0

    :cond_6
    add-float v7, v6, v4

    cmpg-float v7, v7, v3

    if-gez v7, :cond_7

    sub-float v7, v6, v4

    .line 19
    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v7, v9

    cmpl-float v7, v7, v3

    if-lez v7, :cond_7

    sub-float v7, v5, v4

    cmpg-float v7, v7, v2

    if-gez v7, :cond_7

    add-float v7, v5, v4

    cmpl-float v7, v7, v2

    if-lez v7, :cond_7

    .line 20
    iput v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto :goto_0

    :cond_7
    add-float v7, v5, v4

    cmpg-float v7, v7, v2

    if-gez v7, :cond_9

    sub-float/2addr v5, v4

    add-float/2addr v5, v15

    cmpl-float v5, v5, v2

    if-lez v5, :cond_9

    sub-float v5, v6, v4

    .line 21
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v5, v7

    cmpg-float v5, v5, v3

    if-gez v5, :cond_9

    add-float/2addr v6, v4

    add-float/2addr v6, v7

    cmpl-float v4, v6, v3

    if-lez v4, :cond_9

    .line 22
    iput v11, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    goto :goto_0

    .line 23
    :cond_8
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    .line 24
    :cond_9
    :goto_0
    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    if-eqz v4, :cond_a

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/Components/d;->c()V

    const/4 v4, 0x1

    .line 26
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_a
    const/4 v4, 0x1

    .line 27
    :goto_1
    iput v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->j:F

    .line 28
    iput v3, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->k:F

    goto/16 :goto_a

    :cond_b
    const/4 v4, 0x1

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_c

    .line 30
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    if-eqz v2, :cond_3b

    .line 31
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/Components/d;->i()V

    return v4

    .line 33
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_3b

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    if-eqz v4, :cond_3b

    .line 34
    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->j:F

    sub-float v4, v2, v4

    .line 35
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->k:F

    sub-float v5, v3, v5

    .line 36
    iget v13, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float v13, v13

    iget v14, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v13, v13, v14

    .line 37
    iget v15, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float v15, v15

    mul-float v15, v15, v14

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    const/high16 v17, 0x41e00000    # 28.0f

    invoke-static/range {v17 .. v17}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v18

    sub-int v14, v14, v18

    int-to-float v14, v14

    sub-float/2addr v14, v13

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v14, v18

    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    add-float/2addr v14, v1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v14, v11

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    invoke-static/range {v17 .. v17}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v17

    sub-int v11, v11, v17

    int-to-float v11, v11

    sub-float/2addr v11, v15

    div-float v11, v11, v18

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    add-float/2addr v11, v6

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v11, v1

    add-float/2addr v13, v14

    add-float/2addr v15, v11

    const v1, 0x3f666666    # 0.9f

    const/4 v6, 0x1

    .line 40
    invoke-static {v1, v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->p(FZ)F

    move-result v1

    .line 41
    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    if-eq v8, v6, :cond_2f

    if-ne v8, v12, :cond_d

    goto/16 :goto_6

    :cond_d
    if-eq v8, v10, :cond_24

    if-ne v8, v9, :cond_e

    goto/16 :goto_5

    :cond_e
    if-eq v8, v7, :cond_1a

    const/4 v7, 0x7

    if-ne v8, v7, :cond_f

    goto/16 :goto_4

    :cond_f
    const/4 v7, 0x4

    if-eq v8, v7, :cond_10

    const/16 v7, 0x8

    if-ne v8, v7, :cond_35

    goto :goto_2

    :cond_10
    const/16 v7, 0x8

    :goto_2
    if-eq v8, v7, :cond_12

    .line 42
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v9, v7, v8

    add-float/2addr v9, v4

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    iget v11, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    add-int v12, v10, v11

    int-to-float v12, v12

    cmpl-float v9, v9, v12

    if-lez v9, :cond_11

    add-int/2addr v10, v11

    int-to-float v4, v10

    sub-float/2addr v4, v7

    sub-float/2addr v4, v8

    :cond_11
    add-float v9, v7, v8

    add-float/2addr v9, v4

    cmpl-float v9, v9, v13

    if-lez v9, :cond_12

    .line 43
    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    sub-float/2addr v13, v7

    sub-float/2addr v13, v8

    sub-float/2addr v13, v4

    sub-float/2addr v9, v13

    iput v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    .line 44
    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v11, 0x0

    invoke-interface {v7, v9, v8, v10, v11}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 45
    :cond_12
    iget-boolean v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    if-nez v7, :cond_15

    .line 46
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v8, v5, v7

    add-float/2addr v8, v4

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    add-int v11, v9, v10

    int-to-float v11, v11

    cmpl-float v8, v8, v11

    if-lez v8, :cond_13

    add-int/2addr v9, v10

    int-to-float v4, v9

    sub-float/2addr v4, v5

    sub-float/2addr v4, v7

    :cond_13
    add-float v8, v5, v7

    add-float/2addr v8, v4

    cmpl-float v8, v8, v15

    if-lez v8, :cond_14

    .line 47
    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v15, v5

    sub-float/2addr v15, v7

    sub-float/2addr v15, v4

    sub-float/2addr v8, v15

    iput v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 48
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v10, 0x0

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 49
    :cond_14
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v5, v4

    iput v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 50
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v5, v4

    iput v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    goto :goto_3

    .line 51
    :cond_15
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v9, v7, v8

    add-float/2addr v9, v5

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    iget v11, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    add-int v12, v10, v11

    int-to-float v12, v12

    cmpl-float v9, v9, v12

    if-lez v9, :cond_16

    add-int/2addr v10, v11

    int-to-float v5, v10

    sub-float/2addr v5, v7

    sub-float/2addr v5, v8

    :cond_16
    add-float v9, v7, v8

    add-float/2addr v9, v5

    cmpl-float v9, v9, v15

    if-lez v9, :cond_17

    .line 52
    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v15, v7

    sub-float/2addr v15, v8

    sub-float/2addr v15, v5

    sub-float/2addr v9, v15

    iput v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 53
    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 54
    :cond_17
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_18

    .line 55
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v7, v4

    iput v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 56
    :cond_18
    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v4, v5

    iput v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    .line 57
    :goto_3
    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_19

    .line 58
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 59
    :cond_19
    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_35

    .line 60
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    goto/16 :goto_7

    .line 61
    :cond_1a
    :goto_4
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    sub-float v8, v7, v4

    cmpg-float v8, v8, v1

    if-gez v8, :cond_1b

    sub-float v4, v7, v1

    .line 62
    :cond_1b
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    add-float v8, v7, v4

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    int-to-float v10, v9

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1c

    int-to-float v4, v9

    sub-float/2addr v4, v7

    :cond_1c
    add-float v8, v7, v4

    cmpg-float v8, v8, v14

    if-gez v8, :cond_1d

    .line 63
    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    sub-float/2addr v14, v7

    sub-float/2addr v14, v4

    sub-float/2addr v8, v14

    iput v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    .line 64
    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 65
    :cond_1d
    iget-boolean v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    if-nez v7, :cond_20

    .line 66
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v7, v1, v5

    sub-float/2addr v7, v4

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    add-int v10, v8, v9

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_1e

    add-float v4, v1, v5

    int-to-float v7, v8

    sub-float/2addr v4, v7

    int-to-float v7, v9

    sub-float/2addr v4, v7

    :cond_1e
    add-float v7, v1, v5

    sub-float/2addr v7, v4

    cmpl-float v7, v7, v15

    if-lez v7, :cond_1f

    .line 67
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v15, v1

    sub-float/2addr v15, v5

    add-float/2addr v15, v4

    sub-float/2addr v7, v15

    iput v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 68
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v9, 0x0

    invoke-interface {v1, v5, v7, v8, v9}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 69
    :cond_1f
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 70
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 71
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    goto/16 :goto_7

    .line 72
    :cond_20
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    const/4 v8, 0x7

    if-eq v7, v8, :cond_23

    .line 73
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v9, v7, v8

    add-float/2addr v9, v5

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    iget v11, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    add-int v12, v10, v11

    int-to-float v12, v12

    cmpl-float v9, v9, v12

    if-lez v9, :cond_21

    add-int/2addr v10, v11

    int-to-float v5, v10

    sub-float/2addr v5, v7

    sub-float/2addr v5, v8

    :cond_21
    add-float v9, v7, v8

    add-float/2addr v9, v5

    cmpl-float v9, v9, v15

    if-lez v9, :cond_22

    .line 74
    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v15, v7

    sub-float/2addr v15, v8

    sub-float/2addr v15, v5

    sub-float/2addr v9, v15

    iput v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 75
    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 76
    :cond_22
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v7, v5

    iput v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    cmpg-float v5, v7, v1

    if-gez v5, :cond_23

    .line 77
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    .line 78
    :cond_23
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 79
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    goto/16 :goto_7

    .line 80
    :cond_24
    :goto_5
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v8, v7, v4

    cmpg-float v8, v8, v1

    if-gez v8, :cond_25

    sub-float v4, v7, v1

    neg-float v4, v4

    .line 81
    :cond_25
    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    add-float v10, v8, v7

    add-float/2addr v10, v4

    iget v12, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    iget v14, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    add-int v15, v12, v14

    int-to-float v15, v15

    cmpl-float v10, v10, v15

    if-lez v10, :cond_26

    add-int/2addr v12, v14

    int-to-float v4, v12

    sub-float/2addr v4, v8

    sub-float/2addr v4, v7

    :cond_26
    add-float v10, v8, v7

    add-float/2addr v10, v4

    cmpl-float v10, v10, v13

    if-lez v10, :cond_27

    .line 82
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    sub-float/2addr v13, v8

    sub-float/2addr v13, v7

    sub-float/2addr v13, v4

    sub-float/2addr v10, v13

    iput v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    .line 83
    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    iget v12, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v13, 0x0

    invoke-interface {v7, v10, v8, v12, v13}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 84
    :cond_27
    iget-boolean v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    if-nez v7, :cond_2a

    .line 85
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v5, v1, v4

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    int-to-float v8, v7

    cmpg-float v5, v5, v8

    if-gez v5, :cond_28

    int-to-float v4, v7

    sub-float v4, v1, v4

    :cond_28
    sub-float v5, v1, v4

    cmpg-float v5, v5, v11

    if-gez v5, :cond_29

    .line 86
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v11, v1

    add-float/2addr v11, v4

    sub-float/2addr v5, v11

    iput v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 87
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v9, 0x0

    invoke-interface {v1, v7, v5, v8, v9}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 88
    :cond_29
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 89
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 90
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    goto/16 :goto_7

    .line 91
    :cond_2a
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    if-eq v7, v9, :cond_2e

    .line 92
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    sub-float v8, v7, v5

    cmpg-float v8, v8, v1

    if-gez v8, :cond_2b

    sub-float v5, v7, v1

    .line 93
    :cond_2b
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float v7, v1, v5

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    int-to-float v9, v8

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2c

    int-to-float v5, v8

    sub-float/2addr v5, v1

    :cond_2c
    add-float v7, v1, v5

    cmpg-float v7, v7, v11

    if-gez v7, :cond_2d

    .line 94
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v11, v1

    sub-float/2addr v11, v5

    sub-float/2addr v7, v11

    iput v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 95
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v10, 0x0

    invoke-interface {v1, v8, v7, v9, v10}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 96
    :cond_2d
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float/2addr v1, v5

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 97
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    sub-float/2addr v1, v5

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    .line 98
    :cond_2e
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    goto :goto_7

    :cond_2f
    :goto_6
    if-eq v8, v12, :cond_32

    .line 99
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    sub-float v8, v7, v4

    cmpg-float v8, v8, v1

    if-gez v8, :cond_30

    sub-float v4, v7, v1

    .line 100
    :cond_30
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    add-float v8, v7, v4

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    int-to-float v10, v9

    cmpg-float v8, v8, v10

    if-gez v8, :cond_31

    int-to-float v4, v9

    sub-float/2addr v4, v7

    :cond_31
    add-float v8, v7, v4

    cmpg-float v8, v8, v14

    if-gez v8, :cond_32

    .line 101
    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    sub-float/2addr v14, v7

    sub-float/2addr v14, v4

    sub-float/2addr v8, v14

    iput v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    .line 102
    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v13, 0x0

    invoke-interface {v7, v8, v9, v10, v13}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 103
    :cond_32
    iget-boolean v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    if-nez v7, :cond_36

    .line 104
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float v5, v1, v4

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    int-to-float v8, v7

    cmpg-float v5, v5, v8

    if-gez v5, :cond_33

    int-to-float v4, v7

    sub-float/2addr v4, v1

    :cond_33
    add-float v5, v1, v4

    cmpg-float v5, v5, v11

    if-gez v5, :cond_34

    .line 105
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v11, v1

    sub-float/2addr v11, v4

    sub-float/2addr v5, v11

    iput v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 106
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v9, 0x0

    invoke-interface {v1, v7, v5, v8, v9}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 107
    :cond_34
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 108
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 109
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 110
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    :cond_35
    :goto_7
    const/4 v10, 0x0

    goto :goto_9

    .line 111
    :cond_36
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    sub-float v8, v7, v5

    cmpg-float v8, v8, v1

    if-gez v8, :cond_37

    sub-float v5, v7, v1

    .line 112
    :cond_37
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float v7, v1, v5

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    int-to-float v9, v8

    cmpg-float v7, v7, v9

    if-gez v7, :cond_38

    int-to-float v5, v8

    sub-float/2addr v5, v1

    :cond_38
    add-float v7, v1, v5

    cmpg-float v7, v7, v11

    if-gez v7, :cond_39

    .line 113
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    sub-float/2addr v11, v1

    sub-float/2addr v11, v5

    sub-float/2addr v7, v11

    iput v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    .line 114
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    const/4 v10, 0x0

    invoke-interface {v1, v8, v7, v9, v10}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    goto :goto_8

    :cond_39
    const/4 v10, 0x0

    .line 115
    :goto_8
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    if-eq v1, v12, :cond_3a

    .line 116
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 117
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 118
    :cond_3a
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float/2addr v1, v5

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 119
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    sub-float/2addr v1, v5

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    .line 120
    :goto_9
    iput v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->j:F

    .line 121
    iput v3, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->k:F

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_b

    :cond_3b
    :goto_a
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 123
    :goto_b
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_c

    :cond_3c
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public g(Landroid/graphics/Bitmap;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    const/high16 p1, 0x44160000    # 600.0f

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 3
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->h:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->j:F

    .line 6
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->k:F

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    .line 8
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 9
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 10
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 11
    iput-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    .line 12
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->i:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    invoke-interface {v0}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    .line 3
    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v0, v0, v1

    .line 4
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    add-float/2addr v1, v5

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    sub-int/2addr v6, v3

    int-to-float v3, v6

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    add-float/2addr v3, v4

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 7
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v0

    .line 8
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    .line 9
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    div-float/2addr v3, v0

    .line 10
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    div-float/2addr v0, v2

    .line 11
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->i:I

    rem-int/lit16 v5, v2, 0x168

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_2

    rem-int/lit16 v2, v2, 0x168

    const/16 v5, 0x10e

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 13
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 15
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_1
    int-to-float v6, v2

    mul-float v4, v4, v6

    float-to-int v4, v4

    int-to-float v7, v5

    mul-float v1, v1, v7

    float-to-int v1, v1

    mul-float v3, v3, v6

    float-to-int v3, v3

    mul-float v0, v0, v7

    float-to-int v0, v0

    const/4 v6, 0x0

    if-gez v4, :cond_3

    const/4 v4, 0x0

    :cond_3
    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    add-int v6, v4, v3

    if-le v6, v2, :cond_5

    sub-int v3, v2, v4

    :cond_5
    add-int v2, v1, v0

    if-le v2, v5, :cond_6

    sub-int v0, v5, v1

    .line 16
    :cond_6
    :try_start_0
    invoke-direct {p0, v4, v1, v3, v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->d(IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 19
    :try_start_1
    invoke-direct {p0, v4, v1, v3, v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->d(IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 20
    :catchall_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapX()F
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getBitmapY()F
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getLimitHeight()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitWidth()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitX()F
    .locals 5

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitY()F
    .locals 5

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRectSizeX()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    return v0
.end method

.method public getRectSizeY()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    return v0
.end method

.method public getRectX()F
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRectY()F
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public h(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->r:F

    .line 2
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->s:F

    .line 3
    iput p3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->t:F

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->y:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/d$a;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Components/d$a;-><init>(Lcom/tangxiaolv/telegramgallery/Components/d;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->y:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    .line 3
    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->E(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v11, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v12, v10, v1

    iget-object v13, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->d:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v4, v1, v2

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v7, v1, v2

    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->d:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4
    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v5, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->d:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    .line 6
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v6, v4, v3

    sub-float/2addr v2, v3

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    add-float v7, v2, v4

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget-object v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget v14, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    sub-float v12, v14, v3

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v13, v2, v3

    sub-float/2addr v2, v3

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    add-float v15, v2, v4

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v12, v2, v4

    iget v15, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v13, v15, v3

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v2, v4

    add-float v14, v2, v3

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v12, v2, v4

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-float v13, v5, v3

    add-float/2addr v2, v4

    add-float v14, v2, v3

    sub-float/2addr v5, v3

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    int-to-float v2, v2

    add-float v15, v5, v2

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    sub-float v5, v2, v3

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v6, v2, v4

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v2, v4

    add-float v8, v2, v3

    iget-object v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    sub-float v5, v2, v3

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v6, v4

    sub-float/2addr v2, v3

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    add-float v7, v2, v4

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v2, v4

    add-float v8, v2, v3

    iget-object v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v12, v2, v4

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v13, v2, v4

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v5, v6

    add-float v14, v5, v3

    add-float/2addr v2, v4

    add-float v15, v2, v3

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v12, v2, v4

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v13, v2, v4

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float/2addr v2, v4

    add-float v14, v2, v3

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float/2addr v2, v4

    add-float v15, v2, v3

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x3

    const/high16 v6, 0x40400000    # 3.0f

    if-ge v4, v5, :cond_0

    .line 14
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    div-float v8, v7, v6

    int-to-float v9, v4

    mul-float v8, v8, v9

    add-float/2addr v8, v5

    int-to-float v10, v1

    sub-float v12, v8, v10

    iget v13, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    add-float/2addr v5, v3

    div-float/2addr v7, v6

    mul-float v7, v7, v9

    add-float v14, v5, v7

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v15, v13, v5

    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->e:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    div-float v11, v8, v6

    mul-float v11, v11, v9

    add-float/2addr v11, v7

    sub-float v18, v11, v10

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v19, v5, v10

    div-float/2addr v8, v6

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    add-float v20, v7, v3

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->e:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v5, :cond_1

    .line 16
    iget v3, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    div-float v7, v4, v6

    int-to-float v8, v2

    mul-float v7, v7, v8

    add-float v10, v3, v7

    iget v11, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    int-to-float v7, v1

    add-float/2addr v3, v7

    div-float/2addr v4, v6

    mul-float v4, v4, v8

    add-float v12, v3, v4

    iget v3, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v13, v11, v3

    iget-object v14, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17
    iget v3, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    div-float v10, v9, v6

    mul-float v10, v10, v8

    add-float v17, v4, v10

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v18, v3, v10

    div-float/2addr v9, v6

    mul-float v9, v9, v8

    add-float/2addr v4, v9

    add-float v19, v4, v7

    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->c:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_1
    iget v8, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    add-float v10, v8, v1

    iget v1, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    add-float v11, v9, v1

    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/Components/d;->b:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    const/high16 p2, 0x41e00000    # 28.0f

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p3

    sub-int/2addr p1, p3

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    sub-int/2addr p3, p2

    .line 7
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->i:I

    rem-int/lit16 p4, p2, 0x168

    const/16 p5, 0x5a

    if-eq p4, p5, :cond_3

    rem-int/lit16 p2, p2, 0x168

    const/16 p4, 0x10e

    if-ne p2, p4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    .line 9
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 11
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    :goto_1
    int-to-float p4, p4

    int-to-float p5, p1

    div-float v0, p5, p2

    int-to-float v1, p3

    div-float v2, v1, p4

    cmpl-float v3, v0, v2

    if-lez v3, :cond_4

    mul-float p2, p2, v2

    float-to-double p4, p2

    .line 12
    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p2, p4

    int-to-float p5, p2

    goto :goto_2

    :cond_4
    mul-float p4, p4, v0

    float-to-double v0, p4

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    int-to-float v1, p2

    .line 14
    :goto_2
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    iget p4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    int-to-float p4, p4

    sub-float/2addr p2, p4

    iget p4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float v0, p4

    div-float/2addr p2, v0

    .line 15
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 16
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    int-to-float p4, p4

    div-float/2addr v3, p4

    .line 17
    iget p4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    int-to-float v2, v2

    div-float/2addr p4, v2

    float-to-int p5, p5

    .line 18
    iput p5, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    float-to-int v1, v1

    .line 19
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    sub-int p5, p1, p5

    .line 20
    div-int/lit8 p5, p5, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    add-int/2addr p5, v2

    int-to-double v4, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p5, v4

    iput p5, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    .line 21
    iget p5, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    sub-int p5, p3, p5

    div-int/lit8 p5, p5, 0x2

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    add-int/2addr p5, v2

    int-to-double v4, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p5, v4

    iput p5, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->o:I

    .line 22
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_7

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_7

    .line 23
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->a:Z

    if-eqz p2, :cond_5

    int-to-float p1, p5

    .line 24
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 25
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    int-to-float p1, p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 26
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float p1, p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 27
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float p1, p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    goto :goto_3

    .line 28
    :cond_5
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    iget p4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    if-le p2, p4, :cond_6

    int-to-float p2, p5

    .line 29
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    sub-int/2addr p1, p4

    .line 30
    div-int/lit8 p1, p1, 0x2

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 31
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float p2, p1

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    int-to-float p1, p1

    .line 32
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    goto :goto_3

    .line 33
    :cond_6
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    int-to-float p1, p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    sub-int/2addr p3, p2

    .line 34
    div-int/lit8 p3, p3, 0x2

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    add-int/2addr p3, p1

    int-to-float p1, p3

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 35
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float p2, p1

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    int-to-float p1, p1

    .line 36
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    goto :goto_3

    .line 37
    :cond_7
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->l:I

    int-to-float p3, p1

    mul-float p2, p2, p3

    iget p3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->n:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 38
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->m:I

    int-to-float p3, p2

    mul-float v0, v0, p3

    int-to-float p3, p5

    add-float/2addr v0, p3

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    int-to-float p1, p1

    mul-float v3, v3, p1

    .line 39
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    int-to-float p1, p2

    mul-float p4, p4, p1

    .line 40
    iput p4, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    :goto_3
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->w:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->x:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 5
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->w:Landroid/graphics/RectF;

    .line 7
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->x:Landroid/graphics/RectF;

    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->x:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 9
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    .line 10
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 11
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDelegate(Lcom/tangxiaolv/telegramgallery/Components/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->i:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->p:F

    .line 3
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->q:F

    const/high16 p1, 0x44160000    # 600.0f

    .line 4
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->f:F

    .line 5
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->g:F

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d;->u:Lcom/tangxiaolv/telegramgallery/Components/d$b;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-interface {p1, v0, v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Components/d$b;->b(FFFZ)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
