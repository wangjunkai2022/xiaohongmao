.class Lcom/ksyun/media/streamer/capture/camera/b$b$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Camera$ShutterCallback;

.field final synthetic b:Landroid/hardware/Camera$PictureCallback;

.field final synthetic c:Landroid/hardware/Camera$PictureCallback;

.field final synthetic d:Landroid/hardware/Camera$PictureCallback;

.field final synthetic e:Lcom/ksyun/media/streamer/capture/camera/b$b;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/camera/b$b;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->e:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->a:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->b:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->c:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->d:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->e:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->a:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->b:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->c:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->d:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b$b$1;->e:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/camera/b$b;->a:Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/b;->b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
