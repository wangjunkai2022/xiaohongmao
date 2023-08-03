.class public Lcom/ksyun/media/streamer/framework/VideoCodecFormat;
.super Ljava/lang/Object;
.source "VideoCodecFormat.java"


# static fields
.field public static final ENCODE_BITRATE_MODE_CBR:I = 0x2

.field public static final ENCODE_BITRATE_MODE_CQ:I = 0x0

.field public static final ENCODE_BITRATE_MODE_VBR:I = 0x1

.field public static final ENCODE_PROFILE_BALANCE:I = 0x2

.field public static final ENCODE_PROFILE_DEFAULT:I = 0x0

.field public static final ENCODE_PROFILE_HIGH_PERFORMANCE:I = 0x1

.field public static final ENCODE_PROFILE_LOW_POWER:I = 0x3

.field public static final ENCODE_SCENE_DEFAULT:I = 0x0

.field public static final ENCODE_SCENE_GAME:I = 0x2

.field public static final ENCODE_SCENE_SHOWSELF:I = 0x1


# instance fields
.field public avCodecParPtr:J

.field public bitrate:I

.field public bitrateMode:I

.field public codecId:I

.field public crf:I

.field public frameRate:F

.field public height:I

.field public iFrameInterval:F

.field public liveStreaming:Z

.field public orientation:I

.field public pixFmt:I

.field public profile:I

.field public scene:I

.field public width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 4
    iput p3, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    .line 6
    iput p4, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrate:I

    const/high16 p1, 0x41700000    # 15.0f

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    const/4 p2, 0x3

    .line 10
    iput p2, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    .line 11
    iput p2, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->pixFmt:I

    const/16 p2, 0x17

    .line 12
    iput p2, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->crf:I

    .line 13
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->liveStreaming:Z

    .line 14
    iput p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrateMode:I

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getCodecId()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    .line 33
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 34
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    .line 36
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getBitrate()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrate:I

    .line 37
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getFramerate()F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    .line 38
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getIframeinterval()F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    .line 39
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getScene()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    .line 40
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getProfile()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    .line 41
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getPixFmt()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->pixFmt:I

    .line 42
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getCrf()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->crf:I

    .line 43
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getLiveStreaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->liveStreaming:Z

    .line 44
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->getBitrateMode()I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrateMode:I

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    .line 18
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 19
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    .line 20
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    .line 21
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrate:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrate:I

    .line 22
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    .line 23
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    .line 24
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    .line 25
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    .line 26
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->pixFmt:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->pixFmt:I

    .line 27
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->crf:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->crf:I

    .line 28
    iget-boolean v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->liveStreaming:Z

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->liveStreaming:Z

    .line 29
    iget v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrateMode:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrateMode:I

    .line 30
    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    return-void
.end method
