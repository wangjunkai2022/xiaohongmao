.class public Lcom/qennnsad/aknkaksd/util/d1;
.super Landroid/text/style/ReplacementSpan;
.source "RadiusBackgroundSpan.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/d1;->b:I

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/util/d1;->c:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9

    move-object v0, p0

    move v1, p5

    move-object/from16 v7, p9

    .line 1
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    const-string v2, "#fafafa"

    .line 2
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 3
    iget v3, v0, Lcom/qennnsad/aknkaksd/util/d1;->b:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    new-instance v3, Landroid/graphics/RectF;

    move/from16 v4, p7

    int-to-float v6, v4

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v4, v6

    iget v5, v0, Lcom/qennnsad/aknkaksd/util/d1;->a:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v8

    add-float/2addr v8, v6

    invoke-direct {v3, p5, v4, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    iget v4, v0, Lcom/qennnsad/aknkaksd/util/d1;->c:I

    int-to-float v5, v4

    int-to-float v4, v4

    move-object v8, p1

    invoke-virtual {p1, v3, v5, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v2, v0, Lcom/qennnsad/aknkaksd/util/d1;->c:I

    int-to-float v2, v2

    add-float v5, v1, v2

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iget p2, p0, Lcom/qennnsad/aknkaksd/util/d1;->c:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/d1;->a:I

    return p1
.end method
