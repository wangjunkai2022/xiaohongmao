.class public Lk7/a;
.super Ljava/lang/Object;
.source "Back.java"

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
    .locals 11

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lk7/a;->d(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public b(DDDD)D
    .locals 11

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lk7/a;->e(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public c(DDDD)D
    .locals 11

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lk7/a;->f(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public d(DDDDD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p9, v0

    if-nez v2, :cond_0

    const-wide p9, 0x3ffb39abf3387161L    # 1.70158

    :cond_0
    div-double/2addr p1, p7

    mul-double p5, p5, p1

    mul-double p5, p5, p1

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    add-double/2addr p7, p9

    mul-double p7, p7, p1

    sub-double/2addr p7, p9

    mul-double p5, p5, p7

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public e(DDDDD)D
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p9, v0

    if-nez v2, :cond_0

    const-wide v0, 0x3ffb39abf3387161L    # 1.70158

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p9

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, p7, v2

    div-double v4, p1, v4

    const-wide v6, 0x3ff8666666666666L    # 1.525

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v4, v8

    if-gez v10, :cond_1

    div-double v2, p5, v2

    mul-double v10, v4, v4

    mul-double v0, v0, v6

    add-double/2addr v8, v0

    mul-double v8, v8, v4

    sub-double/2addr v8, v0

    mul-double v10, v10, v8

    mul-double v2, v2, v10

    add-double v2, v2, p3

    return-wide v2

    :cond_1
    div-double v10, p5, v2

    sub-double/2addr v4, v2

    mul-double v12, v4, v4

    mul-double v0, v0, v6

    add-double/2addr v8, v0

    mul-double v8, v8, v4

    add-double/2addr v8, v0

    mul-double v12, v12, v8

    add-double/2addr v12, v2

    mul-double v10, v10, v12

    add-double v10, v10, p3

    return-wide v10
.end method

.method public f(DDDDD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p9, v0

    if-nez v2, :cond_0

    const-wide p9, 0x3ffb39abf3387161L    # 1.70158

    :cond_0
    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p7

    mul-double v0, p1, p1

    add-double v2, p9, p7

    mul-double v2, v2, p1

    add-double/2addr v2, p9

    mul-double v0, v0, v2

    add-double/2addr v0, p7

    mul-double p5, p5, v0

    add-double/2addr p5, p3

    return-wide p5
.end method
