.class Lcom/ksyun/media/player/g$2;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/player/g;->setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

.field final synthetic b:Lcom/ksyun/media/player/g;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/g;Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/g$2;->b:Lcom/ksyun/media/player/g;

    iput-object p2, p0, Lcom/ksyun/media/player/g$2;->a:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/ksyun/media/player/g$2;->a:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/ksyun/media/player/g$2;->b:Lcom/ksyun/media/player/g;

    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ksyun/media/player/IMediaPlayer;)V

    return-void
.end method
