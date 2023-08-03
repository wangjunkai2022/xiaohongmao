.class public Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;
.super Lcom/ksyun/media/streamer/decoder/Decoder;
.source "MediaCodecVideoDecoder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/decoder/Decoder<",
        "Lcom/ksyun/media/streamer/framework/ImgPacket;",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;",
        "Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "MediaCodecVideoDecoder"


# instance fields
.field private h:Landroid/media/MediaCodec;

.field private i:Landroid/media/MediaCodec$BufferInfo;

.field private j:[Ljava/nio/ByteBuffer;

.field private k:[Ljava/nio/ByteBuffer;

.field private l:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

.field private m:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private o:I

.field private p:Landroid/graphics/SurfaceTexture;

.field private q:Landroid/view/Surface;

.field private r:[F

.field private s:I

.field private final t:Ljava/lang/Object;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

.field private z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->j:[Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->k:[Ljava/nio/ByteBuffer;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->v:I

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->w:I

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->x:I

    .line 8
    new-instance v1, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;-><init>(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 9
    new-instance v1, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;-><init>(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    .line 10
    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p1, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    invoke-virtual {p1, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 13
    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->r:[F

    .line 14
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->o:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->p:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->q:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object p0
.end method

.method private a(J)V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 43
    :try_start_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->u:Z

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->p:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 49
    :cond_1
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v4, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->o:I

    iget-object v5, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->r:[F

    const-wide/16 v1, 0x3e8

    div-long v6, p1, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 50
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void

    :catchall_0
    move-exception p1

    .line 51
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private a(Z)V
    .locals 5

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->i:Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->i:Landroid/media/MediaCodec$BufferInfo;

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->x:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ltz v0, :cond_4

    if-eqz v2, :cond_2

    .line 21
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$1;-><init>(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)V

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 22
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->flush()V

    .line 23
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->stop()V

    goto/16 :goto_2

    .line 24
    :cond_2
    iget v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->w:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->w:I

    .line 25
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v3, :cond_0

    .line 27
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(J)V

    goto :goto_0

    :cond_4
    const/4 v1, -0x3

    const-string v2, "MediaCodecVideoDecoder"

    if-ne v0, v1, :cond_5

    .line 28
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->k:[Ljava/nio/ByteBuffer;

    const-string v0, "decoder output buffers have changed."

    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 30
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode output format changed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "width"

    .line 32
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    .line 33
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 34
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->l:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v3, v2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 35
    iget v1, v2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 36
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->r:[F

    iget v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->s:I

    invoke-static {v0, v3, v1, v2}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->calTransformMatrix([FFFI)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    if-nez p1, :cond_7

    .line 37
    iget p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->v:I

    iget v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->w:I

    sub-int v1, p1, v0

    mul-int/lit8 v1, v1, 0x64

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x5

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->x:I

    goto :goto_2

    :cond_7
    const-string v0, "waiting decoder flushing..."

    .line 38
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2710

    .line 39
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->x:I

    goto/16 :goto_0

    .line 40
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->p:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private b(Lcom/ksyun/media/streamer/framework/ImgPacket;)V
    .locals 5

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    .line 7
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 8
    iget v2, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "video/avc"

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "video/hevc"

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const-string v2, "video/mp4v-es"

    .line 9
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v3, 0x7f000789

    .line 10
    iget v4, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v1, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    invoke-static {v2, v4, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    const-string v2, "rotation-degrees"

    .line 13
    iget-object v3, p1, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v3, v3, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    const-string v2, "csd-0"

    .line 14
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->q:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 17
    :try_start_2
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 18
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 19
    :cond_3
    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->q:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 21
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 22
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->j:[Ljava/nio/ByteBuffer;

    .line 23
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->k:[Ljava/nio/ByteBuffer;

    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_4
    const-string v0, "MediaCodecVideoDecoder"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDecoder: unsupport codec id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->q:Landroid/view/Surface;

    return-object p0
.end method

.method private c(Lcom/ksyun/media/streamer/framework/ImgPacket;)V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->v:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->v:I

    const-wide/16 v3, -0x1

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ltz v6, :cond_5

    .line 5
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    or-int/lit8 v0, v1, 0x4

    move v11, v0

    goto :goto_1

    :cond_2
    move v11, v1

    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    move v8, v0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->j:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-lez v8, :cond_4

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->j:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    :cond_4
    iget-object v5, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const-wide/16 v3, 0x3e8

    mul-long v9, v0, v3

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 11
    invoke-direct {p0, v2}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Z)V

    :cond_5
    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->o:I

    return p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/framework/ImgPacket;)I

    move-result p1

    return p1
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/ImgPacket;)I
    .locals 1

    .line 14
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 15
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->b(Lcom/ksyun/media/streamer/framework/ImgPacket;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->c(Lcom/ksyun/media/streamer/framework/ImgPacket;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 3

    .line 6
    check-cast p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->l:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 8
    iget v1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->l:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->s:I

    .line 10
    rem-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v2, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    invoke-direct {v0, v1, v2, p1}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v2, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    invoke-direct {v0, v1, v2, p1}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->h:Landroid/media/MediaCodec;

    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaCodecVideoDecoder"

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->u:Z

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->p:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->t:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->release()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->m:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V

    return-void
.end method
