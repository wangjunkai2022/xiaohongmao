.class Lcom/ksyun/media/player/KSYVideoView$6;
.super Ljava/lang/Object;
.source "KSYVideoView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/ksyun/media/player/IMediaPlayer;II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_2

    .line 1
    :sswitch_0
    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    iput v0, v2, Lcom/ksyun/media/player/KSYVideoView;->b:I

    .line 2
    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->k(Lcom/ksyun/media/player/KSYVideoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->o(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->o(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->start()V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->k(Lcom/ksyun/media/player/KSYVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onStart()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onPause()V

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->k(Lcom/ksyun/media/player/KSYVideoView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    const/4 v2, 0x3

    iput v2, v0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    const/4 v2, 0x6

    iput v2, v0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->p(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/KSYVideoView;->setVideoScalingMode(I)V

    goto :goto_2

    .line 15
    :sswitch_1
    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2, v0}, Lcom/ksyun/media/player/KSYVideoView;->a(Lcom/ksyun/media/player/KSYVideoView;Z)Z

    goto :goto_2

    .line 16
    :sswitch_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYVideoView;->a(Lcom/ksyun/media/player/KSYVideoView;Z)Z

    goto :goto_2

    .line 17
    :sswitch_3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-virtual {v0, p3}, Lcom/ksyun/media/player/KSYVideoView;->setRotateDegree(I)Z

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->q(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$6;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->q(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;->onInfo(Lcom/ksyun/media/player/IMediaPlayer;II)Z

    :cond_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_3
        0xa028 -> :sswitch_2
        0xa029 -> :sswitch_1
        0xc351 -> :sswitch_0
    .end sparse-switch
.end method
