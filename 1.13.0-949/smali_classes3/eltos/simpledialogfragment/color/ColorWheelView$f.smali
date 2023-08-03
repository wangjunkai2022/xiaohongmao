.class Leltos/simpledialogfragment/color/ColorWheelView$f;
.super Ljava/lang/Object;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:Landroid/graphics/PointF;

.field b:F

.field c:F

.field d:F

.field e:Leltos/simpledialogfragment/color/ColorWheelView$b;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field private k:Landroid/graphics/PointF;

.field private l:Landroid/graphics/PointF;

.field private m:Landroid/graphics/PointF;

.field protected n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private q:F

.field private r:Landroid/graphics/PointF;

.field final synthetic s:Leltos/simpledialogfragment/color/ColorWheelView;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/ColorWheelView;)V
    .locals 4

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->s:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    .line 4
    iput v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    .line 5
    iput v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    .line 6
    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    const/high16 v2, -0x1000000

    invoke-direct {v1, p1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    iput-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->f:Z

    .line 8
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->g:Z

    .line 9
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->h:Z

    .line 10
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->i:Z

    .line 11
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->j:Z

    .line 12
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    .line 13
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    .line 14
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    .line 15
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->n:Landroid/graphics/Path;

    .line 16
    iput v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->q:F

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->r:Landroid/graphics/PointF;

    const/4 v0, 0x4

    .line 18
    invoke-static {p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->c(Leltos/simpledialogfragment/color/ColorWheelView;I)F

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->q:F

    .line 19
    invoke-static {p1, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->c(Leltos/simpledialogfragment/color/ColorWheelView;I)F

    move-result v0

    .line 20
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->o:Landroid/graphics/Paint;

    .line 21
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->p:Landroid/graphics/Paint;

    .line 23
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private h(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p3

    mul-float v0, v0, v2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p3

    mul-float p2, p2, p1

    sub-float/2addr v0, p2

    return v0
.end method


# virtual methods
.method a(Landroid/graphics/PointF;)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    iget p1, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v2

    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v6, v5, v1

    mul-float v3, v3, v6

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v6, v0, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v2

    mul-float v6, v6, v7

    sub-float/2addr v3, v6

    sub-float/2addr p1, v2

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    sub-float v7, v5, v6

    mul-float p1, p1, v7

    sub-float v7, v0, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v2

    mul-float v7, v7, v4

    sub-float/2addr p1, v7

    div-float/2addr v3, p1

    sub-float/2addr v0, v1

    sub-float/2addr v6, v5

    mul-float v6, v6, v3

    add-float/2addr v6, v5

    sub-float/2addr v6, v1

    div-float/2addr v0, v6

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    mul-float v3, v3, p1

    .line 3
    :cond_0
    new-instance p1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->s:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {p1, v1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    .line 4
    invoke-virtual {p1, v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;->s(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 5
    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->u(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-object p1
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->n:Landroid/graphics/Path;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->r:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->q:F

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method c(Landroid/graphics/PointF;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v1}, Leltos/simpledialogfragment/color/ColorWheelView$f;->h(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v4, v5}, Leltos/simpledialogfragment/color/ColorWheelView$f;->h(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 3
    :goto_1
    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget-object v6, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v5, v6}, Leltos/simpledialogfragment/color/ColorWheelView$f;->h(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-ne v0, v4, :cond_3

    if-ne v4, p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$f;->j()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->g:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$f;->k()V

    .line 5
    :cond_2
    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->g:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->j:Z

    if-eqz v2, :cond_8

    :cond_3
    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 6
    iget-boolean v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->g:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->i:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v0, :cond_7

    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->g:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->h:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_2
    invoke-virtual {p0, v3, v2}, Leltos/simpledialogfragment/color/ColorWheelView$f;->i(ZZ)V

    .line 7
    :cond_8
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->f:Z

    .line 8
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->g:Z

    .line 9
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->h:Z

    .line 10
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->i:Z

    .line 11
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->j:Z

    return-void
.end method

.method public e(Leltos/simpledialogfragment/color/ColorWheelView$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->h(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->j:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->i:Z

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v2, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->i(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z

    move-result v2

    xor-int/2addr v2, v1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->i:Z

    .line 4
    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->h:Z

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v2

    invoke-virtual {p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->h:Z

    .line 5
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-void
.end method

.method f(Landroid/graphics/PointF;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->f:Z

    .line 3
    :cond_1
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    .line 4
    iput p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    .line 5
    iput p3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    return-void
.end method

.method g(F)V
    .locals 1

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->g:Z

    .line 3
    :cond_0
    iput p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    return-void
.end method

.method protected i(ZZ)V
    .locals 19

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    .line 1
    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v1, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v5

    div-float v5, v1, v10

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v6, 0x0

    iget-object v7, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 2
    invoke-virtual {v7}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v7

    aput v7, v1, v6

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v1, v6

    const/4 v6, 0x2

    aput v7, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 3
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    div-float v12, v3, v10

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float v13, v2, v10

    iget-object v2, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    const/high16 v16, -0x1000000

    const/16 v17, -0x1

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 4
    new-instance v2, Landroid/graphics/ComposeShader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v9, v1, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 5
    iget-object v1, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v1, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->p:Landroid/graphics/Paint;

    iget-object v2, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->m()Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v2

    invoke-virtual {v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v2

    iget-object v5, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    iget-object v3, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 8
    invoke-virtual {v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;->r()F

    move-result v3

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    iget-object v3, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;->t()F

    move-result v3

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    iget-object v3, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v5, v4, v3

    iget-object v6, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v4

    iget-object v4, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 9
    invoke-virtual {v4}, Leltos/simpledialogfragment/color/ColorWheelView$b;->r()F

    move-result v4

    mul-float v6, v6, v4

    add-float/2addr v5, v6

    iget-object v4, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v4}, Leltos/simpledialogfragment/color/ColorWheelView$b;->t()F

    move-result v4

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Leltos/simpledialogfragment/color/ColorWheelView$f;->r:Landroid/graphics/PointF;

    :cond_1
    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 7

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v3, v5

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    sub-float/2addr v5, v4

    float-to-double v4, v5

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v3, v5

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    add-float/2addr v5, v4

    float-to-double v4, v5

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 7
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    const/high16 v4, 0x43160000    # 150.0f

    add-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v3, v5

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    add-float/2addr v5, v4

    float-to-double v4, v5

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->n:Landroid/graphics/Path;

    .line 11
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->k:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->n:Landroid/graphics/Path;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->l:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->n:Landroid/graphics/Path;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->m:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method
