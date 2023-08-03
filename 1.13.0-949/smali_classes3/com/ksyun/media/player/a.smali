.class public abstract Lcom/ksyun/media/player/a;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

.field private mOnLogEventListener:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

.field private mOnMessageListener:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

.field private mOnPreparedListener:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final notifyMessageInfo(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnMessageListener:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;->onMessage(Lcom/ksyun/media/player/IMediaPlayer;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnBufferingUpdate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnBufferingUpdateListener:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/ksyun/media/player/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnCompletionListener:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnError(II)Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnErrorListener:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/ksyun/media/player/IMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final notifyOnInfo(II)Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnInfoListener:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;->onInfo(Lcom/ksyun/media/player/IMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final notifyOnLogEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnLogEventListener:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;->onLogEvent(Lcom/ksyun/media/player/IMediaPlayer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnPreparedListener:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnSeekCompleteListener:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/ksyun/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnTimedText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnTimedTextListener:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/ksyun/media/player/IMediaPlayer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnVideoSizeChanged(IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/a;->mOnVideoSizeChangedListener:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/ksyun/media/player/IMediaPlayer;IIII)V

    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnPreparedListener:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnBufferingUpdateListener:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnCompletionListener:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnSeekCompleteListener:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnVideoSizeChangedListener:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnErrorListener:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnInfoListener:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    .line 8
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnLogEventListener:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    .line 9
    iput-object v0, p0, Lcom/ksyun/media/player/a;->mOnMessageListener:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    return-void
.end method

.method public setDataSource(Lcom/ksyun/media/player/misc/IMediaDataSource;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnBufferingUpdateListener:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public final setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnCompletionListener:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnErrorListener:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnInfoListener:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public final setOnLogEventListener(Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnLogEventListener:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    return-void
.end method

.method public final setOnMessageListener(Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnMessageListener:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    return-void
.end method

.method public final setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnPreparedListener:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnSeekCompleteListener:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setOnTimedTextListener(Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnTimedTextListener:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/a;->mOnVideoSizeChangedListener:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method
