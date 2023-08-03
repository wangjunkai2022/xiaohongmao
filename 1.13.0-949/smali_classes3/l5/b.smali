.class public Ll5/b;
.super Ljava/lang/Object;
.source "HeartUtil.java"


# static fields
.field private static a:Landroid/graphics/Path;

.field private static b:Landroid/graphics/Path;

.field private static c:Landroid/graphics/Paint;

.field private static d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ll5/b;->a:Landroid/graphics/Path;

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ll5/b;->b:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ll5/b;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    sget-object v0, Ll5/b;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ll5/b;->d:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    sget-object v0, Ll5/b;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    sget-object v0, Ll5/b;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    sget-object v0, Ll5/b;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Canvas;FI)V
    .locals 12

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    sget-object v0, Ll5/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    sget-object p2, Ll5/b;->a:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 4
    sget-object p2, Ll5/b;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 7
    sget-object v1, Ll5/b;->b:Landroid/graphics/Path;

    int-to-float p2, p2

    int-to-float v0, v0

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v2, v2, p1

    sub-float v2, v0, v2

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const-wide/16 v1, 0x0

    :goto_0
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v5, v5, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v5, v5, v3

    double-to-float v3, v5

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, v1, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v4

    sub-double/2addr v6, v10

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v8

    sub-double/2addr v6, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v4, v4, v1

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v6, v4

    double-to-float v4, v6

    mul-float v3, v3, p1

    mul-float v4, v4, p1

    sub-float v3, p2, v3

    sub-float v4, v0, v4

    .line 11
    sget-object v5, Ll5/b;->b:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v1, v3

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Ll5/b;->b:Landroid/graphics/Path;

    sget-object p2, Ll5/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    sget-object p1, Ll5/b;->b:Landroid/graphics/Path;

    sget-object p2, Ll5/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
