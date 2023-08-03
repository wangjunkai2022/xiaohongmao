.class public Lcom/ksyun/media/streamer/util/audio/PcmPlayer;
.super Ljava/lang/Object;
.source "PcmPlayer.java"


# static fields
.field private static final CMD_RELEASE:I = 0x4

.field private static final CMD_STOP:I = 0x3

.field private static final QUEUE_SIZE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "PcmPlayer"

.field private static final VERBOSE:Z = true


# instance fields
.field private mAudioQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mChannel:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSampleFormat:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mSampleRate:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mChannel:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mSampleFormat:I

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->init()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mSampleRate:I

    .line 8
    iput p2, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mChannel:I

    .line 9
    iput p3, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mSampleFormat:I

    .line 10
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->doStop()V

    return-void
.end method

.method static synthetic access$100(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mSampleRate:I

    return p0
.end method

.method static synthetic access$400(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mChannel:I

    return p0
.end method

.method static synthetic access$500(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mSampleFormat:I

    return p0
.end method

.method static synthetic access$600(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private doStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private getPcmCache(I)[S
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    const-string v1, "PcmPlayer"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropped "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes pcm data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    array-length v2, v0

    :goto_0
    if-ge v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 4
    :cond_1
    array-length p1, v0

    if-ge p1, v2, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realloc pcm size from "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-array v0, v2, [S

    :cond_2
    return-object v0
.end method

.method private init()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->initThread()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/16 v2, 0x800

    new-array v2, v2, [S

    .line 3
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initThread()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pcm_player_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$1;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$1;-><init>(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private playInternal([SII)V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;-><init>(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;[SII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public play(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 7
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->getPcmCache(I)[S

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 11
    invoke-direct {p0, v1, v2, v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->playInternal([SII)V

    :cond_1
    return-void
.end method

.method public play([S)V
    .locals 2

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->play([SII)V

    return-void
.end method

.method public play([SII)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->getPcmCache(I)[S

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-direct {p0, v0, v1, p3}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->playInternal([SII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "PcmPlayer"

    const-string v1, "Pcm Player Thread Interrupted!"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandler:Landroid/os/Handler;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
