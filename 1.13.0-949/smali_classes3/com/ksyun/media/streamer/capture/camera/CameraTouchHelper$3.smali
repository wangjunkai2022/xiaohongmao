.class Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;
.super Ljava/lang/Object;
.source "CameraTouchHelper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/CameraCapture;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->cancelAutoFocus()V

    .line 2
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->f(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->e(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {p2, p1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;Z)Z

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->f(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->g(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
