.class public Lk7/f;
.super Ljava/lang/Object;
.source "Elastic.java"

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
    .locals 13

    add-double v9, p3, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v11, p7

    invoke-virtual/range {v0 .. v12}, Lk7/f;->d(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public b(DDDD)D
    .locals 13

    add-double v9, p3, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v11, p7

    invoke-virtual/range {v0 .. v12}, Lk7/f;->e(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public c(DDDD)D
    .locals 13

    add-double v9, p3, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v11, p7

    invoke-virtual/range {v0 .. v12}, Lk7/f;->f(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public d(DDDDDD)D
    .locals 16

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide p3

    :cond_0
    div-double v2, p1, p7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    add-double v0, p3, p5

    return-wide v0

    :cond_1
    cmpl-double v6, p11, v0

    if-gtz v6, :cond_2

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double v6, v6, p7

    goto :goto_0

    :cond_2
    move-wide/from16 v6, p11

    :goto_0
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v10, p9, v0

    if-lez v10, :cond_4

    .line 1
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v10, p9, v0

    if-gez v10, :cond_3

    goto :goto_1

    :cond_3
    div-double v0, v6, v8

    div-double v10, p5, p9

    .line 2
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    mul-double v0, v0, v10

    move-wide v10, v0

    move-wide/from16 v0, p9

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double v0, v6, v0

    move-wide v10, v0

    move-wide/from16 v0, p5

    :goto_2
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    sub-double/2addr v2, v4

    mul-double v14, v14, v2

    .line 3
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v0, v0, v4

    mul-double v2, v2, p7

    sub-double/2addr v2, v10

    mul-double v2, v2, v8

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    neg-double v0, v0

    add-double v0, v0, p3

    return-wide v0
.end method

.method public e(DDDDDD)D
    .locals 18

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide p3

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, p7, v2

    div-double v4, p1, v4

    cmpl-double v6, v4, v2

    if-nez v6, :cond_1

    add-double v0, p3, p5

    return-wide v0

    :cond_1
    cmpl-double v6, p11, v0

    if-gtz v6, :cond_2

    const-wide v6, 0x3fdcccccccccccccL    # 0.44999999999999996

    mul-double v6, v6, p7

    goto :goto_0

    :cond_2
    move-wide/from16 v6, p11

    :goto_0
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v10, p9, v0

    if-lez v10, :cond_4

    .line 1
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v10, p9, v0

    if-gez v10, :cond_3

    goto :goto_1

    :cond_3
    div-double v0, v6, v8

    div-double v10, p5, p9

    .line 2
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    mul-double v0, v0, v10

    move-wide v10, v0

    move-wide/from16 v0, p9

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double v0, v6, v0

    move-wide v10, v0

    move-wide/from16 v0, p5

    :goto_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v4, v12

    if-gez v14, :cond_5

    const-wide/high16 v14, -0x4020000000000000L    # -0.5

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    sub-double/2addr v4, v12

    mul-double v12, v4, v16

    .line 3
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    mul-double v4, v4, p7

    sub-double/2addr v4, v10

    mul-double v4, v4, v8

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    mul-double v0, v0, v14

    :goto_3
    add-double v0, v0, p3

    return-wide v0

    :cond_5
    const-wide/high16 v14, -0x3fdc000000000000L    # -10.0

    sub-double/2addr v4, v12

    mul-double v14, v14, v4

    .line 4
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    mul-double v4, v4, p7

    sub-double/2addr v4, v10

    mul-double v4, v4, v8

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    add-double v0, v0, p5

    goto :goto_3
.end method

.method public f(DDDDDD)D
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide p3

    :cond_0
    div-double v2, p1, p7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    add-double v0, p3, p5

    return-wide v0

    :cond_1
    cmpl-double v4, p11, v0

    if-gtz v4, :cond_2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double v4, v4, p7

    goto :goto_0

    :cond_2
    move-wide/from16 v4, p11

    :goto_0
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v8, p9, v0

    if-lez v8, :cond_4

    .line 1
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v8, p9, v0

    if-gez v8, :cond_3

    goto :goto_1

    :cond_3
    div-double v0, v4, v6

    div-double v8, p5, p9

    .line 2
    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    mul-double v0, v0, v8

    move-wide v8, v0

    move-wide/from16 v0, p9

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double v0, v4, v0

    move-wide v8, v0

    move-wide/from16 v0, p5

    :goto_2
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, -0x3fdc000000000000L    # -10.0

    mul-double v12, v12, v2

    .line 3
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v0, v0, v10

    mul-double v2, v2, p7

    sub-double/2addr v2, v8

    mul-double v2, v2, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    add-double v0, v0, p5

    add-double v0, v0, p3

    return-wide v0
.end method
