.class public Lcom/shizhefei/view/indicator/slidebar/d;
.super Landroid/view/View;
.source "SpringBar.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/slidebar/ScrollBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/slidebar/d$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field private d:Lcom/shizhefei/view/indicator/slidebar/d$b;

.field private e:Lcom/shizhefei/view/indicator/slidebar/d$b;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3eb33333    # 0.35f

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shizhefei/view/indicator/slidebar/d;-><init>(Landroid/content/Context;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFF)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 3
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->i:F

    const p1, 0x3f19999a    # 0.6f

    .line 4
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 5
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->k:F

    .line 6
    iput p3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->l:F

    .line 7
    iput p4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->m:F

    .line 8
    new-instance p1, Lcom/shizhefei/view/indicator/slidebar/d$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/shizhefei/view/indicator/slidebar/d$b;-><init>(Lcom/shizhefei/view/indicator/slidebar/d;Lcom/shizhefei/view/indicator/slidebar/d$a;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    .line 9
    new-instance p1, Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-direct {p1, p0, p3}, Lcom/shizhefei/view/indicator/slidebar/d$b;-><init>(Lcom/shizhefei/view/indicator/slidebar/d;Lcom/shizhefei/view/indicator/slidebar/d$a;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    .line 10
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->b:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 12
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->b:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private c(F)F
    .locals 4

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->a:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    int-to-float p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private d(I)F
    .locals 0

    iget p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->a:I

    int-to-float p1, p1

    return p1
.end method

.method private e()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/d$b;->a()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v2

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v3

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/d$b;->a()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v3

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v4

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 3
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->a()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v4

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v5

    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-float v2, v2

    .line 4
    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/d$b;->a()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v5

    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v6

    iget-object v7, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v7}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 5
    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v4

    sub-float/2addr v4, v0

    .line 6
    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v5

    add-float/2addr v5, v1

    .line 7
    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v6

    add-float/2addr v6, v0

    .line 8
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v0

    sub-float/2addr v0, v1

    .line 9
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v1

    sub-float/2addr v1, v2

    .line 10
    iget-object v7, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v7}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v7

    add-float/2addr v7, v3

    .line 11
    iget-object v8, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v8}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v8

    add-float/2addr v8, v2

    .line 12
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v2

    sub-float/2addr v2, v3

    .line 13
    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v3

    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v9}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v9

    add-float/2addr v3, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    .line 14
    iget-object v10, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v10}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v10

    iget-object v11, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v11}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v9

    .line 15
    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 16
    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    invoke-virtual {v9, v3, v10, v1, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 18
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v10, v6, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 20
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 1
    div-int/lit8 v0, p1, 0x2

    .line 2
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/slidebar/d$b;->f(F)V

    .line 3
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/slidebar/d$b;->f(F)V

    .line 4
    iget v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->l:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->f:F

    .line 5
    iget v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->m:F

    mul-float v0, v0, v2

    iput v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->g:F

    sub-float/2addr v1, v0

    .line 6
    iput v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->h:F

    return p1
.end method

.method public b(I)I
    .locals 2

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->a:I

    .line 2
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->n:F

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0, v1}, Lcom/shizhefei/view/indicator/slidebar/d;->onPageScrolled(IFI)V

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getSlideView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/slidebar/d;->e()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v1

    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->a()F

    move-result v2

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/d$b;->b()F

    move-result v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/d$b;->c()F

    move-result v1

    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->a()F

    move-result v2

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 9

    .line 1
    iput p2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->n:F

    const/4 p3, 0x0

    const v0, 0x3ca3d70a    # 0.02f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_5

    const v0, 0x3f7ae148    # 0.98f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    iget v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->g:F

    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/slidebar/d$b;->d(F)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    sub-float v3, p2, v0

    div-float/2addr v3, v0

    iget v4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->h:F

    mul-float v3, v3, v4

    iget v4, p0, Lcom/shizhefei/view/indicator/slidebar/d;->g:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/slidebar/d$b;->d(F)V

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    div-float v0, p2, v0

    sub-float v0, v2, v0

    iget v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->h:F

    mul-float v0, v0, v3

    iget v3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->g:F

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/slidebar/d$b;->d(F)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    iget v1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->g:F

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/slidebar/d$b;->d(F)V

    .line 6
    :goto_1
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->j:F

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v5, p2, v0

    if-lez v5, :cond_3

    sub-float p3, p2, v0

    sub-float v0, v2, v0

    div-float/2addr p3, v0

    .line 7
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->i:F

    mul-float p3, p3, v0

    mul-float p3, p3, v1

    sub-float/2addr p3, v0

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->i:F

    float-to-double v7, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->i:F

    float-to-double v7, p3

    .line 8
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    div-double/2addr v5, v7

    double-to-float p3, v5

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-direct {p0, p2}, Lcom/shizhefei/view/indicator/slidebar/d;->c(F)F

    move-result v5

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/d;->d(I)F

    move-result v6

    mul-float p3, p3, v6

    sub-float/2addr v5, p3

    invoke-virtual {v0, v5}, Lcom/shizhefei/view/indicator/slidebar/d$b;->e(F)V

    .line 10
    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->k:F

    cmpg-float v0, p2, p3

    if-gez v0, :cond_4

    div-float p3, p2, p3

    .line 11
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d;->i:F

    mul-float p3, p3, v0

    mul-float p3, p3, v1

    sub-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->i:F

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    add-double/2addr v0, v5

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->i:F

    float-to-double v5, p3

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    div-double/2addr v0, v5

    double-to-float v2, v0

    .line 13
    :cond_4
    iget-object p3, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-direct {p0, p2}, Lcom/shizhefei/view/indicator/slidebar/d;->c(F)F

    move-result p2

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/d;->d(I)F

    move-result p1

    mul-float v2, v2, p1

    sub-float/2addr p2, v2

    invoke-virtual {p3, p2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->e(F)V

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-direct {p0, p3}, Lcom/shizhefei/view/indicator/slidebar/d;->c(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->e(F)V

    .line 15
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    invoke-direct {p0, p3}, Lcom/shizhefei/view/indicator/slidebar/d;->c(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->e(F)V

    .line 16
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->e:Lcom/shizhefei/view/indicator/slidebar/d$b;

    iget p2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->f:F

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->d(F)V

    .line 17
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d;->d:Lcom/shizhefei/view/indicator/slidebar/d$b;

    iget p2, p0, Lcom/shizhefei/view/indicator/slidebar/d;->f:F

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/d$b;->d(F)V

    :goto_3
    return-void
.end method
