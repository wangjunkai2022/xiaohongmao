.class public Liamutkarshtiwari/github/io/ananas/editimage/gesture/e;
.super Ljava/lang/Object;
.source "VectorAngle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;->normalize()V

    .line 2
    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;->normalize()V

    .line 3
    iget v0, p1, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget p1, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    iget p0, p0, Landroid/graphics/PointF;->x:F

    float-to-double p0, p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide p0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, p0

    double-to-float p0, v0

    return p0
.end method
