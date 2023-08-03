.class public Lcom/ksyun/media/streamer/capture/a;
.super Lcom/ksyun/media/streamer/framework/SrcPin;
.source "ImgBufSrcPin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SrcPin<",
        "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[I

.field private e:Ljava/nio/ByteBuffer;

.field private f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 37
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/a;->a:[I

    .line 39
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;Z)V
    .locals 15

    move-object v1, p0

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-object v11, v2

    const/4 v12, 0x0

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    new-instance v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {v2, v5, v3, v4, v10}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII)V

    const/4 v3, 0x1

    move-object v11, v2

    const/4 v12, 0x1

    .line 8
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v13, v8, v9

    mul-int/lit8 v14, v13, 0x4

    .line 10
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->a:[I

    if-nez v2, :cond_3

    .line 11
    new-array v2, v13, [I

    iput-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->a:[I

    .line 12
    :cond_3
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->a:[I

    array-length v2, v2

    if-ge v2, v13, :cond_4

    .line 13
    iput-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->a:[I

    .line 14
    new-array v2, v13, [I

    iput-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->a:[I

    .line 15
    :cond_4
    iget-object v3, v1, Lcom/ksyun/media/streamer/capture/a;->a:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 17
    :cond_5
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_6

    .line 18
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    .line 19
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    :cond_6
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v14, :cond_7

    .line 21
    iput-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    .line 22
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    .line 23
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    :cond_7
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 25
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->a:[I

    invoke-virtual {v0, v2, v10, v13}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    if-eqz v12, :cond_8

    .line 26
    invoke-virtual {p0, v11}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->e:Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v11, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Ljava/nio/ByteBuffer;J)V

    iput-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    .line 28
    :cond_8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_9
    monitor-exit p0

    return-void

    .line 31
    :cond_a
    :goto_2
    :try_start_1
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/a;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_b

    .line 32
    monitor-exit p0

    return-void

    .line 33
    :cond_b
    :try_start_2
    iput-object v0, v1, Lcom/ksyun/media/streamer/capture/a;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    .line 34
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 35
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
