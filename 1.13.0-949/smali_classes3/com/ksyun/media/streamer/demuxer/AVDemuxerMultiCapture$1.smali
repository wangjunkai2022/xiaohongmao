.class Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;
.super Landroid/os/Handler;
.source "AVDemuxerMultiCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;)Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;)Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->d()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;)Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;)Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->b()I

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;I)V

    :cond_3
    :goto_0
    return-void
.end method
