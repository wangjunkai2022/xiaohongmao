.class public Lk7/g;
.super Ljava/lang/Object;
.source "Expo.java"

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
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p7

    mul-double p1, p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double p5, p5, p1

    add-double/2addr p3, p5

    :goto_0
    return-wide p3
.end method

.method public b(DDDD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide p3

    :cond_0
    cmpl-double v0, p1, p7

    if-nez v0, :cond_1

    add-double/2addr p3, p5

    return-wide p3

    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p7, v0

    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, p7

    if-gez v2, :cond_2

    div-double/2addr p5, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double/2addr p1, p7

    mul-double p1, p1, v2

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    :goto_0
    mul-double p5, p5, p1

    add-double/2addr p5, p3

    return-wide p5

    :cond_2
    div-double/2addr p5, v0

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    sub-double/2addr p1, p7

    mul-double p1, p1, v2

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    neg-double p1, p1

    add-double/2addr p1, v0

    goto :goto_0
.end method

.method public c(DDDD)D
    .locals 4

    cmpl-double v0, p1, p7

    if-nez v0, :cond_0

    add-double/2addr p3, p5

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    mul-double p1, p1, v2

    div-double/2addr p1, p7

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    neg-double p1, p1

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, p7

    mul-double p5, p5, p1

    add-double/2addr p3, p5

    :goto_0
    return-wide p3
.end method
