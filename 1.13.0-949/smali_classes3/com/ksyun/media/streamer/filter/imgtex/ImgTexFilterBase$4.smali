.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;
.super Ljava/lang/Object;
.source "ImgTexFilterBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/nio/ByteBuffer;

.field final synthetic d:J

.field final synthetic e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;IILjava/nio/ByteBuffer;J)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->a:I

    iput p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->b:I

    iput-object p4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->c:Ljava/nio/ByteBuffer;

    iput-wide p5, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->a:I

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 5
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_1

    .line 6
    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    .line 7
    invoke-static {v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->b:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    .line 8
    invoke-static {v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    .line 9
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, v9

    move-object v7, v1

    .line 11
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->h(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->h(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    .line 14
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16
    iget v6, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->a:I

    iget v7, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->b:I

    const/4 v9, 0x1

    move-object v3, v0

    move-object v8, v1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->h(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->h(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    .line 19
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frame in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;->d:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgTexFilterBase"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
