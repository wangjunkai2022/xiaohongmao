.class public Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;
.super Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;
.source "MediaCodecSurfaceEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        "Lcom/ksyun/media/streamer/framework/ImgPacket;",
        ">;"
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "HWSurfaceEncoder"

.field private static final o:Z = false


# instance fields
.field private p:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private q:Z

.field private r:Lcom/ksyun/media/streamer/util/gles/d;

.field private s:Landroid/view/Surface;

.field private t:Lcom/ksyun/media/streamer/util/gles/f;

.field private u:I

.field private v:F

.field private w:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

.field private y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder$1;-><init>(Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 4
    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->w:Ljava/util/concurrent/BlockingQueue;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->setUseSyncMode(Z)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    return p1
.end method

.method private a(Landroid/opengl/EGLContext;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->r:Lcom/ksyun/media/streamer/util/gles/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->d()V

    .line 104
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->c()V

    .line 105
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->r:Lcom/ksyun/media/streamer/util/gles/d;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/d;->a()V

    .line 106
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/d;

    invoke-direct {v0, p1, v1}, Lcom/ksyun/media/streamer/util/gles/d;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->r:Lcom/ksyun/media/streamer/util/gles/d;

    .line 107
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/f;->a(Lcom/ksyun/media/streamer/util/gles/d;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/d;

    invoke-direct {v0, p1, v1}, Lcom/ksyun/media/streamer/util/gles/d;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->r:Lcom/ksyun/media/streamer/util/gles/d;

    .line 109
    new-instance p1, Lcom/ksyun/media/streamer/util/gles/f;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->s:Landroid/view/Surface;

    invoke-direct {p1, v0, v1}, Lcom/ksyun/media/streamer/util/gles/f;-><init>(Lcom/ksyun/media/streamer/util/gles/d;Landroid/view/Surface;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/e;->d()V

    .line 111
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/e;->a()I

    move-result p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->q:Z

    return p1
.end method

.method private d(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 2
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 3
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    .line 4
    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->colorFormat:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const v3, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v3, 0xde1

    .line 5
    :goto_0
    iget v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    if-nez v4, :cond_3

    if-ne v0, v2, :cond_1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    :cond_1
    const-string v0, "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :goto_1
    const-string v2, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 6
    invoke-static {v2, v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    if-eqz v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created program "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HWSurfaceEncoder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    :goto_2
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 10
    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 11
    iget v2, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    const-string v4, "aTextureCoord"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 12
    invoke-static {v2, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 13
    iget v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    const-string v5, "uTexMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 14
    invoke-static {v4, v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string v5, "draw start"

    .line 15
    invoke-static {v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 16
    iget v5, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v5, "glUseProgram"

    .line 17
    invoke-static {v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v5, 0x84c0

    .line 18
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 19
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 20
    invoke-static {v4, v1, v11, p1, v11}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 21
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 22
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 23
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 24
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v9

    move v4, v0

    .line 25
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "glVertexAttribPointer"

    .line 26
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 27
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 28
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 29
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v10

    move v5, v2

    .line 30
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 31
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 32
    invoke-static {p1, v11, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 33
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 35
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 36
    invoke-static {v3, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 37
    invoke-static {v11}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)I
    .locals 7

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->q:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getEGLContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->a(Landroid/opengl/EGLContext;)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->q:Z

    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(Z)V

    const/16 v1, 0x4000

    .line 86
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 87
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->d(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    .line 88
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 89
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "HWSurfaceEncoder"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "request key frame"

    .line 90
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "request-sync"

    .line 92
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 94
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    iget-wide v3, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    mul-long v3, v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/ksyun/media/streamer/util/gles/e;->a(J)V

    .line 96
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/e;->e()Z

    .line 97
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->w:Ljava/util/concurrent/BlockingQueue;

    iget-wide v3, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "offer pts failed!"

    .line 98
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x3e9

    .line 101
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    return v0

    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    throw v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 10

    const-string v0, "Failed to start MediaCodec surface encoder"

    const-string v1, "HWSurfaceEncoder"

    .line 4
    check-cast p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 5
    iget v2, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    const-string v3, "video/avc"

    const/16 v4, -0x3ea

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    if-ne v2, v5, :cond_8

    const-string v2, "video/hevc"

    .line 6
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    iput-object v7, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    .line 7
    iget v8, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    if-ne v8, v5, :cond_1

    const-string v2, "do not support hevc, fallback to avc"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v6, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 10
    :goto_1
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 11
    :goto_2
    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    add-int/lit8 v3, v3, 0xf

    div-int/lit8 v3, v3, 0x10

    mul-int/lit8 v3, v3, 0x10

    iget v7, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    add-int/2addr v7, v6

    div-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v2, v3, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const v3, 0x7f000789

    const-string v7, "color-format"

    .line 12
    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 13
    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrate:I

    const-string v7, "bitrate"

    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14
    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrateMode:I

    const-string v7, "bitrate-mode"

    invoke-virtual {v2, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 15
    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    float-to-int v3, v3

    const-string v8, "frame-rate"

    invoke-virtual {v2, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x19

    const-string v9, "i-frame-interval"

    if-ge v3, v8, :cond_2

    .line 17
    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    .line 18
    :cond_2
    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    invoke-virtual {v2, v9, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 19
    :goto_3
    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    const-string v7, "profile"

    if-ne v3, v6, :cond_6

    const/16 v3, 0x200

    .line 20
    iget v8, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v9, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    mul-int v8, v8, v9

    const v9, 0xe1000

    if-le v8, v9, :cond_3

    const/16 v3, 0x800

    .line 21
    :cond_3
    iget v8, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    if-eq v8, v6, :cond_4

    if-eq v8, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/16 v5, 0x8

    .line 22
    :cond_5
    :goto_4
    invoke-virtual {v2, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "level"

    .line 23
    invoke-virtual {v2, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_5

    :cond_6
    const/4 v5, 0x1

    .line 24
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaFormat: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 25
    :try_start_2
    iget-object v8, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2, v3, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v8

    .line 26
    :try_start_3
    iget v9, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    if-ne v9, v6, :cond_7

    if-eq v5, v6, :cond_7

    .line 27
    invoke-virtual {v2, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 28
    iget-object v5, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v5, v2, v3, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 29
    :goto_6
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->s:Landroid/view/Surface;

    .line 30
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 31
    iget p1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->v:F

    .line 32
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->w:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const-string p1, "width"

    .line 33
    invoke-virtual {v2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const-string v0, "height"

    .line 34
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 35
    new-instance v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    invoke-direct {v1, v2}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;)V

    .line 36
    iput p1, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 37
    iput v0, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    .line 38
    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->x:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 39
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_7
    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    .line 43
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return v4
.end method

.method protected a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/ImgPacket;
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, 0x1

    .line 70
    :goto_1
    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x3e8

    div-long v8, v3, v5

    .line 71
    new-instance v11, Lcom/ksyun/media/streamer/framework/ImgPacket;

    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->x:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-object v3, v11

    move-object v5, p1

    move-wide v6, v8

    invoke-direct/range {v3 .. v9}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJ)V

    .line 72
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 73
    iget v3, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    :cond_2
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    .line 74
    iget v1, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/2addr v1, v2

    iput v1, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/4 v1, 0x1

    :cond_3
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 75
    iget v0, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    goto :goto_2

    :cond_4
    move v2, v10

    :goto_2
    if-nez v2, :cond_7

    .line 76
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->w:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string v2, "HWSurfaceEncoder"

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key frame dts calculate error! pts="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " val="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->v:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, v11, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    .line 80
    iget-wide v2, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, v11, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    goto :goto_3

    :cond_6
    const-string v0, "pts queue is empty while trying to cal dts!"

    .line 81
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-object v11
.end method

.method protected a()V
    .locals 3

    const-string v0, "HWSurfaceEncoder"

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "signalEndOfInputStream failed, ignore"

    .line 46
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x1

    .line 48
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "signal end of stream failed, ignore"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, "stop encoder failed, ignore"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    .line 54
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 56
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 57
    iput v2, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->u:I

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/f;->f()V

    .line 60
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->t:Lcom/ksyun/media/streamer/util/gles/f;

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->r:Lcom/ksyun/media/streamer/util/gles/d;

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/d;->a()V

    .line 63
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->r:Lcom/ksyun/media/streamer/util/gles/d;

    .line 64
    :cond_2
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->q:Z

    return-void
.end method

.method protected synthetic a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 65
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 66
    check-cast p2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 67
    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iput v0, p2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 68
    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    iput p1, p2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    const/4 p1, 0x1

    return p1
.end method

.method protected synthetic b(Lcom/ksyun/media/streamer/framework/AVFrameBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)I

    move-result p1

    return p1
.end method

.method protected synthetic b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/AVPacketBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/ImgPacket;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

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
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6
    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "HWSurfaceEncoder"

    const-string v2, "restart encoder"

    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->b()V

    .line 9
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->a()V

    .line 10
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 11
    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    iput p1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->a(Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method protected bridge synthetic c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Z

    move-result p1

    return p1
.end method

.method protected c(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Z
    .locals 1

    .line 2
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->lock(I)Z

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->p:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 2
    invoke-super {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->release()V

    return-void
.end method
