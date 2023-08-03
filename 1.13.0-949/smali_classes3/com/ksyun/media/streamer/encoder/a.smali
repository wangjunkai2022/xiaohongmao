.class public Lcom/ksyun/media/streamer/encoder/a;
.super Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;
.source "ImgTexToBitmap.java"


# static fields
.field private static final d:Ljava/lang/String; = "ImgTexToBitmap"


# instance fields
.field private e:Z

.field private f:F

.field private g:Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

.field private h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/a;->e:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/a;->f:F

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/a;->g:Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/a;->h:Ljava/lang/Thread;

    const/4 p1, 0x5

    .line 6
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->setOutputColorFormat(I)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/encoder/a;->f:F

    return p0
.end method

.method private a(F)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 17
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/a;->f:F

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/encoder/a;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/a;->g:Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    return-object p0
.end method


# virtual methods
.method public a(FLcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/a;->a(F)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a:Z

    .line 21
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/a;->e:Z

    .line 22
    iput-object p2, p0, Lcom/ksyun/media/streamer/encoder/a;->g:Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    return-void
.end method

.method protected a(Landroid/media/ImageReader;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 5
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 7
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 8
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 9
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    mul-int v2, v7, v5

    sub-int v6, v1, v2

    .line 10
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ksyun/media/streamer/encoder/a$1;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/ksyun/media/streamer/encoder/a$1;-><init>(Lcom/ksyun/media/streamer/encoder/a;IIIILjava/nio/ByteBuffer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/a;->h:Ljava/lang/Thread;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/a;->e:Z

    .line 13
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a:Z

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method public a(Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/ksyun/media/streamer/encoder/a;->a(FLcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V

    return-void
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

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/a;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/a;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/a;->h:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
