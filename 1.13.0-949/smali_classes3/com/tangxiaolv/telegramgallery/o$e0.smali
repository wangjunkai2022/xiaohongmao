.class Lcom/tangxiaolv/telegramgallery/o$e0;
.super Ljava/lang/Object;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e0"
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:F

.field private e:J

.field private f:F

.field private g:Landroid/graphics/RectF;

.field private h:I

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field final synthetic o:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->o:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->b:F

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->c:F

    .line 5
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->d:F

    .line 6
    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->e:J

    .line 7
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->g:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->h:I

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->i:Landroid/view/View;

    const/high16 p2, 0x42800000    # 64.0f

    .line 11
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->j:I

    const/4 p2, -0x2

    .line 12
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->k:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 13
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->l:F

    .line 14
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->m:F

    .line 15
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->n:F

    .line 16
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->a()Landroid/view/animation/DecelerateInterpolator;

    move-result-object p2

    if-nez p2, :cond_0

    .line 17
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/o;->b(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    .line 18
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/o;->e(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 19
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->c()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->c()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 21
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->c()Landroid/graphics/Paint;

    move-result-object p2

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->c()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    :cond_0
    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->i:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/o$e0;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->h:I

    return p0
.end method

.method private g()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->a:J

    sub-long v2, v0, v2

    .line 3
    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->a:J

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->b:F

    const-wide/16 v5, 0x168

    mul-long v5, v5, v2

    long-to-float v5, v5

    const v6, 0x453b8000    # 3000.0f

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->b:F

    .line 6
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->c:F

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->d:F

    sub-float v6, v0, v5

    cmpl-float v7, v6, v4

    if-lez v7, :cond_1

    .line 7
    iget-wide v7, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->e:J

    add-long/2addr v7, v2

    iput-wide v7, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->e:J

    const-wide/16 v9, 0x12c

    cmp-long v11, v7, v9

    if-ltz v11, :cond_0

    .line 8
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    .line 9
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->d:F

    const-wide/16 v5, 0x0

    .line 10
    iput-wide v5, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->e:J

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->a()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    iget-wide v7, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->e:J

    long-to-float v7, v7

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    .line 12
    invoke-virtual {v0, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 14
    :cond_2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->k:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    .line 15
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->l:F

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->l:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3

    .line 16
    iput v4, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->l:F

    .line 17
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->k:I

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->n:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->o:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/o;->q(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->o:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/o;->B(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 4
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->h:I

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->k:I

    if-eqz v3, :cond_0

    if-ne v3, v4, :cond_2

    :cond_0
    const/high16 v3, 0x40800000    # 4.0f

    .line 5
    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    .line 6
    iget v5, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->k:I

    const/4 v6, -0x2

    const/high16 v7, 0x437f0000    # 255.0f

    if-eq v5, v6, :cond_1

    .line 7
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->c()Landroid/graphics/Paint;

    move-result-object v5

    iget v6, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->l:F

    mul-float v6, v6, v7

    iget v7, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->m:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->c()Landroid/graphics/Paint;

    move-result-object v5

    iget v6, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->m:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->g:Landroid/graphics/RectF;

    add-int v6, v1, v4

    int-to-float v6, v6

    add-int v7, v2, v4

    int-to-float v7, v7

    add-int/2addr v1, v0

    sub-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v2, v0

    sub-int/2addr v2, v4

    int-to-float v0, v2

    invoke-virtual {v5, v6, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->g:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->b:F

    add-float v10, v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    mul-float v1, v1, v0

    .line 11
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v12, 0x0

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->c()Landroid/graphics/Paint;

    move-result-object v13

    move-object v8, p1

    .line 12
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 13
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o$e0;->g()V

    :cond_2
    return-void
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->m:F

    return-void
.end method

.method public d(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->a:J

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->h:I

    if-eq p2, p1, :cond_0

    .line 3
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->k:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->l:F

    goto :goto_0

    :cond_0
    const/4 p2, -0x2

    .line 5
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->k:I

    .line 6
    :goto_0
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->h:I

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public e(FZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->d:F

    goto :goto_0

    .line 3
    :cond_0
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->f:F

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->d:F

    .line 4
    :goto_0
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->c:F

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->e:J

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o$e0;->n:F

    return-void
.end method
