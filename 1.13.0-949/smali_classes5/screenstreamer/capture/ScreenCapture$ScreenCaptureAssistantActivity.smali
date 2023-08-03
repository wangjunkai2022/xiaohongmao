.class public Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;
.super Landroid/app/Activity;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscreenstreamer/capture/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenCaptureAssistantActivity"
.end annotation


# instance fields
.field public a:Lscreenstreamer/capture/ScreenCapture;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;->a:Lscreenstreamer/capture/ScreenCapture;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->a(Lscreenstreamer/capture/ScreenCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 6
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;->a:Lscreenstreamer/capture/ScreenCapture;

    iput-object p3, p1, Lscreenstreamer/capture/ScreenCapture;->x:Landroid/content/Intent;

    .line 7
    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->g(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->g(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;->a:Lscreenstreamer/capture/ScreenCapture;

    .line 11
    sput-object p1, Lscreenstreamer/capture/ScreenCapture;->B:Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    sput-object p0, Lscreenstreamer/capture/ScreenCapture;->B:Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "ScreenCapture.OnAssistantActivityCreated"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
