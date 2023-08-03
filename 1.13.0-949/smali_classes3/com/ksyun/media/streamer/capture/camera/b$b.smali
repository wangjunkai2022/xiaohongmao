.class public Lcom/ksyun/media/streamer/capture/camera/b$b;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/camera/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/camera/b;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/capture/camera/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public a(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 29
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 30
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public a(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 27
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public a(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 32
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 33
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 34
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->e(Lcom/ksyun/media/streamer/capture/camera/b;)Ljava/lang/RuntimeException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->e(Lcom/ksyun/media/streamer/capture/camera/b;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public a(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/ksyun/media/streamer/capture/camera/b$b$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/streamer/capture/camera/b$b$1;-><init>(Lcom/ksyun/media/streamer/capture/camera/b$b;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->d(Lcom/ksyun/media/streamer/capture/camera/b;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->d(Lcom/ksyun/media/streamer/capture/camera/b;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public b(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public b(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "CameraManager"

    const-string v0, "Camera set parameters failed"

    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public c(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public i()Landroid/hardware/Camera$Parameters;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->f(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    return-object v0
.end method
