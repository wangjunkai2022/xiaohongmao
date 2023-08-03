.class Leltos/simpledialogfragment/color/ColorWheelView$d;
.super Ljava/lang/Object;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/PointF;

.field private c:F

.field private d:F

.field private e:Leltos/simpledialogfragment/color/ColorWheelView$b;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private h:[F

.field final synthetic i:Leltos/simpledialogfragment/color/ColorWheelView;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/ColorWheelView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->i:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->b:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->c:F

    .line 5
    iput v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->d:F

    .line 6
    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    const/high16 v1, -0x1000000

    invoke-direct {v0, p1, v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 7
    fill-array-data v0, :array_0

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->h:[F

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->f:Landroid/graphics/Paint;

    .line 9
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->g:Landroid/graphics/Paint;

    .line 11
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-static {p1, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->c(Leltos/simpledialogfragment/color/ColorWheelView;I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private f()V
    .locals 10

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->g:Landroid/graphics/Paint;

    new-instance v7, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->i:Leltos/simpledialogfragment/color/ColorWheelView;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v4

    const/16 v3, 0xff

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;IFFF)V

    invoke-virtual {v7}, Leltos/simpledialogfragment/color/ColorWheelView$b;->m()Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v1

    invoke-virtual {v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x4

    new-array v2, v2, [F

    .line 4
    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->b:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->c:F

    iget v6, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->d:F

    const/high16 v7, 0x40400000    # 3.0f

    div-float v8, v6, v7

    sub-float v8, v5, v8

    mul-float v8, v8, v0

    add-float/2addr v8, v4

    const/4 v9, 0x0

    aput v8, v2, v9

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v8, v6, v7

    sub-float v8, v5, v8

    mul-float v8, v8, v1

    add-float/2addr v8, v3

    const/4 v9, 0x1

    aput v8, v2, v9

    div-float v8, v6, v7

    add-float/2addr v8, v5

    mul-float v8, v8, v0

    add-float/2addr v4, v8

    const/4 v0, 0x2

    aput v4, v2, v0

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float v5, v5, v1

    add-float/2addr v3, v5

    const/4 v0, 0x3

    aput v3, v2, v0

    iput-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->h:[F

    return-void
.end method

.method private g()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->b:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v0, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3
    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->a:Landroid/graphics/RectF;

    iget-object v8, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->f:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->h:[F

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method b(Landroid/graphics/PointF;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->b:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2
    iget p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->c:F

    iget v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->d:F

    sub-float v3, p1, v2

    float-to-double v3, v3

    cmpg-double v5, v3, v0

    if-gtz v5, :cond_0

    add-float/2addr p1, v2

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(Landroid/graphics/PointF;)F
    .locals 5

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->i:Leltos/simpledialogfragment/color/ColorWheelView;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->b:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    float-to-double v1, p1

    .line 2
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L    # 90.0

    add-double/2addr v1, v3

    double-to-float p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, p1, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F

    move-result p1

    return p1
.end method

.method d(Leltos/simpledialogfragment/color/ColorWheelView$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v0

    invoke-virtual {p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 3
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorWheelView$d;->f()V

    .line 4
    :cond_0
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->e:Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-void
.end method

.method e(Landroid/graphics/PointF;FF)V
    .locals 3

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->b:Landroid/graphics/PointF;

    .line 2
    iput p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->c:F

    .line 3
    iput p3, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->d:F

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float v1, v0, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float v2, p1, p2

    add-float/2addr v0, p2

    add-float/2addr p1, p2

    invoke-direct {p3, v1, v2, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Leltos/simpledialogfragment/color/ColorWheelView$d;->a:Landroid/graphics/RectF;

    .line 6
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorWheelView$d;->g()V

    .line 7
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorWheelView$d;->f()V

    return-void
.end method
