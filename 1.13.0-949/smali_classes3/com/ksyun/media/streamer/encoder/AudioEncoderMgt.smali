.class public Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;
.super Ljava/lang/Object;
.source "AudioEncoderMgt.java"


# static fields
.field public static final METHOD_HARDWARE:I = 0x2

.field public static final METHOD_SOFTWARE:I = 0x3

.field private static final a:Ljava/lang/String; = "AudioEncoderMgt"


# instance fields
.field private b:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ksyun/media/streamer/encoder/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/encoder/Encoder<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

.field private g:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->e:I

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    return p1
.end method


# virtual methods
.method public declared-synchronized getEncodeMethod()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioPacket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public declared-synchronized setEncodeFormat(Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;-><init>(Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;)V

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncodeFormat(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setEncodeFormat(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->configure(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioSampleRateInHz(I)V

    .line 6
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioEncodeProfile(I)V

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioChannels(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEncodeMethod(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->a(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->release()V

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->e:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 8
    new-instance p1, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->configure(Ljava/lang/Object;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->g:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    if-eqz p1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->g:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
