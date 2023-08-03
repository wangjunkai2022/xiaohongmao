.class public Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;
.super Lcom/ksyun/media/streamer/encoder/Encoder;
.source "AVCodecSurfaceEncoder.java"

# interfaces
.implements Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/encoder/Encoder<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        "Lcom/ksyun/media/streamer/framework/ImgPacket;",
        ">;",
        "Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "AVCodecSurfaceEncoder"

.field private static final l:Z = false


# instance fields
.field private m:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private n:Z

.field private o:Lcom/ksyun/media/streamer/util/gles/d;

.field private p:Landroid/view/Surface;

.field private q:Lcom/ksyun/media/streamer/util/gles/f;

.field private r:I

.field private s:Landroid/media/ImageReader;

.field private t:Ljava/nio/ByteBuffer;

.field private u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

.field private v:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

.field private w:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$2;-><init>(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->w:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 4
    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Landroid/media/ImageReader;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->s:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->t:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a(Landroid/opengl/EGLContext;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->o:Lcom/ksyun/media/streamer/util/gles/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->d()V

    .line 37
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->c()V

    .line 38
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->o:Lcom/ksyun/media/streamer/util/gles/d;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/d;->a()V

    .line 39
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/d;

    invoke-direct {v0, p1, v1}, Lcom/ksyun/media/streamer/util/gles/d;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->o:Lcom/ksyun/media/streamer/util/gles/d;

    .line 40
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/f;->a(Lcom/ksyun/media/streamer/util/gles/d;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/d;

    invoke-direct {v0, p1, v1}, Lcom/ksyun/media/streamer/util/gles/d;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->o:Lcom/ksyun/media/streamer/util/gles/d;

    .line 42
    new-instance p1, Lcom/ksyun/media/streamer/util/gles/f;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->p:Landroid/view/Surface;

    invoke-direct {p1, v0, v2}, Lcom/ksyun/media/streamer/util/gles/f;-><init>(Lcom/ksyun/media/streamer/util/gles/d;Landroid/view/Surface;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    .line 43
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/e;->d()V

    .line 44
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/e;->a()I

    move-result p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->b()I

    move-result v0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Lcom/ksyun/media/streamer/framework/VideoCodecFormat;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->v:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    return-object p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->t:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    return-object p0
.end method

.method private d(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 12

    .line 2
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 3
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 4
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    .line 5
    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->colorFormat:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const v3, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v3, 0xde1

    .line 6
    :goto_0
    iget v4, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    if-nez v4, :cond_3

    if-ne v0, v2, :cond_1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    :cond_1
    const-string v0, "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :goto_1
    const-string v2, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 7
    invoke-static {v2, v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    if-eqz v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created program "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AVCodecSurfaceEncoder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    :goto_2
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 11
    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 12
    iget v2, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    const-string v4, "aTextureCoord"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 13
    invoke-static {v2, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 14
    iget v4, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    const-string v5, "uTexMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 15
    invoke-static {v4, v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string v5, "draw start"

    .line 16
    invoke-static {v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 17
    iget v5, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v5, "glUseProgram"

    .line 18
    invoke-static {v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v5, 0x84c0

    .line 19
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 20
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 21
    invoke-static {v4, v1, v11, p1, v11}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 22
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 23
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 24
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 25
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v9

    move v4, v0

    .line 26
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "glVertexAttribPointer"

    .line 27
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 28
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 29
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 30
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v10

    move v5, v2

    .line 31
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 32
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 33
    invoke-static {p1, v11, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 34
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 35
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 36
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 37
    invoke-static {v3, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 38
    invoke-static {v11}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 14

    .line 6
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-nez v0, :cond_0

    const/16 p1, -0x3ea

    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 8
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    .line 9
    invoke-virtual {v0, p0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;)V

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    iget v2, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrate:I

    iget v4, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->pixFmt:I

    iget v5, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v6, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget v7, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    iget v8, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    iget v9, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    iget v10, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    iget v11, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->crf:I

    iget-boolean v12, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->liveStreaming:Z

    iget v13, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrateMode:I

    invoke-virtual/range {v1 .. v13}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(IIIIIFFIIIZI)I

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->s:Landroid/media/ImageReader;

    if-nez v1, :cond_1

    .line 12
    iget v1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->s:Landroid/media/ImageReader;

    .line 13
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->p:Landroid/view/Surface;

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->s:Landroid/media/ImageReader;

    new-instance v1, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;-><init>(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1
    return v0
.end method

.method protected a()V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a()I

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->b()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    .line 18
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->s:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 20
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->s:Landroid/media/ImageReader;

    .line 21
    :cond_0
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 22
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 23
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 24
    iput v2, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->r:I

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/f;->f()V

    .line 27
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->o:Lcom/ksyun/media/streamer/util/gles/d;

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/d;->a()V

    .line 30
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->o:Lcom/ksyun/media/streamer/util/gles/d;

    .line 31
    :cond_3
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->n:Z

    return-void
.end method

.method protected a(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(I)I

    return-void
.end method

.method protected synthetic a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Z
    .locals 1

    .line 33
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 34
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->lock(I)Z

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic b(Lcom/ksyun/media/streamer/framework/AVFrameBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)I
    .locals 5

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->n:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getEGLContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->a(Landroid/opengl/EGLContext;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->n:Z

    :cond_0
    const/16 v0, 0x4000

    .line 16
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 17
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->d(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    .line 18
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    iget-wide v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/util/gles/e;->a(J)V

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->q:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AVCodecSurfaceEncoder"

    const-string v2, "Render to ImageReader surface failed!"

    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, -0x3e9

    .line 24
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    return v0

    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    throw v0
.end method

.method protected b()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Ljava/nio/ByteBuffer;JI)I

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 3

    .line 3
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 5
    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "AVCodecSurfaceEncoder"

    const-string v2, "restart encoder"

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->b()V

    .line 8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->a()V

    .line 9
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 10
    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    iput p1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->a(Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method protected c(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    return-void
.end method

.method protected synthetic c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Z

    move-result p1

    return p1
.end method

.method public onEncoded(JLjava/nio/ByteBuffer;JJI)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p8

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 1
    new-instance v2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget-object v3, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    invoke-direct {v2, v3}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;)V

    iput-object v2, v0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->v:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 2
    iget-object v3, v0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->u:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v3}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    .line 3
    iget-object v2, v0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->v:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    invoke-virtual {p0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance v2, Lcom/ksyun/media/streamer/framework/ImgPacket;

    iget-object v4, v0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->v:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-object v3, v2

    move-object v5, p3

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    move-wide v10, p1

    invoke-direct/range {v3 .. v11}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJJ)V

    .line 5
    iput v1, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 6
    invoke-virtual {p0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 7
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->w:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 2
    invoke-super {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->release()V

    return-void
.end method
