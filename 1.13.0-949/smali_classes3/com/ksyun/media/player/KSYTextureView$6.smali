.class Lcom/ksyun/media/player/KSYTextureView$6;
.super Ljava/lang/Object;
.source "KSYTextureView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;


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

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$6;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/ksyun/media/player/IMediaPlayer;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$6;->a:Lcom/ksyun/media/player/KSYTextureView;

    iput p2, v0, Lcom/ksyun/media/player/KSYTextureView;->b:I

    .line 2
    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->m(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$6;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->m(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/ksyun/media/player/IMediaPlayer;I)V

    :cond_0
    return-void
.end method
