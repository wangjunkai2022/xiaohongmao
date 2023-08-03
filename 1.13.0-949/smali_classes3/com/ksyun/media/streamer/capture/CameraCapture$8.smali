.class Lcom/ksyun/media/streamer/capture/CameraCapture$8;
.super Ljava/lang/Object;
.source "CameraCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/CameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/CameraCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object p2, p2, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgBufSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    .line 3
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->y(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->y(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;

    move-result-object p2

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v2

    iget v2, v2, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->a:I

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    .line 5
    invoke-static {v3}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v3

    iget v3, v3, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->b:I

    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v4}, Lcom/ksyun/media/streamer/capture/CameraCapture;->z(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z

    move-result v4

    .line 6
    invoke-interface {p2, p1, v2, v3, v4}, Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;->onPreviewFrame([BIIZ)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->A(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/nio/ByteBuffer;

    move-result-object p2

    if-nez p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->A(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    array-length v2, p1

    if-ge p2, v2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->A(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->A(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->B(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 15
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->w(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result p2

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->f(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v2

    invoke-static {p2, v2}, Lcom/ksyun/media/streamer/capture/camera/c;->a(II)I

    move-result p2

    .line 16
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->f(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    rsub-int p2, p2, 0x168

    .line 17
    rem-int/lit16 p2, p2, 0x168

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    new-instance v4, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 19
    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v5

    iget v5, v5, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->a:I

    iget-object v6, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v6}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v6

    iget v6, v6, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->b:I

    invoke-direct {v4, v3, v5, v6, p2}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII)V

    .line 20
    invoke-static {v2, v4}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 21
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2, v3}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;Z)Z

    .line 22
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object v2, p2, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgBufSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->C(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 23
    :cond_4
    new-instance p2, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->C(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    .line 24
    invoke-static {v3}, Lcom/ksyun/media/streamer/capture/CameraCapture;->A(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgBufSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->i(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 28
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$8;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->i(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a([B)V

    :cond_6
    return-void
.end method
