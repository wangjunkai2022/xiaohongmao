.class Lscreenstreamer/capture/ScreenCapture$d;
.super Landroid/os/Handler;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscreenstreamer/capture/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lscreenstreamer/capture/ScreenCapture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscreenstreamer/capture/ScreenCapture;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscreenstreamer/capture/ScreenCapture;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->o(Lscreenstreamer/capture/ScreenCapture;)Lscreenstreamer/capture/ScreenCapture$e;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->o(Lscreenstreamer/capture/ScreenCapture;)Lscreenstreamer/capture/ScreenCapture$e;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lscreenstreamer/capture/ScreenCapture$e;->onError(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->o(Lscreenstreamer/capture/ScreenCapture;)Lscreenstreamer/capture/ScreenCapture$e;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->o(Lscreenstreamer/capture/ScreenCapture;)Lscreenstreamer/capture/ScreenCapture$e;

    move-result-object p1

    invoke-interface {p1}, Lscreenstreamer/capture/ScreenCapture$e;->onStarted()V

    :cond_3
    :goto_0
    return-void
.end method
