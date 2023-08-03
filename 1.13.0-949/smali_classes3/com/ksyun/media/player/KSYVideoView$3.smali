.class Lcom/ksyun/media/player/KSYVideoView$3;
.super Ljava/lang/Object;
.source "KSYVideoView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$3;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$3;->a:Lcom/ksyun/media/player/KSYVideoView;

    const/16 v1, 0x8

    iput v1, v0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 2
    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->l(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$3;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->l(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$3;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$3;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->hide()V

    :cond_1
    return-void
.end method
