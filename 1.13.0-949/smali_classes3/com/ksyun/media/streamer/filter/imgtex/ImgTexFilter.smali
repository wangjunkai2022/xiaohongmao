.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;
.source "ImgTexFilter.java"


# static fields
.field public static final BASE_FRAGMENT_SHADER_BODY:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final BASE_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

.field private static final a:Ljava/lang/String; = "ImgTexFilter"


# instance fields
.field private b:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field protected mFragmentShader:Ljava/lang/String;

.field protected mFragmentShaderBody:Ljava/lang/String;

.field protected mMirror:Z

.field protected mProgramId:I

.field protected mTextureTarget:I

.field protected mVertexShader:Ljava/lang/String;

.field protected maPositionLoc:I

.field protected maTextureCoordLoc:I

.field protected muTexMatrixLoc:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const/16 p1, 0xde1

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mTextureTarget:I

    const-string p1, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const/16 p1, 0xde1

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mTextureTarget:I

    .line 6
    invoke-static {}, Lcom/ksyun/media/streamer/util/CredtpWrapper;->a()Lcom/ksyun/media/streamer/util/CredtpWrapper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ksyun/media/streamer/util/CredtpWrapper;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const/16 p1, 0xde1

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mTextureTarget:I

    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    return-object v0
.end method

.method public getSinkPinNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->b:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object v0
.end method

.method protected getTexCoords()Ljava/nio/FloatBuffer;
    .locals 1

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected getUniformLocation(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    return v0
.end method

.method protected getVertexCoords()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mMirror:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexMirrorCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mVertexShader:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mFragmentShaderBody:Ljava/lang/String;

    return-void
.end method

.method public onDraw([Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    aget-object v1, p1, v0

    iget v1, v1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 2
    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "draw start"

    .line 3
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    const/4 v2, 0x1

    const-string v3, "glUseProgram"

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mVertexShader:Ljava/lang/String;

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    if-eqz v0, :cond_1

    const-string v4, "aPosition"

    .line 6
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maPositionLoc:I

    .line 7
    invoke-static {v0, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    const-string v4, "aTextureCoord"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maTextureCoordLoc:I

    .line 9
    invoke-static {v0, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    const-string v4, "uTexMatrix"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->muTexMatrixLoc:I

    .line 11
    invoke-static {v0, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 12
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 13
    invoke-static {v3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onInitialized()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitialized "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 16
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created program "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImgTexFilter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance p1, Lcom/ksyun/media/streamer/util/gles/GLProgramLoadException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLProgramLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 20
    invoke-static {v3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    :goto_0
    const v0, 0x84c0

    .line 21
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 22
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mTextureTarget:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "glBindTexture"

    .line 23
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->muTexMatrixLoc:I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, p1, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 25
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 26
    iget p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 27
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 28
    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maPositionLoc:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 29
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getVertexCoords()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 30
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer"

    .line 31
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 32
    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maTextureCoordLoc:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 33
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 34
    iget v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maTextureCoordLoc:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 35
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getTexCoords()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 36
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 37
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 39
    invoke-static {p1, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 40
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 41
    iget p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 42
    iget p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->maTextureCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 43
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onDrawArraysAfter()V

    .line 44
    iget p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mTextureTarget:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 45
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 0

    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 0

    return-void
.end method

.method public onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    if-ne p1, v0, :cond_3

    .line 2
    iget p1, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->colorFormat:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const p1, 0x8d65

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mFragmentShaderBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mFragmentShader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 p1, 0xde1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform sampler2D sTexture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mFragmentShaderBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mFragmentShader:Ljava/lang/String;

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mTextureTarget:I

    if-eq p1, v0, :cond_2

    .line 6
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 8
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    .line 10
    :cond_2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mTextureTarget:I

    .line 11
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v0, 0x1

    iget v1, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v2, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-direct {p1, v0, v1, v2}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->b:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 12
    invoke-virtual {p0, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V

    :cond_3
    return-void
.end method

.method protected onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    return-void
.end method

.method protected onInitialized()V
    .locals 0

    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onRelease()V

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mMirror:Z

    return-void
.end method
