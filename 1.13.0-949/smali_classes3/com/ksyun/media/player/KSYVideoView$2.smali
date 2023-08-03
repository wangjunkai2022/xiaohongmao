.class Lcom/ksyun/media/player/KSYVideoView$2;
.super Ljava/lang/Object;
.source "KSYVideoView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYVideoView;->a(Lcom/ksyun/media/player/KSYVideoView;I)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYVideoView;->b(Lcom/ksyun/media/player/KSYVideoView;I)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->a(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->b(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYVideoView;->a(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->b(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/player/KSYVideoView$a;->a(II)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->g(Lcom/ksyun/media/player/KSYVideoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYVideoView;->e(Lcom/ksyun/media/player/KSYVideoView;I)I

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v0

    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->h(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/KSYVideoView$a;->b(I)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v0

    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->h(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/KSYVideoView$a;->b(I)Z

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->i(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->i(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    const/4 v0, 0x2

    iput v0, p1, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 13
    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->isShown()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 18
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->k(Lcom/ksyun/media/player/KSYVideoView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->onStart()V

    goto :goto_1

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$2;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYVideoView;->j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->onPause()V

    :cond_6
    :goto_1
    return-void
.end method
