.class Lcom/ksyun/media/streamer/encoder/a$1;
.super Ljava/lang/Object;
.source "ImgTexToBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/a;->a(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/nio/ByteBuffer;

.field final synthetic f:Lcom/ksyun/media/streamer/encoder/a;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/a;IIIILjava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    iput p2, p0, Lcom/ksyun/media/streamer/encoder/a$1;->a:I

    iput p3, p0, Lcom/ksyun/media/streamer/encoder/a$1;->b:I

    iput p4, p0, Lcom/ksyun/media/streamer/encoder/a$1;->c:I

    iput p5, p0, Lcom/ksyun/media/streamer/encoder/a$1;->d:I

    iput-object p6, p0, Lcom/ksyun/media/streamer/encoder/a$1;->e:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/a$1;->a:I

    iget v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->b:I

    iget v2, p0, Lcom/ksyun/media/streamer/encoder/a$1;->c:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->d:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/encoder/a;->a(Lcom/ksyun/media/streamer/encoder/a;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    .line 4
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    .line 5
    invoke-static {v2}, Lcom/ksyun/media/streamer/encoder/a;->a(Lcom/ksyun/media/streamer/encoder/a;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/ksyun/media/streamer/encoder/a$1;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    .line 6
    invoke-static {v3}, Lcom/ksyun/media/streamer/encoder/a;->a(Lcom/ksyun/media/streamer/encoder/a;)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/encoder/a;->b(Lcom/ksyun/media/streamer/encoder/a;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/encoder/a;->b(Lcom/ksyun/media/streamer/encoder/a;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/encoder/a;->b(Lcom/ksyun/media/streamer/encoder/a;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/a$1;->f:Lcom/ksyun/media/streamer/encoder/a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/encoder/a;->b(Lcom/ksyun/media/streamer/encoder/a;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    .line 13
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_0
    return-void
.end method
