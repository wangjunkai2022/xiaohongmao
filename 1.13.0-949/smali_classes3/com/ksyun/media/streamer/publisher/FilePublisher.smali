.class public Lcom/ksyun/media/streamer/publisher/FilePublisher;
.super Lcom/ksyun/media/streamer/publisher/Publisher;
.source "FilePublisher.java"


# static fields
.field public static final FILE_PUBLISHER_ERROR_CLOSE_FAILED:I = -0xfa3

.field public static final FILE_PUBLISHER_ERROR_OPEN_FAILED:I = -0xfa1

.field public static final FILE_PUBLISHER_ERROR_UNKNOWN:I = -0xfa0

.field public static final FILE_PUBLISHER_ERROR_WRITE_FAILED:I = -0xfa2

.field public static final FILE_PUBLISHER_FORMAT_NOT_SUPPORTED:I = -0xfa4

.field public static final INFO_OPENED:I = 0x1

.field public static final INFO_STOPED:I = 0x4

.field private static final a:Ljava/lang/String; = "FilePublisher"

.field private static final b:Z = false


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "FilePub"

    .line 1
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/FilePublisher;->c:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->setForceVideoFrameFirst(Z)V

    return-void
.end method


# virtual methods
.method protected isAddExtraForVideoKeyFrame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMp4FastStartEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/publisher/FilePublisher;->c:Z

    return v0
.end method

.method protected postInfo(IJ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/ksyun/media/streamer/publisher/Publisher;->postInfo(IJ)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->stopRecord()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->startRecordSuccess()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->stop()V

    .line 2
    invoke-super {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->release()V

    return-void
.end method

.method public setEnableMp4FastStart(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher;->mPubWrapper:Lcom/ksyun/media/streamer/publisher/PublisherWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->c(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/publisher/FilePublisher;->c:Z

    return-void
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->start(Ljava/lang/String;)Z

    return-void
.end method
