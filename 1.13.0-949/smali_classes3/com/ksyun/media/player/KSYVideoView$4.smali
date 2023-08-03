.class Lcom/ksyun/media/player/KSYVideoView$4;
.super Ljava/lang/Object;
.source "KSYVideoView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$4;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ksyun/media/player/IMediaPlayer;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$4;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$4;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->hide()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$4;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->m(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$4;->a:Lcom/ksyun/media/player/KSYVideoView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 5
    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->m(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/ksyun/media/player/IMediaPlayer;II)Z

    :cond_1
    return v1
.end method
