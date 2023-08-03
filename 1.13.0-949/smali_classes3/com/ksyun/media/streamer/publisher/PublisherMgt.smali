.class public Lcom/ksyun/media/streamer/publisher/PublisherMgt;
.super Ljava/lang/Object;
.source "PublisherMgt.java"


# static fields
.field private static final a:Ljava/lang/String; = "PublisherMgt"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/publisher/Publisher;",
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

.field private d:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPublisher(Lcom/ksyun/media/streamer/publisher/Publisher;)V
    .locals 2
    .param p1    # Lcom/ksyun/media/streamer/publisher/Publisher;
        .annotation build La/f0;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->getAudioSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->getVideoSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    return-void
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

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
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

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public removePublisher(Lcom/ksyun/media/streamer/publisher/Publisher;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->getAudioSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->getVideoSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    return-void
.end method

.method public setAudioOnly(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/publisher/Publisher;

    .line 2
    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAudioOnly(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const-string v0, "audio_only"

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setVideoOnly(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/publisher/Publisher;

    .line 2
    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setVideoOnly(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
