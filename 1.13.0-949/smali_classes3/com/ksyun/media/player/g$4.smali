.class Lcom/ksyun/media/player/g$4;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/player/g;->setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

.field final synthetic b:Lcom/ksyun/media/player/g;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/g$4;->b:Lcom/ksyun/media/player/g;

    iput-object p2, p0, Lcom/ksyun/media/player/g$4;->a:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/ksyun/media/player/g$4;->a:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    iget-object v0, p0, Lcom/ksyun/media/player/g$4;->b:Lcom/ksyun/media/player/g;

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/ksyun/media/player/IMediaPlayer;)V

    return-void
.end method
