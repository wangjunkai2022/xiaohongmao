.class Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;
.super Ljava/lang/Object;
.source "RtmpPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->postError(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/publisher/RtmpPublisher;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->c:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iput p2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->a:I

    iput-wide p3, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->a:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->reportError(II)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->c:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getPubListener()Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->c:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getPubListener()Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->a:I

    iget-wide v2, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$2;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;->onError(IJ)V

    :cond_0
    return-void
.end method
