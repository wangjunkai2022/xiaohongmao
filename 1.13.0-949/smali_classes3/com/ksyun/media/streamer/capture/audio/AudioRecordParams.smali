.class public Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;
.super Ljava/lang/Object;
.source "AudioRecordParams.java"


# static fields
.field public static AUDIO_CHANNEL_MONO:I = 0x10

.field public static AUDIO_CHANNEL_STEREO:I = 0xc

.field public static AUDIO_FORMAT_DEFAULT:I = 0x2

.field public static AUDIO_RATE_DEFAULT:I = 0xac44

.field public static AUDIO_SOURCE_DEFAULT:I = 0x1


# instance fields
.field public bufferSize:I

.field public channel:I

.field public format:I

.field public rate:I

.field public source:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->AUDIO_FORMAT_DEFAULT:I

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->format:I

    .line 3
    sget v0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->AUDIO_SOURCE_DEFAULT:I

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->source:I

    .line 4
    sget v0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->AUDIO_CHANNEL_MONO:I

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->channel:I

    .line 5
    sget v0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->AUDIO_RATE_DEFAULT:I

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->rate:I

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->getAudioBufferSize()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget v0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->AUDIO_FORMAT_DEFAULT:I

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->format:I

    .line 15
    sget v0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->AUDIO_SOURCE_DEFAULT:I

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->source:I

    .line 16
    sget v0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->AUDIO_CHANNEL_MONO:I

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->channel:I

    .line 17
    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->rate:I

    .line 18
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->getAudioBufferSize()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->format:I

    .line 9
    iput p2, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->source:I

    .line 10
    iput p3, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->channel:I

    .line 11
    iput p4, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->rate:I

    .line 12
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->getAudioBufferSize()V

    return-void
.end method

.method private getAudioBufferSize()V
    .locals 3

    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->rate:I

    iget v1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->channel:I

    iget v2, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->format:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->bufferSize:I

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->bufferSize:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->channel:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->format:I

    return v0
.end method

.method public getRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->rate:I

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->source:I

    return v0
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->bufferSize:I

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->channel:I

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->format:I

    return-void
.end method

.method public setRate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->rate:I

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/AudioRecordParams;->source:I

    return-void
.end method
