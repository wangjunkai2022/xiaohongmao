.class public Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;
.super Landroid/graphics/PointF;
.source "Vector2D.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-void
.end method


# virtual methods
.method normalize()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v0

    iget v1, p0, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2
    iget v1, p0, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 3
    iget v1, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method
