.class public interface abstract Lcom/ksyun/media/player/IMediaController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "IMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/IMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract canPause()Z
.end method

.method public abstract canSeekBackward()Z
.end method

.method public abstract canSeekForward()Z
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract start()V
.end method
