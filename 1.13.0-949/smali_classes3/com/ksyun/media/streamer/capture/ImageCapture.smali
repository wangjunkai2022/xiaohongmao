.class public Lcom/ksyun/media/streamer/capture/ImageCapture;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageCapture"


# instance fields
.field private a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

.field private b:F

.field private c:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->b:F

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImageCapture;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object p0
.end method


# virtual methods
.method public getRepeatFps()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->b:F

    return v0
.end method

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object v0
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/ImageCapture;->stop()V

    return-void
.end method

.method public setRepeatFps(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->b:F

    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ksyun/media/streamer/capture/ImageCapture;->start(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public start(Landroid/graphics/Bitmap;Z)V
    .locals 6

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;Z)V

    .line 5
    iget p1, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->b:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-long v4, p2

    .line 6
    new-instance v0, Ljava/util/Timer;

    const-string p1, "ImageRepeat"

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->c:Ljava/util/Timer;

    .line 7
    new-instance v1, Lcom/ksyun/media/streamer/capture/ImageCapture$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/ImageCapture$1;-><init>(Lcom/ksyun/media/streamer/capture/ImageCapture;)V

    move-wide v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "ImageCapture"

    const-string p2, "invalid bitmap, start failed!"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->c:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->c:Ljava/util/Timer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
