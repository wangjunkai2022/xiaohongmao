.class public Lcom/ksyun/media/player/h;
.super Lcom/ksyun/media/player/g;
.source "TextureMediaPlayer.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer;
.implements Lcom/ksyun/media/player/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Lcom/ksyun/media/player/d;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/g;-><init>(Lcom/ksyun/media/player/IMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/h;->b:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/h;->b:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/player/h;->c()V

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/player/h;->b:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Lcom/ksyun/media/player/g;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-super {p0, v0}, Lcom/ksyun/media/player/g;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ksyun/media/player/d;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/ksyun/media/player/h;->c:Lcom/ksyun/media/player/d;

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/h;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/player/h;->c:Lcom/ksyun/media/player/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/ksyun/media/player/d;->a(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/h;->b:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/player/g;->release()V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/player/h;->c()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/player/g;->reset()V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/player/h;->c()V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/h;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/ksyun/media/player/g;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/h;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/ksyun/media/player/g;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
