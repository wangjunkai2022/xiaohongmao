.class Lcom/ksyun/media/streamer/capture/AudioCapture$1;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/AudioCapture;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/AudioCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/AudioCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$1;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$1;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$1;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$1;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->b(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;->onStatusChanged(I)V

    :cond_0
    return-void
.end method
