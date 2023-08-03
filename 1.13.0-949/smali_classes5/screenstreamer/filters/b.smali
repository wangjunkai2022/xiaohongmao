.class public Lscreenstreamer/filters/b;
.super Lscreenstreamer/filters/a;
.source "GPUImageTransformFilter.java"


# static fields
.field public static final s:Ljava/lang/String; = "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"


# instance fields
.field private m:I

.field private n:I

.field private o:[F

.field private p:[F

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const-string v0, "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 1
    invoke-direct {p0, v0, v1}, Lscreenstreamer/filters/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lscreenstreamer/filters/b;->o:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 3
    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lscreenstreamer/filters/b;->p:[F

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lscreenstreamer/filters/b;->r:Z

    return v0
.end method

.method public D()[F
    .locals 1

    iget-object v0, p0, Lscreenstreamer/filters/b;->p:[F

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lscreenstreamer/filters/b;->q:Z

    return v0
.end method

.method public F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lscreenstreamer/filters/b;->r:Z

    .line 2
    iget-boolean p1, p0, Lscreenstreamer/filters/b;->q:Z

    invoke-virtual {p0, p1}, Lscreenstreamer/filters/b;->G(Z)V

    return-void
.end method

.method public G(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, Lscreenstreamer/filters/b;->q:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/filters/b;->o:[F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 3
    iget p1, p0, Lscreenstreamer/filters/b;->n:I

    iget-object v0, p0, Lscreenstreamer/filters/b;->o:[F

    invoke-virtual {p0, p1, v0}, Lscreenstreamer/filters/a;->B(I[F)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->f()I

    move-result p1

    invoke-virtual {p0}, Lscreenstreamer/filters/a;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscreenstreamer/filters/b;->q(II)V

    :goto_0
    return-void
.end method

.method public H(I)V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 2
    fill-array-data v2, :array_0

    int-to-float v3, p1

    aget v4, v2, v1

    const/4 p1, 0x1

    aget v5, v2, p1

    const/4 p1, 0x2

    aget v6, v2, p1

    const/4 v2, 0x0

    move-object v1, v0

    .line 3
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 4
    invoke-virtual {p0, v0}, Lscreenstreamer/filters/b;->J([F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public I(I)V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 2
    fill-array-data v2, :array_0

    int-to-float v3, p1

    aget v4, v2, v1

    const/4 p1, 0x1

    aget v5, v2, p1

    const/4 p1, 0x2

    aget v6, v2, p1

    const/4 v2, 0x0

    move-object v1, v0

    .line 3
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 4
    invoke-virtual {p0, v0}, Lscreenstreamer/filters/b;->J([F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public J([F)V
    .locals 1

    .line 1
    iput-object p1, p0, Lscreenstreamer/filters/b;->p:[F

    .line 2
    iget v0, p0, Lscreenstreamer/filters/b;->m:I

    invoke-virtual {p0, v0, p1}, Lscreenstreamer/filters/a;->B(I[F)V

    return-void
.end method

.method public m(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/filters/b;->q:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 4
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->e()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lscreenstreamer/filters/a;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    mul-float v3, v3, p2

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    mul-float v3, v3, p2

    aput v3, v0, v2

    const/4 v2, 0x5

    aget v3, v0, v2

    mul-float v3, v3, p2

    aput v3, v0, v2

    const/4 v2, 0x7

    aget v3, v0, v2

    mul-float v3, v3, p2

    aput v3, v0, v2

    const/16 p2, 0x20

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lscreenstreamer/filters/a;->m(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-super {p0}, Lscreenstreamer/filters/a;->o()V

    .line 2
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->g()I

    move-result v0

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lscreenstreamer/filters/b;->m:I

    .line 3
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->g()I

    move-result v0

    const-string v1, "orthographicMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lscreenstreamer/filters/b;->n:I

    .line 4
    iget v0, p0, Lscreenstreamer/filters/b;->m:I

    iget-object v1, p0, Lscreenstreamer/filters/b;->p:[F

    invoke-virtual {p0, v0, v1}, Lscreenstreamer/filters/a;->B(I[F)V

    .line 5
    iget v0, p0, Lscreenstreamer/filters/b;->n:I

    iget-object v1, p0, Lscreenstreamer/filters/b;->o:[F

    invoke-virtual {p0, v0, v1}, Lscreenstreamer/filters/a;->B(I[F)V

    return-void
.end method

.method public p()V
    .locals 0

    invoke-super {p0}, Lscreenstreamer/filters/a;->p()V

    return-void
.end method

.method public q(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lscreenstreamer/filters/a;->q(II)V

    .line 2
    iget-boolean v0, p0, Lscreenstreamer/filters/b;->q:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lscreenstreamer/filters/b;->o:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    int-to-float p2, p2

    mul-float v0, v0, p2

    int-to-float p1, p1

    div-float v5, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    div-float v6, p2, p1

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 4
    iget p1, p0, Lscreenstreamer/filters/b;->n:I

    iget-object p2, p0, Lscreenstreamer/filters/b;->o:[F

    invoke-virtual {p0, p1, p2}, Lscreenstreamer/filters/a;->B(I[F)V

    :cond_0
    return-void
.end method
