.class public Lscreenstreamer/capture/a;
.super Landroid/content/BroadcastReceiver;
.source "ScreenBroadcastReceiver.java"


# instance fields
.field a:Lscreenstreamer/capture/ScreenCapture;


# direct methods
.method public constructor <init>(Lscreenstreamer/capture/ScreenCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lscreenstreamer/capture/a;->a:Lscreenstreamer/capture/ScreenCapture;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenCapture.OnAssistantActivityCreated"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lscreenstreamer/capture/a;->a:Lscreenstreamer/capture/ScreenCapture;

    .line 3
    sget-object p2, Lscreenstreamer/capture/ScreenCapture;->B:Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;

    if-eqz p2, :cond_1

    .line 4
    iput-object p1, p2, Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;->a:Lscreenstreamer/capture/ScreenCapture;

    .line 5
    iget-object v0, p1, Lscreenstreamer/capture/ScreenCapture;->c:Landroid/media/projection/MediaProjectionManager;

    if-nez v0, :cond_0

    const-string v0, "media_projection"

    .line 6
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p1, Lscreenstreamer/capture/ScreenCapture;->c:Landroid/media/projection/MediaProjectionManager;

    .line 7
    :cond_0
    iget-object p1, p2, Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;->a:Lscreenstreamer/capture/ScreenCapture;

    iget-object p1, p1, Lscreenstreamer/capture/ScreenCapture;->c:Landroid/media/projection/MediaProjectionManager;

    .line 8
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
