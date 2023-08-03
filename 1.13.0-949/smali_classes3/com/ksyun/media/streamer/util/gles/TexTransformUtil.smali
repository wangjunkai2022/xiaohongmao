.class public Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;
.super Ljava/lang/Object;
.source "TexTransformUtil.java"


# static fields
.field public static final COORDS_COUNT:I = 0x4

.field public static final COORDS_PER_VERTEX:I = 0x2

.field public static final COORDS_STRIDE:I = 0x8

.field public static final TEX_COORDS:[F

.field public static final TEX_COORDS_BUF:Ljava/nio/FloatBuffer;

.field public static final TEX_MIRROR_COORDS:[F

.field public static final TEX_MIRROR_COORDS_BUF:Ljava/nio/FloatBuffer;

.field public static final VERTEX_COORDS:[F

.field public static final VERTEX_COORDS_BUF:Ljava/nio/FloatBuffer;

.field public static final VERTEX_MIRROR_COORDS:[F

.field public static final VERTEX_MIRROR_COORDS_BUF:Ljava/nio/FloatBuffer;

.field protected static final a:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_COORDS:[F

    .line 2
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_COORDS_BUF:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_1

    sput-object v1, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_MIRROR_COORDS:[F

    .line 4
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_MIRROR_COORDS_BUF:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_2

    sput-object v1, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->VERTEX_COORDS:[F

    .line 6
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->VERTEX_COORDS_BUF:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 7
    fill-array-data v0, :array_3

    sput-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->VERTEX_MIRROR_COORDS:[F

    .line 8
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->VERTEX_MIRROR_COORDS_BUF:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private static a(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    :goto_0
    return p1
.end method

.method public static calCrop(FF)Landroid/graphics/PointF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v3, p0, p1

    if-lez v3, :cond_0

    div-float/2addr p1, p0

    sub-float/2addr v1, p1

    .line 2
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 3
    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 4
    :cond_0
    iput v2, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr p0, p1

    sub-float/2addr v1, p0

    .line 5
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 6
    :goto_0
    iget p0, v0, Landroid/graphics/PointF;->x:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/PointF;->x:F

    .line 7
    iget p0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public static calTransformMatrix([FFFI)V
    .locals 9

    .line 1
    rem-int/lit16 p3, p3, 0x168

    .line 2
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    neg-float p2, p2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-static {p0, v0, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    if-eqz p3, :cond_4

    const/16 p1, 0x5a

    if-eq p3, p1, :cond_3

    const/16 p1, 0xb4

    if-eq p3, p1, :cond_2

    const/16 p1, 0x10e

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0, v0, v1, v2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p0, v0, v2, v2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {p0, v0, v2, v1, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {p0, v0, v1, v1, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_0
    const/4 v4, 0x0

    int-to-float v5, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p0

    .line 10
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public static getCoordsPerVertex()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getCropTexCoordsBuf(FF)Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf(FFIZZ)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getHFlipTexCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v0, v1, v2, v1}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf(FFIZZ)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getRotateTexCoordsBuf(I)Ljava/nio/FloatBuffer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, p0, v1, v1}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf(FFIZZ)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getTexCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1
    sget-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_COORDS_BUF:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static getTexCoordsBuf(FFFFIZZ)Ljava/nio/FloatBuffer;
    .locals 16

    move/from16 v0, p4

    .line 2
    sget-object v1, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_COORDS:[F

    array-length v2, v1

    new-array v3, v2, [F

    .line 3
    array-length v4, v1

    new-array v4, v4, [F

    .line 4
    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length v5, v1

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    rem-int/lit16 v1, v0, 0xb4

    if-eqz v1, :cond_0

    move/from16 v9, p0

    move/from16 v8, p1

    move/from16 v10, p2

    move/from16 v7, p3

    move/from16 v5, p5

    move/from16 v1, p6

    goto :goto_0

    :cond_0
    move/from16 v7, p0

    move/from16 v10, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v1, p5

    move/from16 v5, p6

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x2

    cmpl-float v15, p0, v11

    if-nez v15, :cond_1

    cmpl-float v15, p1, v11

    if-nez v15, :cond_1

    cmpl-float v15, p2, v11

    if-nez v15, :cond_1

    cmpl-float v11, p3, v11

    if-eqz v11, :cond_2

    .line 7
    :cond_1
    aput v7, v3, v6

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v8, v11, v8

    .line 8
    aput v8, v3, v14

    .line 9
    aput v7, v3, v13

    .line 10
    aput v8, v3, v12

    const/4 v7, 0x1

    .line 11
    aput v9, v3, v7

    const/4 v7, 0x3

    .line 12
    aput v9, v3, v7

    const/4 v7, 0x5

    sub-float/2addr v11, v10

    .line 13
    aput v11, v3, v7

    const/4 v7, 0x7

    .line 14
    aput v11, v3, v7

    :cond_2
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 15
    aget v7, v3, v1

    invoke-static {v7}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->a(F)F

    move-result v7

    aput v7, v3, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    add-int/lit8 v5, v1, 0x1

    .line 16
    aget v7, v3, v5

    invoke-static {v7}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->a(F)F

    move-result v7

    aput v7, v3, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_5

    .line 17
    invoke-static {v3, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-static {v3, v14, v4, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-static {v3, v12, v4, v14, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-static {v3, v6, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-static {v3, v13, v4, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 22
    :cond_6
    invoke-static {v3, v12, v4, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {v3, v13, v4, v14, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    invoke-static {v3, v14, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v3, v6, v4, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 26
    :cond_7
    invoke-static {v3, v13, v4, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-static {v3, v6, v4, v14, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    invoke-static {v3, v12, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-static {v3, v14, v4, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :goto_3
    invoke-static {v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getTexCoordsBuf(FFIZZ)Ljava/nio/FloatBuffer;
    .locals 9

    .line 31
    sget-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_COORDS:[F

    array-length v1, v0

    new-array v2, v1, [F

    .line 32
    array-length v3, v0

    new-array v3, v3, [F

    .line 33
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    rem-int/lit16 v0, p2, 0xb4

    if-eqz v0, :cond_0

    move v7, p1

    move p1, p0

    move p0, v7

    move v8, p4

    move p4, p3

    move p3, v8

    :cond_0
    const/4 v0, 0x0

    cmpl-float v4, p0, v0

    if-nez v4, :cond_1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 36
    aget v4, v2, v0

    invoke-static {v4, p0}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->a(FF)F

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    .line 37
    aget v6, v2, v4

    invoke-static {v6, p1}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->a(FF)F

    move-result v6

    aput v6, v2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_3

    .line 38
    aget p1, v2, p0

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->a(F)F

    move-result p1

    aput p1, v2, p0

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    const/4 p0, 0x0

    :goto_2
    if-ge p0, v1, :cond_4

    add-int/lit8 p1, p0, 0x1

    .line 39
    aget p3, v2, p1

    invoke-static {p3}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->a(F)F

    move-result p3

    aput p3, v2, p1

    add-int/lit8 p0, p0, 0x2

    goto :goto_2

    :cond_4
    const/16 p0, 0x5a

    const/4 p1, 0x6

    const/4 p3, 0x4

    const/4 p4, 0x2

    if-eq p2, p0, :cond_7

    const/16 p0, 0xb4

    if-eq p2, p0, :cond_6

    const/16 p0, 0x10e

    if-eq p2, p0, :cond_5

    .line 40
    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 41
    :cond_5
    invoke-static {v2, p4, v3, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-static {v2, p1, v3, p4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v2, v5, v3, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-static {v2, p3, v3, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 45
    :cond_6
    invoke-static {v2, p1, v3, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    invoke-static {v2, p3, v3, p4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    invoke-static {v2, p4, v3, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-static {v2, v5, v3, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 49
    :cond_7
    invoke-static {v2, p3, v3, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-static {v2, v5, v3, p4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-static {v2, p1, v3, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    invoke-static {v2, p4, v3, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :goto_3
    invoke-static {v3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getTexMirrorCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 1

    sget-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->TEX_MIRROR_COORDS_BUF:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static getVFlipTexCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v0, v1, v1, v2}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf(FFIZZ)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getVertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    sget-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->VERTEX_COORDS_BUF:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static getVertexCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 1

    sget-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->VERTEX_COORDS_BUF:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static getVertexCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static getVertexMirrorCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 1

    sget-object v0, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->VERTEX_MIRROR_COORDS_BUF:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static getVertexStride()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
