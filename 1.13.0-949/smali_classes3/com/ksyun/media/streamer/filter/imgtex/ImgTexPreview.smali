.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;
.super Ljava/lang/Object;
.source "ImgTexPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImgTexPreview"


# instance fields
.field private b:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private d:I

.field private e:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

.field private f:Landroid/os/ConditionVariable;

.field private g:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

.field private h:Z

.field private i:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

.field private j:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

.field private k:Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

.field private l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->f:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->h:Z

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->i:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$2;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->j:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->k:Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$4;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$4;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    .line 8
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->b:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 9
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 13

    .line 4
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 5
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 6
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    .line 7
    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->colorFormat:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const v3, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v3, 0xde1

    .line 8
    :goto_0
    iget v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    if-nez v4, :cond_3

    if-ne v0, v2, :cond_1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    :cond_1
    const-string v0, "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :goto_1
    const-string v2, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 9
    invoke-static {v2, v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    if-eqz v0, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created program "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImgTexPreview"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    const/4 v0, 0x1

    const/16 v2, 0x303

    .line 12
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 13
    iget v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    const-string v5, "aPosition"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    .line 14
    invoke-static {v4, v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 15
    iget v5, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    const-string v6, "aTextureCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    .line 16
    invoke-static {v5, v6}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 17
    iget v6, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    const-string v7, "uTexMatrix"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    .line 18
    invoke-static {v6, v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string v7, "draw start"

    .line 19
    invoke-static {v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 20
    iget v7, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v7, "glUseProgram"

    .line 21
    invoke-static {v7}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v7, 0x84c0

    .line 22
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 23
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x0

    .line 24
    invoke-static {v6, v0, v1, p1, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 25
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 26
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 27
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    .line 28
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v11

    move v6, v4

    .line 29
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer"

    .line 30
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 31
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 32
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    .line 33
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v12

    move v7, v5

    .line 34
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 35
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 36
    invoke-static {p1, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 37
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 38
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 39
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 40
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 41
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p1, 0x302

    .line 42
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->g:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->e:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    return-object p1
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->g:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    return-object p1
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->e:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->f:Landroid/os/ConditionVariable;

    return-object p0
.end method


# virtual methods
.method public getDisplayPreview()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getCurrentView()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGLRender()Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->b:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->onResume()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    return-void
.end method

.method public setDisplayPreview(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->init(Landroid/opengl/GLSurfaceView;)V

    :goto_0
    return-void
.end method

.method public setDisplayPreview(Landroid/view/TextureView;)V
    .locals 1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->init(Landroid/view/TextureView;)V

    :goto_0
    return-void
.end method

.method public setEGL10Context(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->setInitEGL10Context(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->i:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->j:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->k:Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;)V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V

    return-void
.end method

.method public setKeepFrameOnResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->h:Z

    return-void
.end method
