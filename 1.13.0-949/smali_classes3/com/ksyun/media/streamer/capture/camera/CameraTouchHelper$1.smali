.class Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$1;
.super Ljava/lang/Object;
.source "CameraTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;-><init>()V
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

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$1;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$1;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/CameraCapture;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraTouchHelper"

    const-string v1, "Reset focus mode"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$1;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/CameraCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-direct {v3, v4, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, v3, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$1;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/CameraCapture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setCameraParameters(Landroid/hardware/Camera$Parameters;)Z

    return-void
.end method
