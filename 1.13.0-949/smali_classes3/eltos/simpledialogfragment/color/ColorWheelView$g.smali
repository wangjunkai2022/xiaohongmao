.class Leltos/simpledialogfragment/color/ColorWheelView$g;
.super Leltos/simpledialogfragment/color/ColorWheelView$f;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/color/ColorWheelView$g$a;
    }
.end annotation


# instance fields
.field private t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

.field private u:Landroid/graphics/Paint;

.field final synthetic v:Leltos/simpledialogfragment/color/ColorWheelView;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/ColorWheelView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    .line 2
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$f;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;)V

    const/16 p1, 0x9

    new-array p1, p1, [Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->u:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->u:Landroid/graphics/Paint;

    .line 6
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->u:Landroid/graphics/Paint;

    const/16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 9
    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;-><init>(Leltos/simpledialogfragment/color/ColorWheelView$g;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l(FFFZ)Landroid/graphics/PointF;
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    float-to-double v3, v2

    .line 1
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/high16 v9, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v9

    if-nez v2, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    float-to-double v9, v0

    float-to-double v11, v3

    .line 3
    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    float-to-double v13, v6

    div-double/2addr v11, v13

    add-double/2addr v11, v7

    div-double/2addr v9, v11

    double-to-float v9, v9

    :goto_0
    if-nez v2, :cond_1

    mul-float v0, v0, v6

    goto :goto_1

    :cond_1
    float-to-double v10, v9

    float-to-double v12, v3

    .line 4
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double v10, v10, v12

    double-to-float v0, v10

    :goto_1
    mul-float v9, v9, v9

    mul-float v0, v0, v0

    add-float/2addr v9, v0

    float-to-double v9, v9

    .line 5
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v0, v9

    if-eqz p4, :cond_2

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    float-to-double v9, v3

    add-double/2addr v4, v9

    goto :goto_2

    :cond_2
    const-wide v4, 0x4062c00000000000L    # 150.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    float-to-double v9, v3

    sub-double/2addr v4, v9

    :goto_2
    double-to-float v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    float-to-double v9, v2

    .line 7
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v4

    sub-double/2addr v11, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double v4, v4, v6

    double-to-float v2, v4

    add-float/2addr v0, v2

    float-to-double v4, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 8
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-double v1, v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz p4, :cond_3

    add-float/2addr v3, v1

    goto :goto_3

    :cond_3
    sub-float/2addr v3, v1

    .line 10
    :goto_3
    new-instance v1, Landroid/graphics/PointF;

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v0, v2

    invoke-direct {v1, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method private m(Leltos/simpledialogfragment/color/ColorWheelView$g$a;FF)V
    .locals 10

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F

    move-result p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x42f00000    # 120.0f

    cmpg-float v4, p2, v3

    if-gez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/high16 v4, 0x43700000    # 240.0f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    .line 2
    :goto_0
    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-static {v5, p2, v3}, Leltos/simpledialogfragment/color/ColorWheelView;->a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F

    move-result p2

    .line 3
    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v3, v5

    .line 4
    invoke-direct {p0, v3, v5, p2, v0}, Leltos/simpledialogfragment/color/ColorWheelView$g;->l(FFFZ)Landroid/graphics/PointF;

    move-result-object v0

    add-float/2addr p3, p2

    .line 5
    invoke-direct {p0, v3, v5, p3, v2}, Leltos/simpledialogfragment/color/ColorWheelView$g;->l(FFFZ)Landroid/graphics/PointF;

    move-result-object v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v5, v3

    float-to-double v5, v5

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr p2, v5

    sub-float/2addr p3, v5

    .line 7
    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v6, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 8
    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 9
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float v8, v7, v3

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v9, v6, v3

    add-float/2addr v7, v3

    add-float/2addr v6, v3

    invoke-direct {v5, v8, v9, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-static {p1, v3}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->b(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 11
    invoke-static {p1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v3

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    invoke-static {p1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v0

    sub-float v3, p3, p2

    invoke-virtual {v0, v5, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 13
    invoke-static {p1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    invoke-static {p1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    mul-int/lit8 v4, v4, 0x78

    add-int/lit8 v2, v4, -0x5a

    int-to-float v2, v2

    .line 16
    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v5, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 17
    invoke-static {p1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 18
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr p2, v2

    int-to-float v3, v4

    add-float/2addr p2, v3

    invoke-static {v0, p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F

    move-result p2

    iput p2, p1, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e:F

    .line 19
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    sub-float/2addr p3, v2

    add-float/2addr p3, v3

    invoke-static {p2, p3, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F

    move-result p2

    iput p2, p1, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->f:F

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$f;->b(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-static {v3}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->c(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v4

    invoke-static {v3}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->f(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(ZZ)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/color/ColorWheelView$f;->i(ZZ)V

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v2, v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->s(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 3
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v3, v4}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;->s(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 4
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v4, v5}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v1, v4}, Leltos/simpledialogfragment/color/ColorWheelView$b;->s(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 5
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v1, 0x3

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v6, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v5, v6}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-virtual {v1, v5}, Leltos/simpledialogfragment/color/ColorWheelView$b;->q(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 6
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v1, 0x4

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v6, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v5, v6}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v1, v5}, Leltos/simpledialogfragment/color/ColorWheelView$b;->q(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 7
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v6, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v5, v6}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    const/high16 v5, 0x43700000    # 240.0f

    invoke-virtual {v1, v5}, Leltos/simpledialogfragment/color/ColorWheelView$b;->q(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 8
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v1, 0x6

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v6, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v5, v6}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    invoke-virtual {v1, v4}, Leltos/simpledialogfragment/color/ColorWheelView$b;->u(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 9
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/4 v1, 0x7

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v4, v5}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    invoke-virtual {v1, v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;->u(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 10
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    const/16 v1, 0x8

    aget-object p2, p2, v1

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, v3, v4}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    invoke-virtual {v1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->u(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-static {p2, v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 12
    invoke-static {v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->f(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {v1}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->d(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-virtual {v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->o()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 4

    .line 1
    invoke-super {p0}, Leltos/simpledialogfragment/color/ColorWheelView$f;->j()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x40f00000    # 7.5f

    mul-int/lit8 v3, v0, 0x23

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 3
    div-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0xf

    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 4
    aget-object v1, v1, v0

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-direct {p0, v1, v3, v2}, Leltos/simpledialogfragment/color/ColorWheelView$g;->m(Leltos/simpledialogfragment/color/ColorWheelView$g$a;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 6

    .line 1
    invoke-super {p0}, Leltos/simpledialogfragment/color/ColorWheelView$f;->k()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    iget v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 5
    invoke-static {v4}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v5

    invoke-static {v4}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->c(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method n(Landroid/graphics/PointF;)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 8

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2
    iget v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->b:F

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->c:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    return-object v4

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$f;->c(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v4

    .line 4
    :cond_1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->a:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    float-to-double v5, v1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    float-to-double v1, p1

    .line 5
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    iget p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$f;->d:F

    float-to-double v5, p1

    sub-double/2addr v1, v5

    double-to-float p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, p1, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F

    move-result p1

    .line 7
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->t:[Leltos/simpledialogfragment/color/ColorWheelView$g$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 8
    iget-object v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    iget v6, v3, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e:F

    iget v7, v3, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->f:F

    invoke-static {v5, v6, p1, v7}, Leltos/simpledialogfragment/color/ColorWheelView;->b(Leltos/simpledialogfragment/color/ColorWheelView;FFF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-static {v3}, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->d(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method
