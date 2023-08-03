.class public Lcom/ksyun/media/streamer/util/gles/g;
.super Ljava/lang/Object;
.source "YUVLoader.java"


# static fields
.field public static final a:Ljava/lang/String; = "precision mediump float;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n"

.field private static final b:Ljava/lang/String; = "YUVLoader"

.field private static final c:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureU;\nuniform sampler2D sTextureV;\nvoid main() {\n    mediump vec3 yuv;\n    lowp vec3 rgb;\n    yuv.x = texture2D(sTextureY, vTextureCoord).r;\n    yuv.y = texture2D(sTextureU, vTextureCoord).r - 0.5;\n    yuv.z = texture2D(sTextureV, vTextureCoord).r - 0.5;\n    rgb = mat3( 1,       1,        1,\n                0,       -0.39465, 2.03211,\n                1.13983, -0.58060, 0 ) * yuv;\n    gl_FragColor = vec4(rgb, 1);\n}"


# instance fields
.field private d:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[I

.field private j:[I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->j:[I

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/g;->d:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-void
.end method

.method private a(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private b(Ljava/nio/ByteBuffer;II[I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    .line 1
    array-length v6, v1

    if-eq v6, v5, :cond_1

    :cond_0
    new-array v1, v5, [I

    aput p2, v1, v4

    .line 2
    div-int/lit8 v6, p2, 0x2

    aput v6, v1, v3

    aput v6, v1, v2

    :cond_1
    new-array v6, v5, [I

    aput p2, v6, v4

    .line 3
    div-int/lit8 v7, p2, 0x2

    aput v7, v6, v3

    aput v7, v6, v2

    new-array v7, v5, [I

    aput p3, v7, v4

    .line 4
    div-int/lit8 v8, p3, 0x2

    aput v8, v7, v3

    aput v8, v7, v2

    new-array v2, v5, [Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    aput-object v9, v2, v3

    .line 6
    aget-object v9, v2, v3

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    aget v9, v1, v3

    aget v10, v7, v3

    mul-int v9, v9, v10

    add-int/2addr v8, v9

    .line 8
    aget-object v9, v2, v3

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v3, v0, Lcom/ksyun/media/streamer/util/gles/g;->i:[I

    const/16 v8, 0xcf5

    const v9, 0x84c0

    const/16 v10, 0xde1

    if-nez v3, :cond_3

    new-array v3, v5, [I

    .line 10
    iput-object v3, v0, Lcom/ksyun/media/streamer/util/gles/g;->i:[I

    .line 11
    invoke-static {v5, v3, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_1
    if-ge v4, v5, :cond_4

    add-int v3, v4, v9

    .line 12
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 13
    iget-object v3, v0, Lcom/ksyun/media/streamer/util/gles/g;->i:[I

    aget v3, v3, v4

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    const v11, 0x46180400    # 9729.0f

    .line 14
    invoke-static {v10, v3, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    .line 15
    invoke-static {v10, v3, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v11, 0x47012f00    # 33071.0f

    .line 16
    invoke-static {v10, v3, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    .line 17
    invoke-static {v10, v3, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 18
    aget v3, v1, v4

    aget v11, v6, v4

    sub-int/2addr v3, v11

    invoke-direct {v0, v3}, Lcom/ksyun/media/streamer/util/gles/g;->a(I)I

    move-result v3

    .line 19
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/16 v13, 0x1909

    .line 20
    aget v14, v6, v4

    aget v15, v7, v4

    const/16 v16, 0x0

    const/16 v17, 0x1909

    const/16 v18, 0x1401

    aget-object v19, v2, v4

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v4, v5, :cond_4

    add-int v3, v4, v9

    .line 21
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 22
    iget-object v3, v0, Lcom/ksyun/media/streamer/util/gles/g;->i:[I

    aget v3, v3, v4

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 23
    aget v3, v1, v4

    aget v11, v6, v4

    sub-int/2addr v3, v11

    invoke-direct {v0, v3}, Lcom/ksyun/media/streamer/util/gles/g;->a(I)I

    move-result v3

    .line 24
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 25
    aget v15, v6, v4

    aget v16, v7, v4

    const/16 v17, 0x1909

    const/16 v18, 0x1401

    aget-object v19, v2, v4

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;II[I)I
    .locals 11

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_5

    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto/16 :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->g:I

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->h:I

    if-eq p3, v1, :cond_2

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/util/gles/g;->a()V

    .line 14
    :cond_2
    iput p2, p0, Lcom/ksyun/media/streamer/util/gles/g;->g:I

    .line 15
    iput p3, p0, Lcom/ksyun/media/streamer/util/gles/g;->h:I

    .line 16
    iget v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    if-ne v1, v0, :cond_3

    .line 17
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->d:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/ksyun/media/streamer/util/gles/FboManager;->getTextureAndLock(II)I

    move-result v1

    iput v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->d:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    iget v2, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/gles/FboManager;->getFramebuffer(I)I

    move-result v1

    const/16 v2, 0xba2

    .line 19
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/gles/g;->j:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const v2, 0x8d40

    .line 20
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 21
    invoke-static {v4, v4, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 22
    iget v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    if-nez v1, :cond_4

    const-string v1, "precision mediump float;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v3, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureU;\nuniform sampler2D sTextureV;\nvoid main() {\n    mediump vec3 yuv;\n    lowp vec3 rgb;\n    yuv.x = texture2D(sTextureY, vTextureCoord).r;\n    yuv.y = texture2D(sTextureU, vTextureCoord).r - 0.5;\n    yuv.z = texture2D(sTextureV, vTextureCoord).r - 0.5;\n    rgb = mat3( 1,       1,        1,\n                0,       -0.39465, 2.03211,\n                1.13983, -0.58060, 0 ) * yuv;\n    gl_FragColor = vec4(rgb, 1);\n}"

    .line 23
    invoke-static {v1, v3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    if-nez v1, :cond_4

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created program "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YUVLoader"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 25
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/util/gles/g;->b(Ljava/nio/ByteBuffer;II[I)V

    const-string p1, "upload textures"

    .line 26
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 27
    iget p1, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    const-string p2, "aPosition"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 28
    invoke-static {p1, p2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 29
    iget p2, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    const-string p3, "aTextureCoord"

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    .line 30
    invoke-static {p2, p3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string p3, "draw start"

    .line 31
    invoke-static {p3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 32
    iget p3, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p3, "glUseProgram"

    .line 33
    invoke-static {p3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 34
    iget p3, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    const-string p4, "sTextureY"

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    invoke-static {p3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 35
    iget p3, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    const-string p4, "sTextureU"

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    const/4 p4, 0x1

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 36
    iget p3, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    const-string v0, "sTextureV"

    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string p3, "glUniform1i for textures"

    .line 37
    invoke-static {p3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p3, "glEnableVertexAttribArray"

    .line 39
    invoke-static {p3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 40
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v10

    move v5, p1

    .line 41
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "glVertexAttribPointer"

    .line 42
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 43
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 44
    invoke-static {p3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v10

    move v5, p2

    .line 46
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 47
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p3, 0x5

    const/4 v1, 0x4

    .line 48
    invoke-static {p3, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p3, "glDrawArrays"

    .line 49
    invoke-static {p3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 51
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 52
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 53
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 54
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/g;->j:[I

    aget p2, p1, v4

    aget p3, p1, p4

    aget p4, p1, v0

    const/4 v0, 0x3

    aget p1, p1, v0

    invoke-static {p2, p3, p4, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 55
    iget p1, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->i:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 2
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->i:[I

    .line 4
    :cond_0
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->d:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget v3, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    invoke-virtual {v0, v3}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    .line 6
    iput v2, p0, Lcom/ksyun/media/streamer/util/gles/g;->f:I

    .line 7
    :cond_1
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 9
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 10
    iput v1, p0, Lcom/ksyun/media/streamer/util/gles/g;->e:I

    :cond_2
    return-void
.end method
