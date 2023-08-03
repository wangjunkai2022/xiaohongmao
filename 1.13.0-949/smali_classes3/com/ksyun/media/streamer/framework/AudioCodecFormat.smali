.class public Lcom/ksyun/media/streamer/framework/AudioCodecFormat;
.super Ljava/lang/Object;
.source "AudioCodecFormat.java"


# instance fields
.field public avCodecParPtr:J

.field public bitrate:I

.field public channels:I

.field public codecId:I

.field public profile:I

.field public sampleFmt:I

.field public sampleRate:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    .line 4
    :cond_0
    iput p2, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    .line 5
    iput p3, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    .line 6
    iput p4, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    .line 7
    iput p5, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->bitrate:I

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->getCodecId()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    .line 19
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->getProfile()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    .line 20
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->getSampleFmt()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    .line 21
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    .line 22
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->getChannels()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    .line 23
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->getBitrate()I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->bitrate:I

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    .line 11
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    .line 12
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    .line 13
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    .line 14
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    .line 15
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->bitrate:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->bitrate:I

    .line 16
    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    return-void
.end method
