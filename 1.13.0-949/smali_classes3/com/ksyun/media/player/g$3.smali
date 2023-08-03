.class Lcom/ksyun/media/player/g$3;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/player/g;->setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field final synthetic b:Lcom/ksyun/media/player/g;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/g$3;->b:Lcom/ksyun/media/player/g;

    iput-object p2, p0, Lcom/ksyun/media/player/g$3;->a:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/ksyun/media/player/IMediaPlayer;I)V
    .locals 1

    iget-object p1, p0, Lcom/ksyun/media/player/g$3;->a:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    iget-object v0, p0, Lcom/ksyun/media/player/g$3;->b:Lcom/ksyun/media/player/g;

    invoke-interface {p1, v0, p2}, Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/ksyun/media/player/IMediaPlayer;I)V

    return-void
.end method
