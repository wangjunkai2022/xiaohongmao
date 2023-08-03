.class public Lcom/ksyun/media/player/g;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer;


# instance fields
.field protected final a:Lcom/ksyun/media/player/IMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    return-void
.end method


# virtual methods
.method public addTimedTextSource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/ksyun/media/player/IMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    return-object v0
.end method

.method public deselectTrack(I)V
    .locals 0

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/ksyun/media/player/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getMediaInfo()Lcom/ksyun/media/player/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Lcom/ksyun/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getTrackInfo()[Lcom/ksyun/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->pause()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/ksyun/media/player/IMediaPlayer;->seekTo(J)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 0

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/ksyun/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/ksyun/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Lcom/ksyun/media/player/misc/IMediaDataSource;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setDataSource(Lcom/ksyun/media/player/misc/IMediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setKeepInBackground(Z)V

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    new-instance v1, Lcom/ksyun/media/player/g$3;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/g$3;-><init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    new-instance v1, Lcom/ksyun/media/player/g$2;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/g$2;-><init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaPlayer;->setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer;->setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    new-instance v1, Lcom/ksyun/media/player/g$6;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/g$6;-><init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaPlayer;->setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer;->setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    new-instance v1, Lcom/ksyun/media/player/g$7;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/g$7;-><init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaPlayer;->setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer;->setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOnMessageListener(Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;)V
    .locals 0

    return-void
.end method

.method public setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    new-instance v1, Lcom/ksyun/media/player/g$1;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/g$1;-><init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaPlayer;->setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer;->setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V

    :goto_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    new-instance v1, Lcom/ksyun/media/player/g$4;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/g$4;-><init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaPlayer;->setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer;->setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    :goto_0
    return-void
.end method

.method public setOnTimedTextListener(Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    new-instance v1, Lcom/ksyun/media/player/g$5;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/g$5;-><init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    :goto_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/ksyun/media/player/IMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/ksyun/media/player/IMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/g;->a:Lcom/ksyun/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaPlayer;->stop()V

    return-void
.end method
