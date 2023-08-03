.class Lcom/ksyun/media/streamer/util/audio/PcmPlayer$1;
.super Landroid/os/Handler;
.source "PcmPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$1;->a:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$1;->a:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$100(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$1;->a:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$000(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)V

    :goto_0
    return-void
.end method
