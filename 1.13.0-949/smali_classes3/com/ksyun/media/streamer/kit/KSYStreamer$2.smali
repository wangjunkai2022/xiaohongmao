.class Lcom/ksyun/media/streamer/kit/KSYStreamer$2;
.super Ljava/lang/Object;
.source "KSYStreamer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/kit/KSYStreamer;->initModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/kit/KSYStreamer;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$2;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapture error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSYStreamer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x7d3

    if-eq p1, v0, :cond_0

    const/16 v0, -0x7d5

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$2;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$000(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$2;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$000(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;->onError(III)V

    :cond_1
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    return-void
.end method
