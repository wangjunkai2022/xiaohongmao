.class Lcom/ksyun/media/player/KSYTextureView$1;
.super Ljava/lang/Object;
.source "KSYTextureView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYTextureView;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/KSYTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcom/ksyun/media/player/IMediaPlayer;IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;I)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYTextureView;->b(Lcom/ksyun/media/player/KSYTextureView;I)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0, p4}, Lcom/ksyun/media/player/KSYTextureView;->c(Lcom/ksyun/media/player/KSYTextureView;I)I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0, p5}, Lcom/ksyun/media/player/KSYTextureView;->d(Lcom/ksyun/media/player/KSYTextureView;I)I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    iget v1, v0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYTextureView;->b(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v1

    iget-object v2, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYTextureView;->c(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/player/KSYTextureView$a;->a(II)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYTextureView;->d(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v1

    iget-object v2, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYTextureView;->e(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/player/KSYTextureView$a;->b(II)V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->f(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYTextureView;->setVideoScalingMode(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->g(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$1;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->g(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/ksyun/media/player/IMediaPlayer;IIII)V

    :cond_3
    return-void
.end method
