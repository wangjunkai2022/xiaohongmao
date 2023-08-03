.class public Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;
.super Ljava/lang/Object;
.source "AVDemuxerMultiCapture.java"

# interfaces
.implements Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;,
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;,
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnMuxerFormatDetected;
    }
.end annotation


# static fields
.field public static final AV_DEMUXER_CAPTURE_CONFIG_DIFF:I = -0x2

.field public static final AV_DEMUXER_CAPTURE_ONPREPARED:I = 0x2

.field public static final AV_DEMUXER_CAPTURE_START:I = 0x0

.field public static final AV_DEMUXER_CAPTURE_START_FAIlED:I = -0x1

.field public static final AV_DEMUXER_CAPTURE_STOP:I = 0x1

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x4

.field private static final f:I = 0x21

.field private static final g:Ljava/lang/String; = "AVDemuxerMultiCapture"

.field private static final h:Z = false


# instance fields
.field private A:I

.field private B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

.field private C:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;

.field private D:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private G:Z

.field private H:J

.field private I:J

.field protected a:Landroid/os/HandlerThread;

.field protected b:Landroid/os/Handler;

.field private i:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

.field private p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

.field private q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->F:Z

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->G:Z

    .line 4
    new-instance v1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->i:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->j:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->u:I

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->m:J

    .line 9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->E:Ljava/util/List;

    .line 11
    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 12
    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 13
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a()V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;)Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Demuxer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;

    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;-><init>(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 13

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->d()V

    .line 8
    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 10
    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 11
    iput-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    return-void

    .line 12
    :cond_1
    new-instance v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    .line 13
    invoke-virtual {v0, p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;)V

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    iget-object v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->E:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_6

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const-wide/16 v4, 0x0

    if-ne p1, v0, :cond_4

    .line 16
    iget-object v7, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz v7, :cond_2

    .line 17
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJ)V

    .line 18
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->j:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    if-eqz p1, :cond_3

    .line 21
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    invoke-direct {v0, p1, v1, v4, v5}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;J)V

    .line 22
    iget p1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 23
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->i:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->C:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;

    if-eqz p1, :cond_5

    .line 25
    invoke-interface {p1, p0, v3, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;->onInfo(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;II)V

    goto :goto_0

    .line 26
    :cond_4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->n:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->l:J

    .line 27
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->m:J

    const-wide/16 v2, 0x21

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->k:J

    .line 28
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(I)V

    .line 29
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->D:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;

    if-eqz p1, :cond_7

    const/4 v0, -0x1

    .line 30
    invoke-interface {p1, p0, v0, v4, v5}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;->onError(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;IJ)V

    goto :goto_1

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->C:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;

    if-eqz v0, :cond_7

    .line 32
    invoke-interface {v0, p0, v2, p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;->onInfo(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;II)V

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(I)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->z:I

    return v0
.end method

.method public getAudioCodecParPtr()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->I:J

    return-wide v0
.end method

.method public getAudioSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->i:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->x:I

    return v0
.end method

.method public getDegree()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->t:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->u:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFrameRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->A:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->s:I

    return v0
.end method

.method public getProgress()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->u:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-wide v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->m:J

    long-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getSampleFormat()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->v:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->w:I

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->y:I

    return v0
.end method

.method public getVideoCodecParPtr()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->H:J

    return-wide v0
.end method

.method public getVideoSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->j:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->r:I

    return v0
.end method

.method public onDemuxed(JLjava/nio/ByteBuffer;JJII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 1
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_2

    .line 2
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/ksyun/media/streamer/framework/ImgPacket;

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    invoke-direct/range {p1 .. p7}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJ)V

    .line 4
    iget v1, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 5
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->j:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    if-eqz v1, :cond_1

    .line 7
    new-instance v2, Lcom/ksyun/media/streamer/framework/AudioPacket;

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v1, v3, v6, v7}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;J)V

    .line 8
    iget v1, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 9
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->i:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 10
    :cond_1
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->C:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1, p0, v5, v4}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;->onInfo(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;II)V

    goto :goto_0

    .line 12
    :cond_2
    iget-wide v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->n:J

    iput-wide v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->l:J

    .line 13
    iget-wide v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->m:J

    const-wide/16 v3, 0x21

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->k:J

    .line 14
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_a

    .line 15
    iget-boolean v3, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->F:Z

    if-eqz v3, :cond_5

    iget-boolean v6, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->G:Z

    if-eqz v6, :cond_5

    return-void

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 16
    :goto_1
    iput-boolean v3, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->F:Z

    .line 17
    iget-boolean v3, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->G:Z

    if-eqz v3, :cond_8

    move v4, v3

    goto :goto_2

    :cond_8
    if-ne v2, v5, :cond_9

    const/4 v4, 0x1

    :cond_9
    :goto_2
    iput-boolean v4, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->G:Z

    :cond_a
    if-ne v2, v5, :cond_b

    .line 18
    iget-wide v2, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->l:J

    add-long v2, p6, v2

    .line 19
    new-instance v11, Lcom/ksyun/media/streamer/framework/AudioPacket;

    iget-object v5, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    move-object v4, v11

    move-object/from16 v6, p3

    move-wide v7, v2

    move-wide/from16 v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;JJ)V

    .line 20
    iput v1, v11, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 21
    iput-wide v2, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->n:J

    .line 22
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->i:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v11}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 23
    invoke-virtual {v11}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    goto :goto_3

    .line 24
    :cond_b
    iget-wide v2, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->k:J

    add-long v13, p6, v2

    add-long v9, p4, v2

    .line 25
    new-instance v2, Lcom/ksyun/media/streamer/framework/ImgPacket;

    iget-object v5, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-object v4, v2

    move-object/from16 v6, p3

    move-wide v7, v13

    move-wide/from16 v11, p1

    invoke-direct/range {v4 .. v12}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJJ)V

    .line 26
    iput v1, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 27
    iget-wide v3, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->m:J

    cmp-long v1, v13, v3

    if-lez v1, :cond_c

    .line 28
    iput-wide v13, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->m:J

    .line 29
    :cond_c
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->j:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 30
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    :goto_3
    return-void
.end method

.method public onPrepared()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->y:I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->z:I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->r:I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->s:I

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->t:I

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->v:I

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->w:I

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->x:I

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->u:I

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->A:I

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->b(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->H:J

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->b(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->I:J

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->C:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, p0, v1, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;->onInfo(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;II)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    if-nez v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->v:I

    iget v2, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->x:I

    iget v2, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->w:I

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->r:I

    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v2, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->s:I

    iget v2, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->t:I

    iget v1, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    if-eq v0, v1, :cond_4

    :cond_2
    const-string v0, "AVDemuxerMultiCapture"

    const-string v1, "audio config diff"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->D:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;

    const/4 v1, -0x2

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;->onError(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;IJ)V

    goto :goto_1

    .line 20
    :cond_3
    :goto_0
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    const/16 v5, 0x100

    iget v6, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->v:I

    iget v7, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->w:I

    iget v8, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->x:I

    iget v9, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->z:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;-><init>(IIIII)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->o:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 21
    iget-wide v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->I:J

    iput-wide v1, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    .line 22
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->i:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    const/4 v1, 0x1

    iget v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->r:I

    iget v3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->s:I

    iget v4, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(IIII)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 24
    iget v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->t:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    .line 25
    iget-wide v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->H:J

    iput-wide v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    .line 26
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->j:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 27
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->B:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a()I

    :cond_5
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->D:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->C:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnInfoListener;

    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->E:Ljava/util/List;

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->b()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->c()V

    return-void
.end method
