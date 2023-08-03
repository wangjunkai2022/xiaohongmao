.class Lcom/ksyun/media/player/KSYTextureView$4;
.super Ljava/lang/Object;
.source "KSYTextureView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$4;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$4;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->k(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$4;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->k(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$4;->a:Lcom/ksyun/media/player/KSYTextureView;

    const/16 v0, 0x8

    iput v0, p1, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 4
    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$4;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->hide()V

    :cond_1
    return-void
.end method
