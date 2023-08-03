.class Lcom/ksyun/media/streamer/kit/KSYStreamer$3;
.super Ljava/lang/Object;
.source "KSYStreamer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCapture error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSYStreamer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x7d2

    const/16 v1, -0x7d6

    const/16 v2, -0x7d7

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    const/16 v0, -0x7d1

    goto :goto_0

    :cond_0
    const/16 v0, -0x7d6

    goto :goto_0

    :cond_1
    const/16 v0, -0x7d7

    .line 2
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$000(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$000(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;->onError(III)V

    :cond_3
    return-void
.end method

.method public onFacingChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput p1, v0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->updateFrontMirror()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;->onInfo(III)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 3

    const-string v0, "KSYStreamer"

    const-string v1, "CameraCapture ready"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;->onInfo(III)V

    :cond_0
    return-void
.end method
