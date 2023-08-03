.class Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;
.super Landroid/os/Handler;
.source "AVDemuxerCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->e(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->d(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    instance-of v0, p1, Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 5
    check-cast p1, Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->b(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->c(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture$1;->a:Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;->a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerCapture;)V

    :cond_4
    :goto_0
    return-void
.end method
