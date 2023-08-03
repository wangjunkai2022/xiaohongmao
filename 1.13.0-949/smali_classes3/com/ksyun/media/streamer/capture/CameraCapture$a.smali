.class Lcom/ksyun/media/streamer/capture/CameraCapture$a;
.super Landroid/os/Handler;
.source "CameraCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/CameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ksyun/media/streamer/capture/CameraCapture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/CameraCapture;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/streamer/capture/CameraCapture;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "CameraCapture"

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->stop()V

    .line 4
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->reportError(II)V

    .line 6
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->j(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->j(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;->onError(I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->j(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->j(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    move-result-object p1

    .line 10
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->f(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;->onFacingChanged(I)V

    goto :goto_0

    :cond_3
    const-string p1, "Camera closed"

    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "Camera preview started"

    .line 12
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->j(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 14
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->j(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;->onStarted()V

    :cond_5
    :goto_0
    return-void
.end method
