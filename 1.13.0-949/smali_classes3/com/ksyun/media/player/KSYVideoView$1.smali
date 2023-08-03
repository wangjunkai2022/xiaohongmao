.class Lcom/ksyun/media/player/KSYVideoView$1;
.super Ljava/lang/Object;
.source "KSYVideoView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcom/ksyun/media/player/IMediaPlayer;IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYVideoView;->a(Lcom/ksyun/media/player/KSYVideoView;I)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYVideoView;->b(Lcom/ksyun/media/player/KSYVideoView;I)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0, p4}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;I)I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0, p5}, Lcom/ksyun/media/player/KSYVideoView;->d(Lcom/ksyun/media/player/KSYVideoView;I)I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    iget v1, v0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 6
    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYVideoView;->a(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->b(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/player/KSYVideoView$a;->a(II)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYVideoView;->d(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYVideoView;->e(Lcom/ksyun/media/player/KSYVideoView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/player/KSYVideoView$a;->b(II)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->f(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView$1;->a:Lcom/ksyun/media/player/KSYVideoView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYVideoView;->f(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/ksyun/media/player/IMediaPlayer;IIII)V

    :cond_1
    return-void
.end method
