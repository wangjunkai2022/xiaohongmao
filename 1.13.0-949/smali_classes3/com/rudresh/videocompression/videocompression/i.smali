.class public Lcom/rudresh/videocompression/videocompression/i;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field private static final D:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final E:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final F:Ljava/lang/String; = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field a:[F

.field private b:Ljava/nio/FloatBuffer;

.field private c:Ljava/nio/FloatBuffer;

.field private d:Ljava/nio/FloatBuffer;

.field private e:Ljava/nio/FloatBuffer;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[F

.field private k:[F

.field private l:[F

.field private m:I

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:[I

.field private r:[I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:[I

.field private x:[I

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(IIIIIFZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p5, 0x8

    new-array v0, p5, [F

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/i;->j:[F

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/i;->k:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/i;->l:[F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/i;->C:Z

    .line 7
    iput-boolean p7, p0, Lcom/rudresh/videocompression/videocompression/i;->B:Z

    new-array p7, p5, [F

    .line 8
    fill-array-data p7, :array_1

    const/16 v1, 0x20

    .line 9
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/i;->c:Ljava/nio/FloatBuffer;

    .line 10
    invoke-virtual {v2, p7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p7

    const/4 v2, 0x0

    invoke-virtual {p7, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object p7, p0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    array-length p7, p7

    mul-int/lit8 p7, p7, 0x4

    invoke-static {p7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p7, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p7

    invoke-virtual {p7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p7

    iput-object p7, p0, Lcom/rudresh/videocompression/videocompression/i;->e:Ljava/nio/FloatBuffer;

    .line 12
    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    invoke-virtual {p7, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p7

    invoke-virtual {p7, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget-object p7, p0, Lcom/rudresh/videocompression/videocompression/i;->k:[F

    invoke-static {p7, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 14
    iget-object p7, p0, Lcom/rudresh/videocompression/videocompression/i;->l:[F

    invoke-static {p7, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 15
    iput p1, p0, Lcom/rudresh/videocompression/videocompression/i;->h:I

    .line 16
    iput p2, p0, Lcom/rudresh/videocompression/videocompression/i;->i:I

    .line 17
    iput p3, p0, Lcom/rudresh/videocompression/videocompression/i;->f:I

    .line 18
    iput p4, p0, Lcom/rudresh/videocompression/videocompression/i;->g:I

    const/4 p1, 0x0

    cmpl-float p1, p6, p1

    if-nez p1, :cond_0

    const/high16 p6, 0x41f00000    # 30.0f

    .line 19
    :cond_0
    iput p6, p0, Lcom/rudresh/videocompression/videocompression/i;->y:F

    new-array p1, v0, [I

    .line 20
    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    new-array p1, v0, [I

    .line 21
    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->o:[I

    new-array p1, v0, [I

    .line 22
    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->p:[I

    new-array p1, v0, [I

    .line 23
    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->q:[I

    new-array p1, v0, [I

    .line 24
    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->r:[I

    .line 25
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->j:[F

    invoke-static {p1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-array p1, p5, [F

    .line 26
    fill-array-data p1, :array_2

    .line 27
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/rudresh/videocompression/videocompression/i;->b:Ljava/nio/FloatBuffer;

    .line 28
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array p1, p5, [F

    .line 29
    fill-array-data p1, :array_3

    .line 30
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/rudresh/videocompression/videocompression/i;->d:Ljava/nio/FloatBuffer;

    .line 31
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
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
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 1
    invoke-static {v0, p1}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 2
    invoke-static {v1, p2}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 5
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 6
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v2, 0x8b82

    .line 7
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    .line 8
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method private d(ZI)V
    .locals 9

    const v3, -0x39e3c000    # -10000.0f

    const v4, -0x39e3c000    # -10000.0f

    const v5, -0x39e3c000    # -10000.0f

    const v6, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/rudresh/videocompression/videocompression/i;->e(ZIFFFFFZ)V

    return-void
.end method

.method private e(ZIFFFFFZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p7

    .line 1
    iget-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/i;->A:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0xbe2

    .line 2
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x303

    .line 3
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 4
    iput-boolean v3, v0, Lcom/rudresh/videocompression/videocompression/i;->A:Z

    :cond_0
    const v2, -0x39e3c000    # -10000.0f

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_1

    .line 5
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    const/high16 v13, -0x40800000    # -1.0f

    aput v13, v2, v12

    .line 6
    aput v11, v2, v3

    .line 7
    aput v11, v2, v9

    .line 8
    aput v11, v2, v5

    .line 9
    aput v13, v2, v8

    .line 10
    aput v13, v2, v7

    .line 11
    aput v11, v2, v6

    .line 12
    aput v13, v2, v4

    goto :goto_0

    :cond_1
    mul-float v2, p3, v10

    sub-float/2addr v2, v11

    sub-float v13, v11, p4

    mul-float v13, v13, v10

    sub-float/2addr v13, v11

    mul-float v11, p5, v10

    mul-float v14, p6, v10

    .line 13
    iget-object v15, v0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    aput v2, v15, v12

    .line 14
    aput v13, v15, v3

    add-float/2addr v11, v2

    .line 15
    aput v11, v15, v9

    .line 16
    aput v13, v15, v5

    .line 17
    aput v2, v15, v8

    sub-float/2addr v13, v14

    .line 18
    aput v13, v15, v7

    .line 19
    aput v11, v15, v6

    .line 20
    aput v13, v15, v4

    .line 21
    :goto_0
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    aget v4, v2, v12

    aget v5, v2, v9

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    if-eqz p8, :cond_2

    .line 22
    aget v5, v2, v9

    .line 23
    aget v11, v2, v12

    aput v11, v2, v9

    .line 24
    aput v5, v2, v12

    .line 25
    aget v5, v2, v6

    .line 26
    aget v9, v2, v8

    aput v9, v2, v6

    .line 27
    aput v5, v2, v8

    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_3

    .line 28
    iget v5, v0, Lcom/rudresh/videocompression/videocompression/i;->h:I

    int-to-float v5, v5

    iget v6, v0, Lcom/rudresh/videocompression/videocompression/i;->i:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 29
    aget v6, v2, v7

    aget v2, v2, v3

    add-float/2addr v6, v2

    div-float/2addr v6, v10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_3

    .line 30
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    mul-int/lit8 v9, v2, 0x2

    aget v10, v3, v9

    sub-float/2addr v10, v4

    add-int/lit8 v11, v9, 0x1

    .line 31
    aget v13, v3, v11

    sub-float/2addr v13, v6

    div-float/2addr v13, v5

    float-to-double v14, v10

    float-to-double v7, v1

    .line 32
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    float-to-double v12, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v12

    move/from16 p3, v11

    sub-double v10, v16, v18

    double-to-float v10, v10

    add-float/2addr v10, v4

    aput v10, v3, v9

    .line 33
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v14, v14, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v12, v12, v7

    add-double/2addr v14, v12

    double-to-float v7, v14

    mul-float v7, v7, v5

    add-float/2addr v7, v6

    aput v7, v3, p3

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v12, 0x0

    goto :goto_1

    .line 34
    :cond_3
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/i;->e:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/i;->a:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iget v3, v0, Lcom/rudresh/videocompression/videocompression/i;->t:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    iget-object v8, v0, Lcom/rudresh/videocompression/videocompression/i;->e:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    if-eqz p1, :cond_4

    const/16 v1, 0xde1

    move/from16 v2, p2

    .line 36
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_4
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 37
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 2
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v2, p1}, Lcom/rudresh/videocompression/videocompression/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    .line 3
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    invoke-direct {p0, v2, p2}, Lcom/rudresh/videocompression/videocompression/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    aput p2, p1, v1

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/SurfaceTexture;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/i;->B:Z

    const v1, 0x84c0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->s:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 4
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->v:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 5
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->u:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 6
    iget v4, p0, Lcom/rudresh/videocompression/videocompression/i;->u:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    iget-object v9, p0, Lcom/rudresh/videocompression/videocompression/i;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 7
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->t:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/i;->k:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 9
    iget-boolean p1, p0, Lcom/rudresh/videocompression/videocompression/i;->A:Z

    if-eqz p1, :cond_1

    const/16 p1, 0xbe2

    .line 10
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 11
    iput-boolean v3, p0, Lcom/rudresh/videocompression/videocompression/i;->A:Z

    .line 12
    :cond_1
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->m:I

    const v0, 0x8d65

    .line 13
    iget-object v4, p0, Lcom/rudresh/videocompression/videocompression/i;->k:[F

    .line 14
    iget-object v5, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    aget v5, v5, v3

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 15
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 16
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 17
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->q:[I

    aget v5, p1, v3

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    iget-object v10, p0, Lcom/rudresh/videocompression/videocompression/i;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 18
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->q:[I

    aget p1, p1, v3

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 19
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->r:[I

    aget v5, p1, v3

    iget-object v10, p0, Lcom/rudresh/videocompression/videocompression/i;->d:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 20
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->r:[I

    aget p1, p1, v3

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 21
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->p:[I

    aget p1, p1, v3

    invoke-static {p1, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 22
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->o:[I

    aget p1, p1, v3

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/i;->j:[F

    invoke-static {p1, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 23
    invoke-static {p1, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->w:[I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->x:[I

    if-eqz p1, :cond_3

    .line 25
    :cond_2
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->s:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 26
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 27
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->v:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 28
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->u:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 29
    iget v4, p0, Lcom/rudresh/videocompression/videocompression/i;->u:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    iget-object v9, p0, Lcom/rudresh/videocompression/videocompression/i;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 30
    iget p1, p0, Lcom/rudresh/videocompression/videocompression/i;->t:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->w:[I

    if-eqz p1, :cond_4

    .line 32
    :goto_1
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/i;->w:[I

    array-length v0, p1

    if-ge v3, v0, :cond_4

    .line 33
    aget p1, p1, v3

    invoke-direct {p0, v2, p1}, Lcom/rudresh/videocompression/videocompression/i;->d(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 34
    :cond_4
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/i;->m:I

    return v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-nez v1, :cond_0

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    :cond_0
    const-string v3, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :goto_1
    const-string v4, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 2
    invoke-direct {p0, v4, v3}, Lcom/rudresh/videocompression/videocompression/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 3
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/i;->q:[I

    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    aget v3, v3, v1

    const-string v4, "aPosition"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 4
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/i;->r:[I

    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    aget v3, v3, v1

    const-string v4, "aTextureCoord"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 5
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/i;->o:[I

    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    aget v3, v3, v1

    const-string v4, "uMVPMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 6
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/i;->p:[I

    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/i;->n:[I

    aget v3, v3, v1

    const-string v4, "uSTMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 7
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v2, v0

    .line 8
    iput v0, p0, Lcom/rudresh/videocompression/videocompression/i;->m:I

    const v1, 0x8d65

    .line 9
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v2, 0x2601

    .line 10
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 11
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 12
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 13
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method
