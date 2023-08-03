.class Lscreenstreamer/capture/ScreenCapture$c;
.super Landroid/os/Handler;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/capture/ScreenCapture;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lscreenstreamer/capture/ScreenCapture;


# direct methods
.method constructor <init>(Lscreenstreamer/capture/ScreenCapture;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture$c;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$c;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->t(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$c;->a:Lscreenstreamer/capture/ScreenCapture;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lscreenstreamer/capture/ScreenCapture;->s(Lscreenstreamer/capture/ScreenCapture;I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$c;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->q(Lscreenstreamer/capture/ScreenCapture;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$c;->a:Lscreenstreamer/capture/ScreenCapture;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, v0, Lscreenstreamer/capture/ScreenCapture;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1, v2}, Lscreenstreamer/capture/ScreenCapture;->I(IILandroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$c;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->p(Lscreenstreamer/capture/ScreenCapture;)V

    :goto_0
    return-void
.end method
