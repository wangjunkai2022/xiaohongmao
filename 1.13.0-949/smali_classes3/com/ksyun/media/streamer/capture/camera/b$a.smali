.class Lcom/ksyun/media/streamer/capture/camera/b$a;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/camera/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/camera/b;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v0

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "CameraManager"

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3
    new-instance v2, Ljava/lang/RuntimeException;

    goto/16 :goto_1

    .line 4
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/ksyun/media/streamer/capture/camera/b$a;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 5
    :pswitch_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    goto/16 :goto_3

    .line 6
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_3

    :catch_0
    move-exception v2

    .line 7
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 8
    :pswitch_3
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_3

    .line 9
    :pswitch_4
    :try_start_3
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    return-void

    :catch_1
    move-exception v2

    .line 10
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 11
    :pswitch_5
    :try_start_5
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    :try_start_6
    const-string v2, "Camera set parameters failed"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 13
    :pswitch_6
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto/16 :goto_3

    .line 14
    :pswitch_7
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 15
    :try_start_7
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v2

    .line 16
    :try_start_8
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v3, v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    goto/16 :goto_3

    .line 17
    :pswitch_8
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_3

    .line 18
    :pswitch_9
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_3

    .line 19
    :pswitch_a
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_3

    .line 20
    :pswitch_b
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto/16 :goto_3

    .line 21
    :pswitch_c
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_3

    .line 22
    :pswitch_d
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_3

    .line 23
    :pswitch_e
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_3

    .line 24
    :pswitch_f
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_3

    .line 25
    :pswitch_10
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    return-void

    .line 26
    :pswitch_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/ksyun/media/streamer/capture/camera/b$a;->a(Ljava/lang/Object;)V

    return-void

    .line 27
    :pswitch_12
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    goto/16 :goto_3

    .line 28
    :pswitch_13
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto :goto_3

    .line 29
    :pswitch_14
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    .line 30
    :try_start_9
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catch_4
    move-exception v2

    .line 31
    :try_start_a
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v3, v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_3

    .line 32
    :pswitch_15
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 33
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 34
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Lcom/ksyun/media/streamer/capture/camera/b$b;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    goto :goto_3

    .line 35
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CameraProxy message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    nop

    .line 36
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    :try_start_b
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2

    :catch_6
    const-string p1, "Fail to release the camera."

    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1, v1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 40
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1, v1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Lcom/ksyun/media/streamer/capture/camera/b$b;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    .line 41
    :cond_1
    :goto_3
    :pswitch_16
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 42
    :cond_2
    :goto_4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$a;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_16
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
