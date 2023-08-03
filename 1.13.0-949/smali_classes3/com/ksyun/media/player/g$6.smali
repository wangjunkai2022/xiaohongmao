.class Lcom/ksyun/media/player/g$6;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/player/g;->setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

.field final synthetic b:Lcom/ksyun/media/player/g;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/g$6;->b:Lcom/ksyun/media/player/g;

    iput-object p2, p0, Lcom/ksyun/media/player/g$6;->a:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ksyun/media/player/IMediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/ksyun/media/player/g$6;->a:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcom/ksyun/media/player/g$6;->b:Lcom/ksyun/media/player/g;

    invoke-interface {p1, v0, p2, p3}, Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/ksyun/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1
.end method
