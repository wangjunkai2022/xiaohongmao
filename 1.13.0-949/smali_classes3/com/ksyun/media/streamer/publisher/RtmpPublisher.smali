.class public Lcom/ksyun/media/streamer/publisher/RtmpPublisher;
.super Lcom/ksyun/media/streamer/publisher/Publisher;
.source "RtmpPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;
    }
.end annotation


# static fields
.field public static final BW_EST_STRATEGY_NEGATIVE:I = 0x1

.field public static final BW_EST_STRATEGY_NORMAL:I = 0x0

.field public static final ERROR_AV_ASYNC_ERROR:I = -0x7d4

.field public static final ERROR_AkAndUserIsNotMatch:I = -0xc28

.field public static final ERROR_AlreadyExistStreamName:I = -0xc1f

.field public static final ERROR_BadParams:I = -0xc25

.field public static final ERROR_CONNECT_BREAKED:I = -0xbcc

.field public static final ERROR_CONNECT_FAILED:I = -0xbc3

.field public static final ERROR_DNS_PARSE_FAILED:I = -0xbc2

.field public static final ERROR_ForbiddenByBlacklist:I = -0xc20

.field public static final ERROR_ForbiddenByRegion:I = -0xc26

.field public static final ERROR_GetServerInfoFailed:I = -0xc29

.field public static final ERROR_GetUserIdFailed:I = -0xc27

.field public static final ERROR_IllegalOutsideUrl:I = -0xc2a

.field public static final ERROR_IllegalUserId:I = -0xc2e

.field public static final ERROR_InternalError:I = -0xc21

.field public static final ERROR_InvalidAccessKeyId:I = -0xc24

.field public static final ERROR_InvalidAuthType:I = -0xc2d

.field public static final ERROR_NonExistApplication:I = -0xc1e

.field public static final ERROR_NonExistDomain:I = -0xc1d

.field public static final ERROR_OutsideAuthFailed:I = -0xc2b

.field public static final ERROR_PUBLISH_FAILED:I = -0xbc4

.field public static final ERROR_SignatureDoesNotMatch:I = -0xc23

.field public static final ERROR_SimpleAuthFailed:I = -0xc2c

.field public static final ERROR_UNKNOWN:I = -0xbb8

.field public static final ERROR_URLExpired:I = -0xc22

.field public static final INFO_CONNECTED:I = 0x1

.field public static final INFO_EST_BW_DROP:I = 0x66

.field public static final INFO_EST_BW_RAISE:I = 0x65

.field public static final INFO_PACKET_SEND_SLOW:I = 0x64

.field private static final a:Ljava/lang/String; = "RtmpPublisher"

.field private static final b:Z = false


# instance fields
.field private c:Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "RtmpPub"

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->i:I

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    .line 2
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doStart(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->d:Ljava/lang/String;

    const-string v2, "streamId"

    invoke-virtual {v0, v2, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const-string v1, "manufacturer"

    const-string v2, "KSY-a-v5.0.1.3"

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getLogInterval()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interval"

    invoke-virtual {v2, v1, v0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getInstance()Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getTimeDelta()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utcstarttime"

    invoke-virtual {v0, v2, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->start(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->f:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->g:I

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->h:I

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->i:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->j:J

    .line 8
    iput v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->k:I

    .line 9
    invoke-static {p1}, Lcom/ksyun/media/streamer/logstats/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->d:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->startStream(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->stop()V

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->stopStream()V

    return-void
.end method

.method protected doStart(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->e:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setRtmpHostIp(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->b(I)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->f:I

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->f:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setDnsParseTime(I)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->b(I)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->g:I

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->g:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setConnectTime(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->e:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setRtmpHostIp(Ljava/lang/String;)V

    :goto_0
    return p1
.end method

.method protected doWriteFrame(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doWriteFrame(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I

    move-result p1

    if-gez p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->b(I)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedInner:I

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedInner:I

    iget v2, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedUpper:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setRtmpDroppedFrameCount(I)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->b(I)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->h:I

    .line 6
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->h:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setUploadedKBytes(I)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->j:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 9
    iput-wide v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->j:J

    .line 10
    :cond_1
    iget-wide v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->j:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    const/16 v2, 0x3e8

    if-lt v3, v2, :cond_2

    .line 11
    iget v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->h:I

    iget v4, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->k:I

    sub-int v4, v2, v4

    mul-int/lit16 v4, v4, 0x1f40

    div-int/2addr v4, v3

    iput v4, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->i:I

    .line 12
    iput v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->k:I

    .line 13
    iput-wide v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->j:J

    :cond_2
    :goto_0
    return p1
.end method

.method public getConnectTime()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->isPermitLogReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->g:I

    return v0

    :cond_0
    const-string v0, "RtmpPublisher"

    const-string v1, "you must enableStreamStatModule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentUploadKBitrate()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->isPermitLogReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->i:I

    return v0

    :cond_0
    const-string v0, "RtmpPublisher"

    const-string v1, "you must enableStreamStatModule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDnsParseTime()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->isPermitLogReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->f:I

    return v0

    :cond_0
    const-string v0, "RtmpPublisher"

    const-string v1, "you must enableStreamStatModule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDroppedVideoFrames()I
    .locals 2

    iget v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedInner:I

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVFrameDroppedUpper:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHostIp()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->isPermitLogReport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "RtmpPublisher"

    const-string v1, "you must enableStreamStatModule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public getUploadedKBytes()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->isPermitLogReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->h:I

    return v0

    :cond_0
    const-string v0, "RtmpPublisher"

    const-string v1, "you must enableStreamStatModule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected isAddExtraForVideoKeyFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected postError(IJ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsPublishing:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;-><init>(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected postInfo(IJ)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsPublishing:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(I)I

    move-result v7

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(I)I

    move-result v8

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(I)I

    move-result v9

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;-><init>(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;IJIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->disconnect()V

    .line 3
    invoke-super {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->release()V

    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioBitrate:I

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioBitrate:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioBitrate(I)V

    return-void
.end method

.method public setBwEstConfig(Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    iget v1, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initAudioBitrate:I

    iget v2, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initVideoBitrate:I

    iget v3, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->minVideoBitrate:I

    iget v4, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->maxVideoBitrate:I

    iget v5, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->strategy:I

    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->a(IIIII)V

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->strategy:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setBwEstStrategy(I)V

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initAudioBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioBitrate(I)V

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setInitVideoBitrate(I)V

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->maxVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setMaxVideoBitrate(I)V

    .line 6
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->minVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setMinVideoBitrate(I)V

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-boolean p1, p1, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->isAdjustBitrate:Z

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAutoAdjustVideoBitrate(Z)V

    return-void
.end method

.method public setFramerate(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mFramerate:F

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mFramerate:F

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setFrameRate(F)V

    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoBitrate:I

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoBitrate:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setMaxVideoBitrate(I)V

    return-void
.end method
