.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;
.source "ImgTexMixer.java"


# static fields
.field public static final SCALING_MODE_BEST_FIT:I = 0x1

.field public static final SCALING_MODE_CENTER_CROP:I = 0x2

.field public static final SCALING_MODE_CROP:I = 0x3

.field public static final SCALING_MODE_FULL_FILL:I = 0x0

.field private static final a:Ljava/lang/String; = "ImgTexMixer"

.field private static final b:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform  float alpha;\nvoid main() {\n vec4 tc = texture2D(sTexture, vTextureCoord); tc = tc * alpha; gl_FragColor = tc;\n}\n"

.field private static final c:I = 0x8


# instance fields
.field private d:I

.field private e:I

.field private f:[Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private g:[Landroid/graphics/RectF;

.field private h:[Landroid/graphics/RectF;

.field private i:[Landroid/graphics/RectF;

.field private j:[F

.field private k:[I

.field private l:[Z

.field private m:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field protected mFragmentShader:Ljava/lang/String;

.field protected mFragmentShaderOES:Ljava/lang/String;

.field protected mProgram:I

.field protected mProgramOES:I

.field protected mVertexShader:Ljava/lang/String;

.field private n:[Ljava/nio/FloatBuffer;

.field private o:[Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const-string p1, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mVertexShader:Ljava/lang/String;

    const-string p1, "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform  float alpha;\nvoid main() {\n vec4 tc = texture2D(sTexture, vTextureCoord); tc = tc * alpha; gl_FragColor = tc;\n}\n"

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mFragmentShader:Ljava/lang/String;

    const-string p1, "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform  float alpha;\nvoid main() {\n vec4 tc = texture2D(sTexture, vTextureCoord); tc = tc * alpha; gl_FragColor = tc;\n}\n"

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mFragmentShaderOES:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->f:[Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 6
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    .line 7
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->h:[Landroid/graphics/RectF;

    .line 8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->j:[F

    .line 9
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->k:[I

    .line 10
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->l:[Z

    .line 11
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->n:[Ljava/nio/FloatBuffer;

    .line 12
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->o:[Ljava/nio/FloatBuffer;

    .line 13
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->i:[Landroid/graphics/RectF;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v1, v0

    .line 16
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->h:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    invoke-direct {v2, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v2, v1, v0

    .line 17
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->i:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v1, v0

    .line 18
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->j:[F

    aput v4, v1, v0

    .line 19
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->k:[I

    aput p1, v1, v0

    .line 20
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->n:[Ljava/nio/FloatBuffer;

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 21
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->o:[Ljava/nio/FloatBuffer;

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;)Ljava/nio/FloatBuffer;
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 74
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    const/high16 v4, -0x40800000    # -1.0f

    add-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v0, v5

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v3, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    const/4 v7, 0x1

    aput v5, v0, v7

    iget v5, p1, Landroid/graphics/RectF;->right:F

    mul-float v7, v5, v2

    add-float/2addr v7, v4

    const/4 v8, 0x2

    aput v7, v0, v8

    mul-float v3, v3, v2

    sub-float v3, v6, v3

    const/4 v7, 0x3

    aput v3, v0, v7

    mul-float v1, v1, v2

    add-float/2addr v1, v4

    const/4 v3, 0x4

    aput v1, v0, v3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    mul-float v1, p1, v2

    sub-float v1, v6, v1

    const/4 v3, 0x5

    aput v1, v0, v3

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    const/4 v1, 0x6

    aput v5, v0, v1

    mul-float p1, p1, v2

    sub-float/2addr v6, p1

    const/4 p1, 0x7

    aput v6, v0, p1

    .line 75
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 48
    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->d:I

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->e:I

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 49
    :cond_0
    iget-object v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->f:[Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 50
    iget v3, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-lez v3, :cond_2

    iget v3, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-lez v3, :cond_2

    .line 51
    iget-object v3, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1

    .line 52
    iget-object v3, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 53
    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->e:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->d:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 54
    iget-object v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->h:[Landroid/graphics/RectF;

    aget-object v4, v4, p1

    iget-object v5, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v5, v5, p1

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 55
    :cond_1
    iget-object v3, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    .line 56
    iget-object v3, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 57
    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->d:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->e:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 58
    iget-object v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->h:[Landroid/graphics/RectF;

    aget-object v4, v4, p1

    iget-object v5, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v5, v5, p1

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 59
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->h:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    if-eqz v1, :cond_a

    .line 60
    iget v4, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-eqz v4, :cond_a

    iget v4, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    .line 61
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_3

    goto/16 :goto_6

    .line 62
    :cond_3
    iget v4, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    int-to-float v4, v4

    iget v1, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    int-to-float v1, v1

    div-float/2addr v4, v1

    .line 63
    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->d:I

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v1, v1, v5

    iget v5, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->e:I

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v5, v5, v6

    div-float/2addr v1, v5

    .line 64
    iget-object v5, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->k:[I

    aget v5, v5, p1

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_5

    cmpl-float v5, v4, v1

    if-lez v5, :cond_4

    div-float v5, v1, v4

    sub-float v5, v8, v5

    div-float/2addr v5, v7

    move v6, v5

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    div-float v5, v4, v1

    sub-float v5, v8, v5

    div-float/2addr v5, v7

    const/4 v6, 0x0

    .line 65
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sar="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " dar="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " cropX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " cropY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ImgTexMixer"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v9, Landroid/graphics/RectF;

    iget v11, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iget v12, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v6

    iget v13, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v5

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v6

    invoke-direct {v9, v11, v12, v13, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rectF="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v9

    .line 68
    :cond_5
    iget-object v5, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->o:[Ljava/nio/FloatBuffer;

    invoke-direct {v0, v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(Landroid/graphics/RectF;)Ljava/nio/FloatBuffer;

    move-result-object v3

    aput-object v3, v5, p1

    .line 69
    iget-object v3, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->k:[I

    aget v5, v3, p1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    cmpl-float v3, v4, v1

    if-lez v3, :cond_6

    div-float/2addr v1, v4

    sub-float/2addr v8, v1

    div-float/2addr v8, v7

    move v9, v8

    move v11, v9

    :goto_2
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    div-float/2addr v4, v1

    sub-float/2addr v8, v4

    div-float/2addr v8, v7

    move v10, v8

    move v12, v10

    :goto_3
    const/4 v9, 0x0

    const/4 v11, 0x0

    goto :goto_5

    .line 70
    :cond_7
    aget v3, v3, p1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    cmpl-float v3, v4, v1

    if-lez v3, :cond_8

    div-float/2addr v1, v4

    sub-float/2addr v8, v1

    .line 71
    iget-object v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->i:[Landroid/graphics/RectF;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v1

    move v9, v1

    move v11, v8

    goto :goto_2

    :cond_8
    div-float/2addr v4, v1

    sub-float/2addr v8, v4

    .line 72
    iget-object v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->i:[Landroid/graphics/RectF;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v1

    move v10, v1

    move v12, v8

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x0

    .line 73
    :goto_5
    iget-object v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->n:[Ljava/nio/FloatBuffer;

    const/4 v13, 0x0

    iget-object v2, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->l:[Z

    aget-boolean v14, v2, p1

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf(FFFFIZZ)Ljava/nio/FloatBuffer;

    move-result-object v2

    aput-object v2, v1, p1

    :cond_a
    :goto_6
    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    .line 2
    iget v3, v1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 4
    iput v6, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgram:I

    .line 5
    iput v6, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgramOES:I

    .line 6
    iput-boolean v5, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    .line 7
    :cond_1
    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v1, v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->colorFormat:I

    const/4 v4, 0x3

    const-string v7, "Unable to create program"

    const-string v8, " failed"

    const-string v9, "Created program "

    const-string v10, "ImgTexMixer"

    if-ne v1, v4, :cond_4

    const v1, 0x8d65

    .line 8
    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgramOES:I

    if-nez v4, :cond_3

    .line 9
    iget-object v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mVertexShader:Ljava/lang/String;

    iget-object v11, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mFragmentShaderOES:Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgramOES:I

    if-eqz v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgramOES:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_3
    :goto_0
    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgramOES:I

    goto :goto_2

    :cond_4
    const/16 v1, 0xde1

    .line 13
    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgram:I

    if-nez v4, :cond_6

    .line 14
    iget-object v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mVertexShader:Ljava/lang/String;

    iget-object v11, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgram:I

    if-eqz v4, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgram:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v1, Lcom/ksyun/media/streamer/util/gles/GLProgramLoadException;

    invoke-direct {v1, v7}, Lcom/ksyun/media/streamer/util/gles/GLProgramLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_6
    :goto_1
    iget v4, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgram:I

    :goto_2
    const-string v7, "aPosition"

    .line 18
    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v14

    .line 19
    invoke-static {v14, v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string v7, "aTextureCoord"

    .line 20
    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v15

    .line 21
    invoke-static {v15, v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string v7, "uTexMatrix"

    .line 22
    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    .line 23
    invoke-static {v8, v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string v7, "draw start"

    .line 24
    invoke-static {v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 25
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v7, "glUseProgram"

    .line 26
    invoke-static {v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v7, 0x84c0

    .line 27
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 28
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 29
    invoke-static {v8, v5, v6, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v2, "glUniformMatrix4fv"

    .line 30
    invoke-static {v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 31
    invoke-static {v14}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v2, "glEnableVertexAttribArray"

    .line 32
    invoke-static {v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x8

    move v8, v14

    move-object/from16 v13, p3

    .line 33
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v3, "glVertexAttribPointer"

    .line 34
    invoke-static {v3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 35
    invoke-static {v15}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 36
    invoke-static {v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    move v8, v15

    move-object/from16 v13, p2

    .line 37
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 38
    invoke-static {v3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const-string v2, "alpha"

    .line 39
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 40
    invoke-static {v3, v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    move/from16 v2, p4

    .line 41
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x5

    const/4 v3, 0x4

    .line 42
    invoke-static {v2, v6, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v2, "glDrawArrays"

    .line 43
    invoke-static {v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 44
    invoke-static {v14}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 45
    invoke-static {v15}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 46
    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 47
    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method


# virtual methods
.method public getRectForCrop(I)Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->i:[Landroid/graphics/RectF;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRenderRect(I)Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSinkPinNum()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->m:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-nez v0, :cond_0

    const-string v0, "ImgTexMixer"

    const-string v1, "you must call setTargetSize"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->m:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object v0
.end method

.method public onDraw([Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x303

    .line 1
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 4
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->n:[Ljava/nio/FloatBuffer;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->o:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->j:[F

    aget v5, v5, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x302

    .line 5
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->f:[Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    aput-object p2, v0, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onRelease()V

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgram:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 4
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgram:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgramOES:I

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 7
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->mProgramOES:I

    :cond_1
    return-void
.end method

.method public setMirror(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->l:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aput-boolean p2, v0, p1

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    :cond_0
    return-void
.end method

.method public setRectForCrop(IFFFF)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->i:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    :cond_0
    return-void
.end method

.method public setRectForCrop(ILandroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->i:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    :cond_0
    return-void
.end method

.method public setRenderRect(IFFFFF)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->h:[Landroid/graphics/RectF;

    aget-object p2, p2, p1

    iget-object p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->j:[F

    aput p6, p2, p1

    .line 10
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    :cond_0
    return-void
.end method

.method public setRenderRect(ILandroid/graphics/RectF;F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->g:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->h:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->j:[F

    aput p3, p2, p1

    .line 5
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    :cond_0
    return-void
.end method

.method public setScalingMode(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->k:[I

    aput p2, v0, p1

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    :cond_0
    return-void
.end method

.method public setTargetSize(II)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->d:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->e:I

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->m:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->getSinkPinNum()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->a(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
