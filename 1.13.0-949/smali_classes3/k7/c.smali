.class public Lk7/c;
.super Ljava/lang/Object;
.source "Circ.java"

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
    .locals 0

    neg-double p5, p5

    div-double/2addr p1, p7

    mul-double p1, p1, p1

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    sub-double p1, p7, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    sub-double/2addr p1, p7

    mul-double p5, p5, p1

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public b(DDDD)D
    .locals 3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p7, v0

    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, p7

    if-gez v2, :cond_0

    neg-double p5, p5

    div-double/2addr p5, v0

    mul-double p1, p1, p1

    sub-double p1, p7, p1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    sub-double/2addr p1, p7

    :goto_0
    mul-double p5, p5, p1

    add-double/2addr p5, p3

    return-wide p5

    :cond_0
    div-double/2addr p5, v0

    sub-double/2addr p1, v0

    mul-double p1, p1, p1

    sub-double p1, p7, p1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    add-double/2addr p1, p7

    goto :goto_0
.end method

.method public c(DDDD)D
    .locals 0

    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p7

    mul-double p1, p1, p1

    sub-double/2addr p7, p1

    invoke-static {p7, p8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    mul-double p5, p5, p1

    add-double/2addr p5, p3

    return-wide p5
.end method
