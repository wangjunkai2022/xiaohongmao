.class Lcom/ksyun/media/player/KSYVideoView$7;
.super Ljava/lang/Object;
.source "KSYVideoView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYVideoView;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/KSYVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$7;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$7;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->r(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$7;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->r(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/ksyun/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method
