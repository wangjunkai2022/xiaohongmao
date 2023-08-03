.class Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$5;
.super Ljava/lang/Object;
.source "AudioPlayerCapture.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$5;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ksyun/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$5;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->i(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$5;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->i(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/ksyun/media/player/IMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
