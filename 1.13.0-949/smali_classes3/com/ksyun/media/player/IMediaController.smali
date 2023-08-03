.class public interface abstract Lcom/ksyun/media/player/IMediaController;
.super Ljava/lang/Object;
.source "IMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/IMediaController$MediaPlayerControl;
    }
.end annotation


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onStart()V
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setMediaPlayer(Lcom/ksyun/media/player/IMediaController$MediaPlayerControl;)V
.end method

.method public abstract show()V
.end method
