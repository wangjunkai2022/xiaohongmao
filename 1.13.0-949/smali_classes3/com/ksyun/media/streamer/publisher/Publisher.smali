.class public abstract Lcom/ksyun/media/streamer/publisher/Publisher;
.super Ljava/lang/Object;
.source "Publisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/publisher/Publisher$a;,
        Lcom/ksyun/media/streamer/publisher/Publisher$b;,
        Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;
    }
.end annotation


# static fields
.field protected static final CMD_ADD_AUDIO_TRACK:I = 0x5

.field protected static final CMD_ADD_VIDEO_TRACK:I = 0x6

.field protected static final CMD_RELEASE:I = 0x4

.field protected static final CMD_START:I = 0x1

.field protected static final CMD_STOP:I = 0x2

.field protected static final CMD_WRITE_FRAME:I = 0x3

.field public static final ERROR_AV_ASYNC_ERROR:I = -0x7d4

.field public static final ERROR_INVALID_STATE:I = -0x7da

.field public static final INFO_AUDIO_HEADER_GOT:I = 0x2

.field public static final INFO_STARTED:I = 0x1

.field public static final INFO_STOPPED:I = 0x4

.field public static final INFO_VIDEO_HEADER_GOT:I = 0x3

.field protected static final INVALID_TS:J = -0x8000000000000000L

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PUBLISHING:I = 0x2

.field public static final STATE_STARTING:I = 0x1

.field public static final STATE_STOPPING:I = 0x3

.field private static final a:Ljava/lang/String; = "Publisher"

.field private static final b:Z = false

.field private static final c:I = 0x2710

.field private static final d:I = 0x32000

.field private static final e:I = 0x400

.field private static final f:I = 0x400


# instance fields
.field private g:Lcom/ksyun/media/streamer/util/FrameBufferCache;

.field private h:Lcom/ksyun/media/streamer/util/FrameBufferCache;

.field private i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/ksyun/media/streamer/framework/AVPacketBase;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Object;

.field private k:Ljava/nio/ByteBuffer;

.field private l:Ljava/nio/ByteBuffer;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAFrameDropped:I

.field protected mAudioBitrate:I

.field protected mAudioFrameGot:Z

.field protected mAudioHeaderGot:Z

.field protected mAudioTrackAdded:Z

.field protected mForceVideoFrameFirst:Z

.field protected mFramerate:F

.field protected mInitDts:J

.field protected mIsAudioOnly:Z

.field protected volatile mIsPublishing:Z

.field protected mIsVideoOnly:Z

.field protected mLastAudioDts:J

.field protected mLastVideoDts:J

.field protected final mMainHandler:Landroid/os/Handler;

.field protected mPubListener:Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;

.field protected mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

.field protected mPublishHandler:Landroid/os/Handler;

.field protected mPublishThread:Landroid/os/HandlerThread;

.field protected mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUrl:Ljava/lang/String;

.field protected mVFrameDroppedInner:I

.field protected mVFrameDroppedUpper:I

.field protected mVideoBitrate:I

.field protected mVideoHeaderGot:Z

.field protected mVideoKeyFrameGot:Z

.field protected mVideoTrackAdded:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/os/ConditionVariable;

.field private s:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->n:Z

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->o:Z

    .line 5
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->r:Landroid/os/ConditionVariable;

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/publisher/Publisher$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ksyun/media/streamer/publisher/Publisher$b;-><init>(Lcom/ksyun/media/streamer/publisher/Publisher;Lcom/ksyun/media/streamer/publisher/Publisher$1;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->s:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 7
    new-instance v1, Lcom/ksyun/media/streamer/publisher/Publisher$a;

    invoke-direct {v1, p0, v2}, Lcom/ksyun/media/streamer/publisher/Publisher$a;-><init>(Lcom/ksyun/media/streamer/publisher/Publisher;Lcom/ksyun/media/streamer/publisher/Publisher$1;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->t:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mMainHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Ljava/lang/String;)V

    .line 11
    new-instance p1, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    .line 12
    new-instance p1, Lcom/ksyun/media/streamer/publisher/Publisher$1;

    invoke-direct {p1, p0}, Lcom/ksyun/media/streamer/publisher/Publisher$1;-><init>(Lcom/ksyun/media/streamer/publisher/Publisher;)V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;)V

    .line 14
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/publisher/Publisher;)Landroid/os/ConditionVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->r:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/publisher/Publisher;Lcom/ksyun/media/streamer/util/FrameBufferCache;)Lcom/ksyun/media/streamer/util/FrameBufferCache;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->g:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/publisher/Publisher;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->l:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->handleAVFrame(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/publisher/Publisher;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getAutoWork()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    instance-of p1, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->isAudioOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->isVideoOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    :cond_3
    return-void

    .line 15
    :cond_4
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsPublishing:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->r:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->start(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->r:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->r:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    const/16 p1, -0x7da

    .line 20
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishThread:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 10
    new-instance p1, Lcom/ksyun/media/streamer/publisher/Publisher$4;

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/ksyun/media/streamer/publisher/Publisher$4;-><init>(Lcom/ksyun/media/streamer/publisher/Publisher;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/publisher/Publisher;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/publisher/Publisher;Lcom/ksyun/media/streamer/util/FrameBufferCache;)Lcom/ksyun/media/streamer/util/FrameBufferCache;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->h:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/publisher/Publisher;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/publisher/Publisher;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/publisher/Publisher;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/publisher/Publisher;)Lcom/ksyun/media/streamer/util/FrameBufferCache;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->g:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/publisher/Publisher;)Lcom/ksyun/media/streamer/util/FrameBufferCache;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->h:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/publisher/Publisher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->i:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public addMetaOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected doAddAudioTrack(Lcom/ksyun/media/streamer/framework/AudioPacket;)I
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioTrackAdded:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AudioPacket;->format:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget v2, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    iget v3, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    iget v4, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    iget v5, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    iget v6, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioBitrate:I

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    iget-wide v7, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(IIIIILjava/nio/ByteBuffer;J)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->postInfo(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioTrackAdded:Z

    :cond_1
    return p1
.end method

.method protected doAddVideoTrack(Lcom/ksyun/media/streamer/framework/ImgPacket;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v2, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    iget v3, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v4, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget v5, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mFramerate:F

    iget v6, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoBitrate:I

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    iget-wide v7, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(IIIFILjava/nio/ByteBuffer;J)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoTrackAdded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->postInfo(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoTrackAdded:Z

    :cond_0
    return p1
.end method

.method protected doRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    :cond_0
    return-void
.end method

.method protected doStart(Ljava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v4, v2, v3}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return p1
.end method

.method protected doStop()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->c()I

    return-void
.end method

.method protected doWriteFrame(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I
    .locals 16

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    if-eqz v1, :cond_1

    .line 2
    iget-wide v1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->getAvPacketOpaque()J

    move-result-wide v8

    iget-object v10, v0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    iget-wide v11, v0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    iget-wide v13, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iget v15, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/ksyun/media/streamer/publisher/Publisher;->writeFrame(IJLjava/nio/ByteBuffer;JJI)I

    move-result v0

    return v0

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/ksyun/media/streamer/framework/ImgPacket;

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->getAvPacketOpaque()J

    move-result-wide v4

    iget-object v6, v0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    iget-wide v7, v0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    iget-wide v9, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iget v11, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/ksyun/media/streamer/publisher/Publisher;->writeFrame(IJLjava/nio/ByteBuffer;JJI)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected doWriteFrame(Z)I
    .locals 6

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/framework/AVPacketBase;

    if-eqz v1, :cond_4

    .line 7
    iget-wide v2, v1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    iget-wide v4, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mInitDts:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    .line 8
    iget-wide v2, v1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doWriteFrame(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I

    move-result v0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->isRefCounted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 13
    :try_start_0
    instance-of v3, v1, Lcom/ksyun/media/streamer/framework/AudioPacket;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->g:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    goto :goto_1

    .line 15
    :cond_2
    instance-of v3, v1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    .line 16
    iget-object v3, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->h:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-virtual {v3, v1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    .line 17
    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    return v0
.end method

.method public getAudioSink()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->t:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getAutoWork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->n:Z

    return v0
.end method

.method public getBlockingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->o:Z

    return v0
.end method

.method public getForceVideoFrameFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mForceVideoFrameFirst:Z

    return v0
.end method

.method public getPubListener()Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubListener:Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCacheLength()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(I)I

    move-result v0

    return v0
.end method

.method public getVideoSink()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->s:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method protected handleAVFrame(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getAutoWork()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getBlockingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->r:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 3
    :cond_1
    iget-object v2, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    return-void

    .line 4
    :cond_2
    instance-of v2, v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 5
    new-instance v2, Lcom/ksyun/media/streamer/framework/AudioPacket;

    check-cast v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    invoke-direct {v2, v0}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioPacket;)V

    const-string v0, "audio"

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_1

    .line 6
    :cond_3
    instance-of v2, v0, Lcom/ksyun/media/streamer/framework/ImgPacket;

    if-eqz v2, :cond_36

    .line 7
    new-instance v2, Lcom/ksyun/media/streamer/framework/ImgPacket;

    check-cast v0, Lcom/ksyun/media/streamer/framework/ImgPacket;

    invoke-direct {v2, v0}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/ImgPacket;)V

    const-string v0, "video"

    .line 8
    iget v5, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    .line 9
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->isAudioOnly()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->isVideoOnly()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v6, :cond_7

    :cond_6
    const-string v0, "Publisher"

    const-string v3, "get video in audio only mode or get audio in video only mode!"

    .line 10
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 11
    :cond_7
    iget v7, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_10

    if-eqz v6, :cond_8

    .line 12
    iput-boolean v4, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoHeaderGot:Z

    goto :goto_2

    .line 13
    :cond_8
    iput-boolean v4, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioHeaderGot:Z

    .line 14
    :goto_2
    iget-object v8, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->j:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-string v3, "Publisher"

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " header got"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    if-nez v6, :cond_9

    .line 17
    iget-object v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->l:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_9

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->l:Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    .line 19
    iget-object v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_a

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    :cond_a
    :goto_3
    if-eqz v6, :cond_b

    .line 21
    iget-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_b
    iget-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->l:Ljava/nio/ByteBuffer;

    .line 22
    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget-object v4, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 23
    iget-object v0, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v6, :cond_c

    .line 24
    iput-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 25
    :cond_c
    iput-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->l:Ljava/nio/ByteBuffer;

    .line 26
    :cond_d
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 27
    iget-object v3, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 29
    iget-object v3, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 30
    iput-object v0, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    .line 31
    :cond_e
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_34

    if-eqz v6, :cond_f

    const/4 v0, 0x6

    goto :goto_6

    :cond_f
    const/4 v0, 0x5

    .line 33
    :goto_6
    iget-object v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 34
    iget-object v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_10
    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_15

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getAutoWork()Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v6, :cond_11

    .line 37
    iput-boolean v4, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->p:Z

    goto :goto_7

    .line 38
    :cond_11
    iput-boolean v4, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->q:Z

    :goto_7
    const-string v3, "Publisher"

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " EOS got"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsVideoOnly:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->p:Z

    if-nez v0, :cond_14

    :cond_12
    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsAudioOnly:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->q:Z

    if-nez v0, :cond_14

    :cond_13
    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->p:Z

    if-eqz v0, :cond_34

    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->q:Z

    if-eqz v0, :cond_34

    .line 41
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->stop()V

    goto/16 :goto_13

    .line 42
    :cond_15
    iget-boolean v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioHeaderGot:Z

    if-nez v7, :cond_16

    if-nez v6, :cond_16

    const-string v0, "Publisher"

    const-string v3, "drop audio frames before audio header"

    .line 43
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 44
    :cond_16
    iget-boolean v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoHeaderGot:Z

    if-nez v7, :cond_17

    if-eqz v6, :cond_17

    const-string v0, "Publisher"

    const-string v3, "drop video frames before video header"

    .line 45
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_17
    if-eqz v6, :cond_18

    .line 46
    iget-boolean v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoKeyFrameGot:Z

    if-nez v7, :cond_18

    if-nez v5, :cond_18

    const-string v0, "Publisher"

    const-string v3, "drop non-key frame"

    .line 47
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 48
    :cond_18
    iget-object v7, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-nez v7, :cond_19

    goto/16 :goto_13

    .line 49
    :cond_19
    iget-boolean v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsAudioOnly:Z

    const-wide/high16 v8, -0x8000000000000000L

    if-nez v7, :cond_1a

    iget-boolean v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsVideoOnly:Z

    if-nez v7, :cond_1a

    if-nez v6, :cond_1a

    .line 50
    iget-wide v10, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mLastVideoDts:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_1a

    .line 51
    iget-wide v12, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    cmp-long v7, v10, v12

    if-lez v7, :cond_1a

    const-string v7, "Publisher"

    .line 52
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "the audio and video capture tsDiff above :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x7d4

    .line 53
    invoke-virtual {v1, v7, v10, v11}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(IJ)V

    :cond_1a
    if-eqz v6, :cond_1b

    .line 54
    iget-wide v10, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mLastVideoDts:J

    goto :goto_8

    :cond_1b
    iget-wide v10, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mLastAudioDts:J

    .line 55
    :goto_8
    iget-wide v12, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    cmp-long v7, v12, v10

    if-gtz v7, :cond_1c

    const-string v7, "Publisher"

    .line 56
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "non increase "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " timestamp, diff="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    sub-long/2addr v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-wide v12, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iget-wide v14, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0xa

    add-long v14, v14, v16

    add-long/2addr v12, v14

    iput-wide v12, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    add-long v10, v10, v16

    .line 58
    iput-wide v10, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    :cond_1c
    if-eqz v6, :cond_1d

    .line 59
    iget-wide v10, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    iput-wide v10, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mLastVideoDts:J

    goto :goto_9

    .line 60
    :cond_1d
    iget-wide v10, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    iput-wide v10, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mLastAudioDts:J

    .line 61
    :goto_9
    iget-wide v10, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mInitDts:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v8

    if-nez v7, :cond_1f

    .line 62
    iget-wide v7, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    cmp-long v9, v7, v12

    if-lez v9, :cond_1e

    goto :goto_a

    :cond_1e
    move-wide v7, v12

    :goto_a
    iput-wide v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mInitDts:J

    :cond_1f
    if-eqz v5, :cond_22

    .line 63
    iget-boolean v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoKeyFrameGot:Z

    if-nez v7, :cond_22

    .line 64
    iput-boolean v4, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoKeyFrameGot:Z

    .line 65
    iget-boolean v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mForceVideoFrameFirst:Z

    if-nez v7, :cond_20

    iget-wide v7, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iget-wide v9, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mInitDts:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_22

    .line 66
    :cond_20
    iget-wide v7, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    cmp-long v9, v7, v12

    if-lez v9, :cond_21

    move-wide v12, v7

    :cond_21
    iput-wide v12, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mInitDts:J

    :cond_22
    if-nez v6, :cond_23

    .line 67
    iput-boolean v4, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioFrameGot:Z

    .line 68
    :cond_23
    iget-object v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->j:Ljava/lang/Object;

    monitor-enter v7

    const/16 v8, 0x400

    if-nez v6, :cond_24

    .line 69
    :try_start_2
    iget-object v9, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->g:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    if-nez v9, :cond_24

    .line 70
    new-instance v9, Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-direct {v9, v3, v8}, Lcom/ksyun/media/streamer/util/FrameBufferCache;-><init>(II)V

    iput-object v9, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->g:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    goto :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_14

    :cond_24
    if-eqz v6, :cond_25

    .line 71
    iget-object v9, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->h:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    if-nez v9, :cond_25

    .line 72
    new-instance v9, Lcom/ksyun/media/streamer/util/FrameBufferCache;

    const v10, 0x32000

    invoke-direct {v9, v3, v10}, Lcom/ksyun/media/streamer/util/FrameBufferCache;-><init>(II)V

    iput-object v9, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->h:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 73
    :cond_25
    :goto_b
    iget-object v9, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->i:Ljava/util/concurrent/BlockingQueue;

    if-nez v9, :cond_26

    .line 74
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v9, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->i:Ljava/util/concurrent/BlockingQueue;

    :cond_26
    if-eqz v6, :cond_27

    .line 75
    iget-object v8, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->h:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    goto :goto_c

    :cond_27
    iget-object v8, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->g:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 76
    :goto_c
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_28

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->isAddExtraForVideoKeyFrame()Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_28

    const/4 v7, 0x1

    goto :goto_d

    :cond_28
    const/4 v7, 0x0

    .line 78
    :goto_d
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->isRefCounted()Z

    move-result v9

    if-eqz v9, :cond_2a

    if-eqz v7, :cond_29

    goto :goto_e

    .line 79
    :cond_29
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->ref()V

    goto :goto_10

    .line 80
    :cond_2a
    :goto_e
    iget-object v9, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    .line 81
    iget-object v10, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->j:Ljava/lang/Object;

    monitor-enter v10

    if-eqz v7, :cond_2b

    .line 82
    :try_start_3
    iget-object v7, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v9, v7

    .line 83
    :cond_2b
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 84
    invoke-virtual {v8, v9}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    if-nez v7, :cond_2c

    const-string v0, "Publisher"

    const-string v3, "cache.poll failed!!!"

    .line 85
    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_2c
    if-eqz v5, :cond_2e

    .line 86
    iget-object v5, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->j:Ljava/lang/Object;

    monitor-enter v5

    .line 87
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->isAddExtraForVideoKeyFrame()Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_2d

    .line 88
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 89
    iget-object v8, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 90
    :cond_2d
    monitor-exit v5

    goto :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 91
    :cond_2e
    :goto_f
    iget-object v5, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    iget-object v5, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 94
    iput-object v7, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->isRefCounted()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 96
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    .line 97
    :cond_2f
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getBlockingMode()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 98
    :try_start_5
    iget-object v5, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_11

    :catch_0
    const-string v3, "Publisher"

    const-string v5, "put packet to queue interrupted!"

    .line 99
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_11

    .line 100
    :cond_30
    iget-object v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    :goto_11
    if-eqz v3, :cond_32

    if-eqz v6, :cond_31

    .line 101
    iget v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedUpper:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedUpper:I

    goto :goto_12

    .line 102
    :cond_31
    iget v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mAFrameDropped:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mAFrameDropped:I

    :goto_12
    const-string v3, "Publisher"

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedUpper:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frames in java layer, this size:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 106
    :cond_32
    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsAudioOnly:Z

    if-nez v0, :cond_33

    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsVideoOnly:Z

    if-nez v0, :cond_33

    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoKeyFrameGot:Z

    if-eqz v0, :cond_34

    iget-boolean v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioFrameGot:Z

    if-eqz v0, :cond_34

    .line 107
    :cond_33
    iget-object v0, v1, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    if-eqz v0, :cond_34

    const/4 v3, 0x3

    .line 108
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    :cond_34
    :goto_13
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 110
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    :cond_35
    return-void

    :catchall_3
    move-exception v0

    .line 111
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 112
    :goto_14
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_36
    const-string v0, "Publisher"

    const-string v2, "got unknown type frame, dropped"

    .line 113
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract isAddExtraForVideoKeyFrame()Z
.end method

.method public isAudioExtraGot()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->l:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAudioOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsAudioOnly:Z

    return v0
.end method

.method public isPublishing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsPublishing:Z

    return v0
.end method

.method protected isUseFFmpeg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVideoExtraGot()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->k:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsVideoOnly:Z

    return v0
.end method

.method protected postError(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(IJ)V

    return-void
.end method

.method protected postError(IJ)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->isPublishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/publisher/Publisher$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ksyun/media/streamer/publisher/Publisher$3;-><init>(Lcom/ksyun/media/streamer/publisher/Publisher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected postInfo(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postInfo(IJ)V

    return-void
.end method

.method protected postInfo(IJ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/publisher/Publisher$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ksyun/media/streamer/publisher/Publisher$2;-><init>(Lcom/ksyun/media/streamer/publisher/Publisher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioBitrate:I

    return-void
.end method

.method public setAudioExtra(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    return-void
.end method

.method public setAudioOnly(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsVideoOnly:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "audioOnly and videoOnly both be true"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsAudioOnly:Z

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Z)V

    return-void
.end method

.method public setAutoWork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->n:Z

    return-void
.end method

.method public setBlockingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->o:Z

    return-void
.end method

.method public setForceVideoFrameFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mForceVideoFrameFirst:Z

    return-void
.end method

.method public setFramerate(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mFramerate:F

    return-void
.end method

.method public setPubListener(Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubListener:Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoBitrate:I

    return-void
.end method

.method public setVideoExtra(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    return-void
.end method

.method public setVideoOnly(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsAudioOnly:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "audioOnly and videoOnly both be true"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsVideoOnly:Z

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->b(Z)V

    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Publisher"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p1, "startRecording on invalid state"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "uri is empty"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsPublishing:Z

    const-wide/high16 v3, -0x8000000000000000L

    .line 6
    iput-wide v3, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mInitDts:J

    .line 7
    iput-wide v3, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mLastVideoDts:J

    .line 8
    iput-wide v3, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mLastAudioDts:J

    .line 9
    iput v2, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAFrameDropped:I

    .line 10
    iput v2, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedUpper:I

    .line 11
    iput v2, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedInner:I

    .line 12
    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mUrl:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    :cond_2
    return v2
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsPublishing:Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Publisher"

    const-string v1, "abort connecting..."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPublishHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method protected writeFrame(IJLjava/nio/ByteBuffer;JJI)I
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(IJLjava/nio/ByteBuffer;JJI)I

    move-result v1

    return v1
.end method
