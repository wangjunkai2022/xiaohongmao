.class Lcom/ksyun/media/player/KSYMediaPlayer$c;
.super Ljava/lang/Object;
.source "KSYMediaPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYMediaPlayer;

.field private b:Lcom/ksyun/media/player/KSYMediaPlayer;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/KSYMediaPlayer;Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer$c;->a:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ksyun/media/player/KSYMediaPlayer$c;->b:Lcom/ksyun/media/player/KSYMediaPlayer;

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer$c;->a:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$3100(Lcom/ksyun/media/player/KSYMediaPlayer;)Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer$c;->a:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$3100(Lcom/ksyun/media/player/KSYMediaPlayer;)Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer$c;->b:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer$c;->a:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$3200(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;->onVideoTextureAvailable(Lcom/ksyun/media/player/IMediaPlayer;Landroid/graphics/SurfaceTexture;I)V

    :cond_0
    return-void
.end method
