.class public Lk7/l;
.super Ljava/lang/Object;
.source "Sine.java"

# interfaces
.implements Lk7/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DDDD)D
    .locals 2

    neg-double v0, p5

    div-double/2addr p1, p7

    const-wide p7, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double p1, p1, p7

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    add-double/2addr v0, p5

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public b(DDDD)D
    .locals 2

    neg-double p5, p5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p5, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    div-double/2addr p1, p7

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p7

    mul-double p5, p5, p1

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public c(DDDD)D
    .locals 0

    div-double/2addr p1, p7

    const-wide p7, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double p1, p1, p7

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p5, p5, p1

    add-double/2addr p5, p3

    return-wide p5
.end method
