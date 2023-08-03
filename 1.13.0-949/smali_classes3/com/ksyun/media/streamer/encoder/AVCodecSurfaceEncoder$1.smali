.class Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;
.super Ljava/lang/Object;
.source "AVCodecSurfaceEncoder.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->a(Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {p1}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->a(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Landroid/media/ImageReader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    .line 5
    iget-object v5, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v5}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->b(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-result-object v5

    iget v5, v5, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget-object v6, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v6}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->b(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-result-object v6

    iget v6, v6, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    mul-int v5, v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    .line 6
    iget-object v6, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v6}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v6}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 7
    :cond_0
    iget-object v6, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->a(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    :cond_1
    iget-object v5, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v5}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 9
    iget-object v5, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v5}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    iget-object v5, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v5}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->b(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-result-object v5

    iget v5, v5, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget-object v6, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    .line 11
    invoke-static {v6}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->b(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-result-object v6

    iget v6, v6, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget-object v7, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v7}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 12
    invoke-static {v0, v2, v5, v6, v7}, Lcom/ksyun/media/streamer/encoder/ColorFormatConvert;->RGBAToI420(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->d(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-static {v2}, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;->c(Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v5, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    iget-boolean v5, v5, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Ljava/nio/ByteBuffer;JI)I

    move-result v0

    .line 15
    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    iput-boolean v1, v2, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z

    if-gez v0, :cond_3

    .line 16
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(I)V

    .line 17
    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    const/16 v0, -0x3ea

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(I)V

    :goto_1
    return-void
.end method
