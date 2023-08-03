.class Lcom/ksyun/media/streamer/capture/CameraCapture$7;
.super Ljava/lang/Object;
.source "CameraCapture.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/CameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/CameraCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$7;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraCapture"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    const/16 p1, -0x7d1

    goto :goto_0

    :cond_0
    const/16 p1, -0x7d6

    goto :goto_0

    :cond_1
    const/16 p1, -0x7d7

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$7;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$7;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
