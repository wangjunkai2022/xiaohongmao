.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "ImgTexFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    return p0
.end method

.method private b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v1, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    .line 4
    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    iget v1, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eq v0, v1, :cond_3

    .line 5
    :cond_2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v3, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    if-ne v0, v3, :cond_3

    .line 6
    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 9
    iget-object v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v1

    iget v3, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v4, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/ksyun/media/streamer/util/gles/FboManager;->getTextureAndLock(II)I

    move-result v1

    iput v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v1, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->getFramebuffer(I)I

    move-result v0

    const/16 v1, 0xba2

    .line 11
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 12
    iget v1, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v3, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-static {v4, v4, v1, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const v1, 0x8d40

    .line 13
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x4000

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 14
    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onDraw([Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->f(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v7, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v9, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-static {v0, v7, v9}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;II)V

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0, v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Z

    move-result-object v0

    iget v7, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    .line 21
    :cond_6
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 22
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v0

    aget v0, v0, v4

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v1

    aget v1, v1, v6

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v4

    aget v4, v4, v5

    iget-object v5, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v5}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v5

    aget v3, v5, v3

    invoke-static {v0, v1, v4, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 23
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 24
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v4, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;Lcom/ksyun/media/streamer/util/gles/FboManager;I[FJ)V

    .line 25
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    iput p1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 26
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 27
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 28
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iput v8, p1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 29
    :try_start_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 30
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget-object v2, v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v2

    iget-object v7, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v7, v7, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    invoke-virtual {v2, v7}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    .line 31
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iput v8, v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    .line 32
    :cond_9
    instance-of v2, v0, Lcom/ksyun/media/streamer/util/gles/GLProgramLoadException;

    if-eqz v2, :cond_a

    .line 33
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v2, v8}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->sendError(I)V

    goto :goto_1

    .line 34
    :cond_a
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    const/4 v7, -0x2

    invoke-virtual {v2, v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->sendError(I)V

    :goto_1
    const-string v2, "ImgTexFilterBase"

    const-string v7, "Draw frame error!"

    .line 35
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Z

    move-result-object v0

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    .line 39
    :cond_b
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 40
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object p1

    aget p1, p1, v4

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v0

    aget v0, v0, v6

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void

    .line 41
    :goto_2
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Z

    move-result-object v2

    iget v7, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_c

    .line 42
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    .line 43
    :cond_c
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 44
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object p1

    aget p1, p1, v4

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v1

    aget v1, v1, v6

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v2

    aget v2, v2, v5

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I

    move-result-object v4

    aget v3, v4, v3

    invoke-static {p1, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v2, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    if-eq v0, v2, :cond_2

    .line 3
    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Z

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->ref()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aput-object p1, v0, v1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    aput-object p1, v0, v1

    .line 9
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object p1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :goto_0
    return-void
.end method

.method public declared-synchronized onConnected(Lcom/ksyun/media/streamer/framework/SrcPin;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onConnected(Lcom/ksyun/media/streamer/framework/SrcPin;)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Z

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    instance-of p1, p1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;

    aput-boolean p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDisconnect(Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v2, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->release()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onDisconnect(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;)V

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgTexFormat;)V

    .line 2
    iget p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->b:I

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    :cond_0
    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method
