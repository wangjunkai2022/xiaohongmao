.class Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;
.super Ljava/lang/Object;
.source "RtmpPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->postInfo(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;IJIII)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iput p2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->a:I

    iput-wide p3, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->b:J

    iput p5, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->c:I

    iput p6, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->d:I

    iput p7, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget-boolean v0, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsPublishing:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->c:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioFrameNum(I)V

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->d:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setVideoFrameNum(I)V

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->e:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioSendDelay(I)V

    .line 6
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-wide v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setAudioPts(J)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    .line 8
    invoke-static {v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->a(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;)I

    move-result v1

    iget-wide v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->b:J

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->estBitrateDrop(IJ)V

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    .line 11
    invoke-static {v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->a(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;)I

    move-result v1

    iget-wide v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->b:J

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->estBitrateRaise(IJ)V

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->frameDataSendSlow()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    .line 15
    invoke-static {v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->a(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;)I

    move-result v1

    int-to-float v1, v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setCurrentBitrate(F)V

    .line 17
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->startStreamSuccess()V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getPubListener()Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->f:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getPubListener()Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->a:I

    iget-wide v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$1;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;->onInfo(IJ)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
