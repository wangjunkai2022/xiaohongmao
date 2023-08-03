.class Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;
.super Ljava/lang/Object;
.source "AudioPlayerCapture.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 3

    const-string v0, "AudioPlayerCapture"

    const-string v1, "onPrepared"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;J)J

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->start()V

    return-void
.end method
