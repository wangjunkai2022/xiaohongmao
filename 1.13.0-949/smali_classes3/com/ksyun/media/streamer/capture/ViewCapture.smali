.class public Lcom/ksyun/media/streamer/capture/ViewCapture;
.super Ljava/lang/Object;
.source "ViewCapture.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ViewCapture"


# instance fields
.field private a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

.field private b:F

.field private c:I

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:Landroid/view/View;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Canvas;

.field private i:Ljava/lang/Object;

.field private j:Ljava/nio/ByteBuffer;

.field private k:Landroid/os/ConditionVariable;

.field private l:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->b:F

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->i:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->k:Landroid/os/ConditionVariable;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->setUseSyncMode(Z)V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 8
    iget v2, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->c:I

    if-gtz v2, :cond_2

    iget v3, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->d:I

    if-lez v3, :cond_5

    :cond_2
    if-nez v2, :cond_3

    .line 9
    iget v2, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->d:I

    mul-int v2, v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->c:I

    .line 10
    :cond_3
    iget v2, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->d:I

    if-nez v2, :cond_4

    .line 11
    iget v2, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->c:I

    mul-int v2, v2, v1

    div-int/2addr v2, v0

    iput v2, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->d:I

    .line 12
    :cond_4
    iget v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->c:I

    .line 13
    iget v1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->d:I

    :cond_5
    int-to-float v2, v0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " scale: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ViewCapture"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->g:Landroid/graphics/Bitmap;

    .line 18
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->g:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->h:Landroid/graphics/Canvas;

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->g:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->h:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 22
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->g:Landroid/graphics/Bitmap;

    return-object p1

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ViewCapture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->l:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ViewCapture;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/os/ConditionVariable;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->k:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x4

    .line 25
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->i:Ljava/lang/Object;

    monitor-enter v3

    .line 26
    :try_start_0
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->j:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_0

    mul-int v4, v2, v1

    .line 27
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->j:Ljava/nio/ByteBuffer;

    .line 28
    :cond_0
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 29
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 30
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 31
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v2, v0, v1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Ljava/nio/ByteBuffer;III)V

    .line 32
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;Z)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/ViewCapture;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object v0
.end method

.method public getTargetHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->d:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->c:I

    return v0
.end method

.method public getUpdateFps()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->b:F

    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/ViewCapture;->stop()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->release()V

    return-void
.end method

.method public setTargetResolution(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->c:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->d:I

    return-void
.end method

.method public setUpdateFps(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->b:F

    return-void
.end method

.method public start(Landroid/view/View;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->f:Landroid/view/View;

    .line 2
    iget p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->b:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v5, v0

    .line 3
    new-instance v1, Ljava/util/Timer;

    const-string p1, "ViewRepeat"

    invoke-direct {v1, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->e:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/ksyun/media/streamer/capture/ViewCapture$1;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/capture/ViewCapture$1;-><init>(Lcom/ksyun/media/streamer/capture/ViewCapture;)V

    const-wide/16 v3, 0x28

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->e:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->e:Ljava/util/Timer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;Z)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->j:Ljava/nio/ByteBuffer;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture;->g:Landroid/graphics/Bitmap;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
