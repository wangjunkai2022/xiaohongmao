.class Lcom/ksyun/media/streamer/capture/AudioCapture$2;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/AudioCapture;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ksyun/media/streamer/capture/AudioCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$2;->b:Lcom/ksyun/media/streamer/capture/AudioCapture;

    iput p2, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$2;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->reportError(II)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$2;->b:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$2;->b:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$2;->a:I

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;->onError(I)V

    :cond_0
    return-void
.end method
