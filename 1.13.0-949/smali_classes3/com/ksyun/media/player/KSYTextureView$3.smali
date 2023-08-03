.class Lcom/ksyun/media/player/KSYTextureView$3;
.super Ljava/lang/Object;
.source "KSYTextureView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYTextureView;->c(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/ksyun/media/player/KSYTextureView;->b(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->h(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->h(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->i(Lcom/ksyun/media/player/KSYTextureView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    const/4 v0, 0x3

    iput v0, p1, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    const/4 v0, 0x2

    iput v0, p1, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->i(Lcom/ksyun/media/player/KSYTextureView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->onStart()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$3;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->onPause()V

    :cond_3
    :goto_1
    return-void
.end method
