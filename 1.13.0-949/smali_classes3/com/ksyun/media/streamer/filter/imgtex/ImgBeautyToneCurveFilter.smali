.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautyToneCurveFilter.java"


# static fields
.field public static final TONE_CURVE_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 vTextureCoord;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"


# instance fields
.field private a:[I

.field private b:I

.field private c:[Landroid/graphics/PointF;

.field private d:[Landroid/graphics/PointF;

.field private e:[Landroid/graphics/PointF;

.field private f:[Landroid/graphics/PointF;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 4

    const-string v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, " varying highp vec2 vTextureCoord;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    .line 3
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->k:Z

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, p1

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->c:[Landroid/graphics/PointF;

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->d:[Landroid/graphics/PointF;

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e:[Landroid/graphics/PointF;

    .line 8
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->f:[Landroid/graphics/PointF;

    return-void
.end method

.method private a([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 9
    invoke-direct/range {p0 .. p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->b([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_0
    new-array v4, v2, [D

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 12
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_5

    .line 14
    aget-object v6, v0, v5

    add-int/lit8 v7, v5, 0x1

    .line 15
    aget-object v8, v0, v7

    .line 16
    iget v9, v6, Landroid/graphics/Point;->x:I

    :goto_2
    iget v10, v8, Landroid/graphics/Point;->x:I

    if-ge v9, v10, :cond_4

    .line 17
    iget v11, v6, Landroid/graphics/Point;->x:I

    sub-int v12, v9, v11

    int-to-double v12, v12

    sub-int v14, v10, v11

    int-to-double v14, v14

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    sub-int/2addr v10, v11

    int-to-double v10, v10

    .line 18
    iget v3, v6, Landroid/graphics/Point;->y:I

    move/from16 v16, v2

    int-to-double v2, v3

    mul-double v2, v2, v14

    move-object/from16 v17, v6

    iget v6, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v18, v1

    int-to-double v0, v6

    mul-double v0, v0, v12

    add-double/2addr v2, v0

    mul-double v10, v10, v10

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr v10, v0

    mul-double v0, v14, v14

    mul-double v0, v0, v14

    sub-double/2addr v0, v14

    aget-wide v14, v4, v5

    mul-double v0, v0, v14

    mul-double v14, v12, v12

    mul-double v14, v14, v12

    sub-double/2addr v14, v12

    aget-wide v12, v4, v7

    mul-double v14, v14, v12

    add-double/2addr v0, v14

    mul-double v10, v10, v0

    add-double/2addr v2, v10

    const-wide/16 v0, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v6, v2, v10

    if-lez v6, :cond_2

    move-wide v2, v10

    goto :goto_3

    :cond_2
    cmpg-double v6, v2, v0

    if-gez v6, :cond_3

    move-wide v2, v0

    .line 19
    :cond_3
    :goto_3
    new-instance v0, Landroid/graphics/Point;

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {v0, v9, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    move-object/from16 v6, v17

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    move v5, v7

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p1

    .line 21
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method

.method private a(Ljava/io/InputStream;)S
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->c:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a([Landroid/graphics/PointF;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->d:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->b([Landroid/graphics/PointF;)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->c([Landroid/graphics/PointF;)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->f:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->d([Landroid/graphics/PointF;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->k:Z

    return-void
.end method

.method private a([Landroid/graphics/PointF;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->c:[Landroid/graphics/PointF;

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private b([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v2

    const/4 v3, 0x0

    aput v1, v5, v3

    .line 21
    const-class v6, D

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 22
    new-array v6, v1, [D

    .line 23
    aget-object v7, v5, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v2

    .line 24
    aget-object v7, v5, v3

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v3

    .line 25
    aget-object v7, v5, v3

    aput-wide v10, v7, v4

    const/4 v7, 0x1

    :goto_0
    add-int/lit8 v12, v1, -0x1

    if-ge v7, v12, :cond_1

    add-int/lit8 v12, v7, -0x1

    .line 26
    aget-object v12, v0, v12

    .line 27
    aget-object v13, v0, v7

    add-int/lit8 v14, v7, 0x1

    .line 28
    aget-object v15, v0, v14

    .line 29
    aget-object v16, v5, v7

    iget v8, v13, Landroid/graphics/Point;->x:I

    iget v9, v12, Landroid/graphics/Point;->x:I

    sub-int v10, v8, v9

    int-to-double v10, v10

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    div-double v10, v10, v17

    aput-wide v10, v16, v3

    .line 30
    aget-object v10, v5, v7

    iget v11, v15, Landroid/graphics/Point;->x:I

    sub-int v3, v11, v9

    move-object/from16 v19, v5

    int-to-double v4, v3

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    div-double v4, v4, v20

    aput-wide v4, v10, v2

    .line 31
    aget-object v3, v19, v7

    sub-int v4, v11, v8

    int-to-double v4, v4

    div-double v4, v4, v17

    const/4 v10, 0x2

    aput-wide v4, v3, v10

    .line 32
    iget v3, v15, Landroid/graphics/Point;->y:I

    iget v4, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-double v2, v3

    sub-int/2addr v11, v8

    int-to-double v10, v11

    div-double/2addr v2, v10

    iget v10, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v10

    int-to-double v10, v4

    sub-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v10, v8

    sub-double/2addr v2, v10

    aput-wide v2, v6, v7

    move v7, v14

    move-object/from16 v5, v19

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v19, v5

    move-wide v2, v10

    const/4 v4, 0x0

    .line 33
    aput-wide v2, v6, v4

    .line 34
    aput-wide v2, v6, v12

    .line 35
    aget-object v0, v19, v12

    const/4 v5, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v0, v5

    .line 36
    aget-object v0, v19, v12

    aput-wide v2, v0, v4

    .line 37
    aget-object v0, v19, v12

    const/4 v7, 0x2

    aput-wide v2, v0, v7

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 38
    aget-object v2, v19, v0

    aget-wide v7, v2, v4

    add-int/lit8 v2, v0, -0x1

    aget-object v3, v19, v2

    const/4 v4, 0x1

    aget-wide v9, v3, v4

    div-double/2addr v7, v9

    .line 39
    aget-object v3, v19, v0

    aget-wide v9, v3, v4

    aget-object v5, v19, v2

    const/4 v11, 0x2

    aget-wide v12, v5, v11

    mul-double v12, v12, v7

    sub-double/2addr v9, v12

    aput-wide v9, v3, v4

    .line 40
    aget-object v3, v19, v0

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v4

    .line 41
    aget-wide v3, v6, v0

    aget-wide v9, v6, v2

    mul-double v7, v7, v9

    sub-double/2addr v3, v7

    aput-wide v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x2

    :goto_2
    if-ltz v0, :cond_3

    .line 42
    aget-object v2, v19, v0

    const/4 v3, 0x2

    aget-wide v7, v2, v3

    add-int/lit8 v2, v0, 0x1

    aget-object v3, v19, v2

    const/4 v4, 0x1

    aget-wide v9, v3, v4

    div-double/2addr v7, v9

    .line 43
    aget-object v3, v19, v0

    aget-wide v9, v3, v4

    aget-object v5, v19, v2

    const/4 v11, 0x0

    aget-wide v12, v5, v11

    mul-double v12, v12, v7

    sub-double/2addr v9, v12

    aput-wide v9, v3, v4

    .line 44
    aget-object v3, v19, v0

    const/4 v4, 0x2

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v4

    .line 45
    aget-wide v12, v6, v0

    aget-wide v2, v6, v2

    mul-double v7, v7, v2

    sub-double/2addr v12, v7

    aput-wide v12, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 47
    aget-wide v7, v6, v3

    aget-object v2, v19, v3

    const/4 v4, 0x1

    aget-wide v9, v2, v4

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private b()V
    .locals 11

    .line 3
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->k:Z

    if-eqz v0, :cond_2

    const v0, 0x84c3

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->j:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    mul-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v4, 0x2

    int-to-float v6, v3

    .line 8
    iget-object v7, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->j:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v6

    iget-object v8, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v9, 0x437f0000    # 255.0f

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v4, 0x1

    .line 11
    iget-object v7, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->i:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v6

    iget-object v10, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v7, v10

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 14
    iget-object v5, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->h:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v6, v5

    iget-object v5, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v6, v5

    .line 16
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, -0x1

    .line 17
    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    aget v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v0, v1, v5, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->loadTexture(Ljava/nio/ByteBuffer;III)I

    move-result v0

    aput v0, v3, v2

    .line 19
    :cond_1
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->k:Z

    :cond_2
    return-void
.end method

.method private b([Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->d:[Landroid/graphics/PointF;

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private c([Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e:[Landroid/graphics/PointF;

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->i:Ljava/util/ArrayList;

    return-void
.end method

.method private d([Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->f:[Landroid/graphics/PointF;

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private e([Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p1}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    .line 3
    new-instance v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter$1;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Point;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 6
    aget-object v4, v0, v3

    .line 7
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 10
    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_2

    :goto_1
    if-ltz v0, :cond_2

    .line 11
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 13
    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v1, :cond_3

    .line 14
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 17
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 18
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    .line 19
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 21
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_4

    neg-float v3, v3

    .line 22
    :cond_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v0

    :cond_6
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected onDrawArraysAfter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const v0, 0x84c3

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 3
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x84c0

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->b()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const v0, 0x84c3

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 4
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    aget v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 5
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->b:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    return-void
.end method

.method public onInitialized()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    const-string v1, "toneCurveTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->b:I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a()V

    return-void
.end method

.method protected onRelease()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onRelease()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    return-void
.end method

.method public setFromCurveFileInputStream(Ljava/io/InputStream;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a(Ljava/io/InputStream;)S

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a(Ljava/io/InputStream;)S

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const v2, 0x3b808081

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a(Ljava/io/InputStream;)S

    move-result v5

    .line 5
    new-array v6, v5, [Landroid/graphics/PointF;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a(Ljava/io/InputStream;)S

    move-result v8

    .line 7
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a(Ljava/io/InputStream;)S

    move-result v9

    .line 8
    new-instance v10, Landroid/graphics/PointF;

    int-to-float v9, v9

    mul-float v9, v9, v2

    int-to-float v8, v8

    mul-float v8, v8, v2

    invoke-direct {v10, v9, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->c:[Landroid/graphics/PointF;

    const/4 p1, 0x1

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->d:[Landroid/graphics/PointF;

    const/4 p1, 0x2

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e:[Landroid/graphics/PointF;

    const/4 p1, 0x3

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->f:[Landroid/graphics/PointF;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :goto_2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->a()V

    return-void
.end method
