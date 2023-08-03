.class Lcom/ksyun/media/streamer/capture/CameraCapture$2;
.super Ljava/lang/Object;
.source "CameraCapture.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/CameraCapture;->e()V
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

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$2;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$2;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->i(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->h()V

    return-void
.end method
