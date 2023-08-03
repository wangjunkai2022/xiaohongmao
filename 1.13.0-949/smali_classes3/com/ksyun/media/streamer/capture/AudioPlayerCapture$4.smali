.class Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;
.super Ljava/lang/Object;
.source "AudioPlayerCapture.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 2

    const-string v0, "AudioPlayerCapture"

    const-string v1, "onCompletion"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->f(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V

    :cond_1
    return-void
.end method
