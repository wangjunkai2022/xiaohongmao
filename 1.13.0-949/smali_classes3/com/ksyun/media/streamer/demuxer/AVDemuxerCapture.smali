.class public Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;
.super Ljava/lang/Object;
.source "AVDemuxerCapture.java"

# interfaces
.implements Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnAudioPtsChangedListener;,
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnVideoPtsChangedListener;,
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;,
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;
    }
.end annotation


# static fields
.field public static final AV_DEMUXER_CAPTURE_ON_PREPARED:I = 0x2

.field public static final AV_DEMUXER_CAPTURE_OPEN_FAIlED:I = -0x1

.field public static final AV_DEMUXER_CAPTURE_STARTED:I = 0x0

.field public static final AV_DEMUXER_CAPTURE_START_FAIlED:I = -0x1

.field public static final AV_DEMUXER_CAPTURE_STOP:I = 0x1

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:I = 0x0

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:Ljava/lang/String; = "AVDemuxerCapture"

.field private static final m:Z = false


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:J

.field private H:J

.field private I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

.field private J:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;

.field private K:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;

.field private L:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnVideoPtsChangedListener;

.field private M:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnAudioPtsChangedListener;

.field private volatile N:Z

.field private final O:Landroid/os/ConditionVariable;

.field private P:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected a:Landroid/os/HandlerThread;

.field protected b:Landroid/os/Handler;

.field public mDemuxRangeStartTime:J

.field public mDemuxRangeStopTime:J

.field private n:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:J

.field private volatile r:Z

.field private s:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

.field private t:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

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

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->r:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStartTime:J

    .line 4
    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStopTime:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->N:Z

    .line 6
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->O:Landroid/os/ConditionVariable;

    .line 7
    new-instance v3, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v3}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->n:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 8
    new-instance v3, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v3}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->o:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 9
    new-instance v3, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-direct {v3}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;-><init>()V

    iput-object v3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    .line 10
    iput v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->x:I

    .line 11
    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->q:J

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DemuxerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;

    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;-><init>(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "AVDemuxerCapture"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPrepare on invalid state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "doPrepare"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->K:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 7
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;->onError(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;IJ)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->g()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "AVDemuxerCapture"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStart on invalid state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "doStart"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->f()V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->d()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->d()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->x:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->q:J

    .line 5
    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStartTime:J

    .line 6
    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStopTime:J

    return-void
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->e()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->J:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, p0, v1, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;->onInfo(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a()I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->K:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 5
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;->onError(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;IJ)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "AVDemuxerCapture"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFormatChanged on invalid state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "doFormatChanged"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget v3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->B:I

    iget v4, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->y:I

    iget v5, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->z:I

    iget v6, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->A:I

    iget v7, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->D:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;-><init>(IIIII)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->s:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 5
    iget-wide v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->H:J

    iput-wide v1, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->n:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->F:I

    iget v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->u:I

    iget v3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->v:I

    iget v4, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->C:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(IIII)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->t:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 8
    iget-wide v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->G:J

    iput-wide v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    .line 9
    iget v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->w:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->o:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->D:I

    return v0
.end method

.method public getAudioCodecParPtr()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->H:J

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->n:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->A:I

    return v0
.end method

.method public getDegree()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->w:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->x:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->E:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->v:I

    return v0
.end method

.method public getProgress()F
    .locals 11

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->x:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->q:J

    iget-wide v4, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStartTime:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    return v1

    :cond_1
    sub-long/2addr v2, v4

    long-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getSampleFormat()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->y:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->z:I

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->C:I

    return v0
.end method

.method public getVideoCodecParPtr()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->G:J

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->o:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->u:I

    return v0
.end method

.method public isPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->N:Z

    return v0
.end method

.method public onDemuxed(JLjava/nio/ByteBuffer;JJII)V
    .locals 14

    move-object v1, p0

    move-wide/from16 v11, p6

    move/from16 v0, p8

    .line 1
    iget-object v2, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->O:Landroid/os/ConditionVariable;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v3, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->N:Z

    if-eqz v3, :cond_0

    const-string v3, "AVDemuxerCapture"

    const-string v4, "demuxer"

    .line 3
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v3, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->O:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 5
    iget-object v3, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->O:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 6
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_4

    const-string v0, "AVDemuxerCapture"

    const-string v2, "send eos frame"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->t:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz v0, :cond_1

    .line 9
    new-instance v2, Lcom/ksyun/media/streamer/framework/ImgPacket;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object p1, v2

    move-object/from16 p2, v0

    move-object/from16 p3, v6

    move-wide/from16 p4, v7

    move-wide/from16 p6, v9

    invoke-direct/range {p1 .. p7}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJ)V

    .line 10
    iget v0, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 11
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->o:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 12
    :cond_1
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->s:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 13
    new-instance v6, Lcom/ksyun/media/streamer/framework/AudioPacket;

    invoke-direct {v6, v0, v2, v4, v5}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;J)V

    .line 14
    iget v0, v6, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v6, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 15
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->n:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v6}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 16
    :cond_2
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->J:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0, p0, v3, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;->onInfo(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;ILjava/lang/String;)V

    :cond_3
    return-void

    .line 19
    :cond_4
    iget-wide v6, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStopTime:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_5

    cmp-long v2, v11, v6

    if-lez v2, :cond_5

    return-void

    :cond_5
    move/from16 v2, p9

    if-ne v2, v3, :cond_7

    .line 20
    new-instance v9, Lcom/ksyun/media/streamer/framework/AudioPacket;

    iget-object v3, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->s:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    move-object v2, v9

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;JJ)V

    .line 21
    iput v0, v9, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 22
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->M:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnAudioPtsChangedListener;

    if-eqz v0, :cond_6

    .line 23
    invoke-interface {v0, v11, v12}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnAudioPtsChangedListener;->onAudioPtsChanged(J)V

    .line 24
    :cond_6
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->n:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v9}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 25
    invoke-virtual {v9}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    goto :goto_0

    .line 26
    :cond_7
    iput-wide v11, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->q:J

    .line 27
    new-instance v13, Lcom/ksyun/media/streamer/framework/ImgPacket;

    iget-object v3, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->t:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-object v2, v13

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    move-wide/from16 v7, p4

    move-wide v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJJ)V

    .line 28
    iput v0, v13, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 29
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->L:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnVideoPtsChangedListener;

    if-eqz v0, :cond_8

    .line 30
    invoke-interface {v0, v11, v12}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnVideoPtsChangedListener;->onVideoPtsChanged(J)V

    .line 31
    :cond_8
    iget-object v0, v1, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->o:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v13}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 32
    invoke-virtual {v13}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPrepared()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    if-eqz v0, :cond_1

    const-string v0, "AVDemuxerCapture"

    const-string v1, "onPrepared"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->G:J

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->H:J

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->C:I

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->D:I

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->E:I

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->u:I

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->v:I

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->w:I

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->F:I

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->y:I

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->z:I

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->A:I

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->B:I

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->x:I

    .line 17
    iget-wide v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 18
    iget-wide v4, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStartTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->x:I

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->J:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;->onInfo(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;ILjava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->r:Z

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->start()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->O:Landroid/os/ConditionVariable;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->N:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->n:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->o:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :goto_1
    iput-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->b()I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->O:Landroid/os/ConditionVariable;

    monitor-enter v0

    :try_start_0
    const-string v1, "AVDemuxerCapture"

    const-string v2, "resume"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->N:Z

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->O:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->r:Z

    return-void
.end method

.method public setAvDemuxerCaptureRanges(JJ)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStartTime:J

    .line 2
    iput-wide p3, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->mDemuxRangeStopTime:J

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(JJ)I

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "AVDemuxerCapture"

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDataSource in invalid state:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->p:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->t:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->s:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-virtual {v0, p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;)V

    .line 8
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a()V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnAudioPtsChangedListener(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnAudioPtsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->M:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnAudioPtsChangedListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->K:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->J:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnInfoListener;

    return-void
.end method

.method public setOnVideoPtsChangedListener(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnVideoPtsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->L:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$OnVideoPtsChangedListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "AVDemuxerCapture"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start in invalid state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "start"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "AVDemuxerCapture"

    const-string v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->I:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->b()I

    :cond_0
    return-void
.end method
