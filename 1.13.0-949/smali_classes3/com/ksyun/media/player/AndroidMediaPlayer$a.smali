.class Lcom/ksyun/media/player/AndroidMediaPlayer$a;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ksyun/media/player/AndroidMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/ksyun/media/player/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/AndroidMediaPlayer;Lcom/ksyun/media/player/AndroidMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/player/a;->notifyOnBufferingUpdate(I)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/a;->notifyOnCompletion()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/AndroidMediaPlayer;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    invoke-virtual {p1, p2, p3}, Lcom/ksyun/media/player/a;->notifyOnError(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/AndroidMediaPlayer;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    invoke-virtual {p1, p2, p3}, Lcom/ksyun/media/player/a;->notifyOnInfo(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/a;->notifyOnPrepared()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/a;->notifyOnSeekComplete()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$a;->b:Lcom/ksyun/media/player/AndroidMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/ksyun/media/player/a;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method
