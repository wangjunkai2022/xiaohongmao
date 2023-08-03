.class public Lcom/ksyun/media/player/KSYMediaRecorder;
.super Ljava/lang/Object;
.source "KSYMediaRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/KSYMediaRecorder$c;,
        Lcom/ksyun/media/player/KSYMediaRecorder$a;,
        Lcom/ksyun/media/player/KSYMediaRecorder$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "KSYMediaRecorder"

.field private static final d:I = 0x14


# instance fields
.field private A:[Ljava/nio/ByteBuffer;

.field private B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ksyun/media/player/KSYMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

.field private D:I

.field private E:I

.field private F:J

.field private G:J

.field private H:I

.field private I:Ljava/lang/Thread;

.field private J:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/ksyun/media/player/KSYMediaRecorder$c;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/ksyun/media/player/KSYMediaRecorder$c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile L:Z

.field private final M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private final R:I

.field private S:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;

.field private T:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I

.field private f:Landroid/media/MediaCodec;

.field private g:Landroid/media/MediaCodec;

.field private h:Landroid/media/MediaCodec$BufferInfo;

.field private i:Landroid/media/MediaCodec$BufferInfo;

.field private j:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/ksyun/media/player/KSYMediaRecorder$c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/ksyun/media/player/KSYMediaRecorder$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Thread;

.field private m:Ljava/lang/Thread;

.field private n:Ljava/lang/Thread;

.field private o:Ljava/lang/Thread;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video/avc"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->b:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->c:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->e:I

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->A:[Ljava/nio/ByteBuffer;

    const v0, 0xac44

    .line 6
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->D:I

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->E:I

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->F:J

    const-wide/16 v1, -0x1

    .line 9
    iput-wide v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->G:J

    const/16 v1, 0x19

    .line 10
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->H:I

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->L:Z

    const/16 v1, 0x6e

    .line 12
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->M:I

    const/16 v1, 0x6f

    .line 13
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->N:I

    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->O:I

    .line 15
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->P:I

    const/4 v0, 0x4

    .line 16
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->Q:I

    const/16 v0, 0x8

    .line 17
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->R:I

    .line 18
    new-instance v0, Lcom/ksyun/media/player/KSYMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYMediaRecorder$1;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->S:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;

    .line 19
    new-instance v0, Lcom/ksyun/media/player/KSYMediaRecorder$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYMediaRecorder$2;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->T:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 21
    iput-object p2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->q:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VideoRecorderConfig or outputPath can\'t be NULL."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYMediaRecorder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->l:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    invoke-virtual {v2}, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->getVideoBitrate()I

    move-result v2

    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    invoke-virtual {v3}, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->getAudioBitrate()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ksyun/media/player/KSYMediaPlayer;->initRecorderMuxer(Ljava/lang/String;II)V

    .line 10
    :cond_0
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->r:I

    iget v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->s:I

    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 11
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->b()I

    move-result v1

    const-string v3, "color-format"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    invoke-virtual {v1}, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->getVideoBitrate()I

    move-result v1

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 13
    iget v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->H:I

    const-string v4, "frame-rate"

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    invoke-virtual {v1}, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->getKeyFrameIntervalSecond()I

    move-result v1

    const-string v4, "i-frame-interval"

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "profile"

    const/4 v4, 0x1

    .line 15
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v1, 0x200

    const-string v5, "level"

    .line 16
    invoke-virtual {v0, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 17
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 20
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->h:Landroid/media/MediaCodec$BufferInfo;

    .line 21
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    if-nez v0, :cond_3

    .line 22
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->E:I

    const/4 v1, 0x2

    if-eq v0, v4, :cond_2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid channel count. Must be 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x10

    .line 24
    :goto_0
    iget v5, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->D:I

    const-string v6, "audio/mp4a-latm"

    invoke-static {v6, v5, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 25
    iget v5, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->D:I

    const-string v7, "sample-rate"

    invoke-virtual {v0, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 26
    iget v5, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->E:I

    const-string v7, "channel-count"

    invoke-virtual {v0, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "aac-profile"

    .line 27
    invoke-virtual {v0, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 28
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    invoke-virtual {v1}, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->getAudioBitrate()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 29
    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    .line 30
    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 31
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 32
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->i:Landroid/media/MediaCodec$BufferInfo;

    :cond_3
    return-void
.end method

.method private a(Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 4

    .line 33
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->r:I

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    .line 34
    iget v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->s:I

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->A:[Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 36
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->A:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->addVideoRawBuffer([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/ksyun/media/player/KSYMediaRecorder$c;I)V
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v0, p0

    .line 58
    iget-object v1, v0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/media/MediaCodec;->getInputImage(I)Landroid/media/Image;

    move-result-object v1

    .line 59
    invoke-static/range {p1 .. p1}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 60
    iget v4, v0, Lcom/ksyun/media/player/KSYMediaRecorder;->r:I

    add-int/lit8 v4, v4, 0xf

    div-int/lit8 v4, v4, 0x10

    .line 61
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v4

    .line 62
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 63
    :goto_0
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    array-length v9, v9

    if-ge v7, v9, :cond_4

    .line 64
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    if-nez v7, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    const/4 v10, 0x1

    :goto_1
    shr-int v11, v5, v10

    shr-int v10, v4, v10

    .line 65
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    mul-int v13, v10, v11

    .line 66
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    aget-object v14, v14, v7

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    if-ne v12, v11, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v9, v10, v8, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_1
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_4

    .line 68
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    move/from16 v16, v8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v10, :cond_1

    mul-int v17, v15, v14

    mul-int v17, v17, v11

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_3

    mul-int v18, v6, v14

    move-object/from16 v19, v1

    add-int v1, v17, v18

    add-int v18, v16, v6

    move-object/from16 v20, v2

    .line 69
    aget-byte v2, v12, v18

    invoke-virtual {v9, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto :goto_3

    :cond_3
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    add-int v16, v16, v11

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :goto_4
    add-int/2addr v8, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto :goto_0

    .line 70
    :cond_4
    iget-object v2, v0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v5, v1

    invoke-static/range {p1 .. p1}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b(Lcom/ksyun/media/player/KSYMediaRecorder$c;)J

    move-result-wide v6

    const/4 v8, 0x0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYMediaRecorder;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYMediaRecorder;[BIII)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaRecorder;->native_writeKeyData([BIII)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYMediaRecorder;[BIJI)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/ksyun/media/player/KSYMediaRecorder;->native_writeSampleData([BIJI)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYMediaRecorder;[BJ)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaRecorder;->a([BJ)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IJI)V
    .locals 8

    .line 55
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->K:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ksyun/media/player/KSYMediaRecorder$c;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;Ljava/nio/ByteBuffer;IJI)V

    .line 57
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->K:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;J)V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->w:Z

    if-nez v0, :cond_0

    .line 38
    iput-wide p2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->z:J

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->w:Z

    .line 40
    :cond_0
    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->z:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    .line 41
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->k:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/ksyun/media/player/KSYMediaRecorder$c;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;IJ)V

    .line 43
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p2, p3, v1, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 44
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a([BJ)V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->v:Z

    if-nez v0, :cond_0

    .line 47
    iput-wide p2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->y:J

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->v:Z

    .line 49
    :cond_0
    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->y:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    .line 50
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->j:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    array-length v1, p1

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/ksyun/media/player/KSYMediaRecorder$c;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;IJ)V

    .line 52
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 53
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 54
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->j:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private b()I
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const v0, 0x7f420888

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->p:I

    .line 3
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 4
    iget v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->r:I

    iget v3, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->s:I

    const-string v4, "video/avc"

    invoke-static {v4, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    .line 7
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {v7, v4}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 9
    iget-object v0, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    if-nez v0, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    const/16 v4, 0x13

    if-ne v3, v4, :cond_3

    .line 11
    iput v3, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->p:I

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_4
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->p:I

    return v0

    .line 13
    :cond_5
    :goto_3
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->p:I

    return v0
.end method

.method static synthetic b(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->l:Ljava/lang/Thread;

    return-object p0
.end method

.method private b(Ljava/nio/ByteBuffer;IJI)V
    .locals 8

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->J:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ksyun/media/player/KSYMediaRecorder$c;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;Ljava/nio/ByteBuffer;IJI)V

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->J:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private c()Lcom/ksyun/media/player/KSYMediaRecorder$c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->k:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic c(Lcom/ksyun/media/player/KSYMediaRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->g()V

    return-void
.end method

.method private d()Lcom/ksyun/media/player/KSYMediaRecorder$c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->j:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/ksyun/media/player/KSYMediaRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->h()V

    return-void
.end method

.method private e()V
    .locals 11

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    if-nez v0, :cond_4

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->d()Lcom/ksyun/media/player/KSYMediaRecorder$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0, v0, v5}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-object v1, v1, v5

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v7, v1

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b(Lcom/ksyun/media/player/KSYMediaRecorder$c;)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Video Encoder Input Buffer is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic e(Lcom/ksyun/media/player/KSYMediaRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->e()V

    return-void
.end method

.method private f()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    if-nez v1, :cond_e

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->h:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_6

    .line 5
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->u:Z

    if-nez v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->I:Ljava/lang/Thread;

    if-nez v1, :cond_3

    .line 7
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ksyun/media/player/KSYMediaRecorder$a;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/ksyun/media/player/KSYMediaRecorder$a;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;Lcom/ksyun/media/player/KSYMediaRecorder$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->I:Ljava/lang/Thread;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 9
    :cond_3
    iput-boolean v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->u:Z

    .line 10
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->n:Ljava/lang/Thread;

    if-nez v1, :cond_4

    .line 12
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ksyun/media/player/KSYMediaRecorder$b;

    invoke-direct {v2, p0, p0, v4, v4}, Lcom/ksyun/media/player/KSYMediaRecorder$b;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;Lcom/ksyun/media/player/KSYMediaRecorder;ZZ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->n:Ljava/lang/Thread;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->o:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ksyun/media/player/KSYMediaRecorder$b;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/ksyun/media/player/KSYMediaRecorder$b;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;Lcom/ksyun/media/player/KSYMediaRecorder;ZZ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->o:Ljava/lang/Thread;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-gez v1, :cond_7

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from encoder.dequeueVideoOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KSYMediaRecorder"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 19
    :cond_7
    aget-object v2, v0, v1

    if-eqz v2, :cond_d

    .line 20
    iget-object v5, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->h:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_c

    .line 21
    iget-boolean v6, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->u:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x4

    .line 22
    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    iget-object v5, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->h:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v5

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 24
    iget-object v5, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->h:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_8

    const/4 v10, 0x1

    const/16 v7, 0x6e

    .line 25
    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/ksyun/media/player/KSYMediaRecorder;->b(Ljava/nio/ByteBuffer;IJI)V

    .line 26
    iget-boolean v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    if-eqz v2, :cond_a

    .line 27
    iput-boolean v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->L:Z

    goto :goto_2

    :cond_8
    and-int/lit8 v4, v7, 0x1

    if-lez v4, :cond_9

    const/4 v4, 0x2

    const/4 v9, 0x2

    goto :goto_1

    :cond_9
    const/4 v9, 0x4

    :goto_1
    const/16 v6, 0x6e

    .line 28
    iget-wide v7, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Ljava/nio/ByteBuffer;IJI)V

    .line 29
    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->h:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->G:J

    goto :goto_3

    .line 30
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 32
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method static synthetic f(Lcom/ksyun/media/player/KSYMediaRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->f()V

    return-void
.end method

.method private g()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    if-nez v1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->c()Lcom/ksyun/media/player/KSYMediaRecorder$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v1}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-boolean v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    if-nez v4, :cond_0

    .line 9
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ltz v8, :cond_1

    .line 10
    aget-object v4, v0, v8

    .line 11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v3

    .line 12
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    .line 14
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    :cond_2
    move v10, v5

    .line 15
    invoke-static {v1}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b(Lcom/ksyun/media/player/KSYMediaRecorder$c;)J

    move-result-wide v5

    const v7, 0xf4240

    iget v9, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->D:I

    div-int/2addr v7, v9

    mul-int v7, v7, v3

    int-to-long v11, v7

    add-long/2addr v11, v5

    .line 16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v3, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v10

    .line 17
    iget-object v7, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic g(Lcom/ksyun/media/player/KSYMediaRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    return p0
.end method

.method private h()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    if-nez v1, :cond_4

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->i:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5
    aget-object v3, v0, v1

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-wide v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->F:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->F:J

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/16 v4, 0x6f

    .line 11
    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v7, 0x8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/player/KSYMediaRecorder;->b(Ljava/nio/ByteBuffer;IJI)V

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->L:Z

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v4, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->F:J

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_3

    .line 14
    iput-wide v6, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->F:J

    const/16 v4, 0x6f

    const/4 v8, 0x4

    move-object v2, p0

    move-wide v5, v6

    move v7, v8

    .line 15
    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Ljava/nio/ByteBuffer;IJI)V

    .line 16
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic h(Lcom/ksyun/media/player/KSYMediaRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->L:Z

    return p0
.end method

.method static synthetic i(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->J:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private i()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->p:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic j(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->K:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private native native_stop()V
.end method

.method private native native_writeKeyData([BIII)V
.end method

.method private native native_writeSampleData([BIJI)V
.end method


# virtual methods
.method public init(Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->w:Z

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->v:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    .line 6
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoWidth()I

    move-result v2

    iput v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->r:I

    .line 8
    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoHeight()I

    move-result v2

    iput v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->s:I

    .line 9
    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->getTrackInfo()[Lcom/ksyun/media/player/misc/KSYTrackInfo;

    move-result-object v2

    .line 10
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v4, v3, :cond_2

    aget-object v7, v2, v4

    .line 11
    invoke-virtual {v7}, Lcom/ksyun/media/player/misc/KSYTrackInfo;->getTrackType()I

    move-result v7

    if-eq v7, v1, :cond_1

    if-eq v7, v6, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaInfo()Lcom/ksyun/media/player/MediaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/ksyun/media/player/MediaInfo;->mMeta:Lcom/ksyun/media/player/KSYMediaMeta;

    if-eqz v0, :cond_5

    .line 14
    iget-object v2, v0, Lcom/ksyun/media/player/KSYMediaMeta;->mVideoStream:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    if-eqz v2, :cond_3

    iget v3, v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mFpsNum:I

    if-lez v3, :cond_3

    iget v2, v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mFpsDen:I

    if-lez v2, :cond_3

    .line 15
    div-int/2addr v3, v2

    if-lez v3, :cond_3

    .line 16
    iput v3, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->H:I

    .line 17
    :cond_3
    iget-object v0, v0, Lcom/ksyun/media/player/KSYMediaMeta;->mAudioStream:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    if-eqz v0, :cond_5

    .line 18
    iget v2, v0, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mSampleRate:I

    if-lez v2, :cond_4

    .line 19
    iput v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->D:I

    .line 20
    :cond_4
    iget v0, v0, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mChannelNumber:I

    if-lez v0, :cond_5

    if-gt v0, v6, :cond_5

    .line 21
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->E:I

    :cond_5
    if-eqz v5, :cond_a

    .line 22
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->r:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->s:I

    if-lez v0, :cond_9

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->K:Ljava/util/concurrent/BlockingQueue;

    .line 24
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->J:Ljava/util/concurrent/BlockingQueue;

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    invoke-virtual {v0}, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->getAudioRecordState()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->C:Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->setAudioBitrate(I)V

    .line 27
    :cond_6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->j:Ljava/util/concurrent/BlockingQueue;

    .line 28
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    if-nez v0, :cond_7

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->k:Ljava/util/concurrent/BlockingQueue;

    .line 30
    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 33
    :cond_8
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaPlayer;)V

    .line 34
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->a()V

    return-void

    .line 35
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Video width or height is wrong!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This media file has no video!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Input parameter is null or Android version is too low."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ksyun/media/player/KSYMediaRecorder$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2, v2}, Lcom/ksyun/media/player/KSYMediaRecorder$b;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;Lcom/ksyun/media/player/KSYMediaRecorder;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->m:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->S:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVideoRawDataListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;)V

    .line 5
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->x:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->T:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->t:Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVideoRawDataListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->l:Ljava/lang/Thread;

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 9
    :cond_2
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->m:Ljava/lang/Thread;

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 12
    :cond_3
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->n:Ljava/lang/Thread;

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->o:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 15
    :cond_4
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->o:Ljava/lang/Thread;

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->I:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 18
    :cond_5
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->I:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 22
    :cond_6
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->f:Landroid/media/MediaCodec;

    .line 23
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 25
    :cond_7
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->g:Landroid/media/MediaCodec;

    .line 26
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaRecorder;->native_stop()V

    .line 27
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->j:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_8

    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 29
    :cond_8
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->j:Ljava/util/concurrent/BlockingQueue;

    .line 30
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->k:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_9

    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 32
    :cond_9
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder;->k:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method
