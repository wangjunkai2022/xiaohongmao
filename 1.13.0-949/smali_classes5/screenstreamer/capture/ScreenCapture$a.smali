.class Lscreenstreamer/capture/ScreenCapture$a;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/capture/ScreenCapture;-><init>(Landroid/content/Context;Lcom/ksyun/media/streamer/util/gles/GLRender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lscreenstreamer/capture/ScreenCapture;


# direct methods
.method constructor <init>(Lscreenstreamer/capture/ScreenCapture;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture$a;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$a;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->a(Lscreenstreamer/capture/ScreenCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$a;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->b(Lscreenstreamer/capture/ScreenCapture;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->requestRender()V

    .line 3
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$a;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->u(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture$a;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v1}, Lscreenstreamer/capture/ScreenCapture;->r(Lscreenstreamer/capture/ScreenCapture;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
