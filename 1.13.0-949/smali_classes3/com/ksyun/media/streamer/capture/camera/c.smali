.class public Lcom/ksyun/media/streamer/capture/camera/c;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "CameraUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;FZ)F
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const v2, 0x7fffffff

    .line 16
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v5, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v5, v7

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CameraUtil"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 20
    aget v5, v4, v6

    if-lt p1, v5, :cond_5

    aget v5, v4, v7

    if-gt p1, v5, :cond_5

    if-nez p2, :cond_3

    .line 21
    aget v5, v4, v6

    aget v8, v4, v7

    if-eq v5, v8, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    aput p1, v1, v6

    aput p1, v1, v7

    goto :goto_3

    .line 22
    :cond_4
    aget p1, v4, v6

    aput p1, v1, v6

    .line 23
    aget p1, v4, v7

    aput p1, v1, v7

    goto :goto_3

    .line 24
    :cond_5
    array-length v5, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    aget v9, v4, v8

    sub-int v10, v9, p1

    .line 25
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v2, :cond_7

    if-eqz p2, :cond_6

    aput v9, v1, v6

    aput v9, v1, v7

    goto :goto_2

    .line 26
    :cond_6
    aget v2, v4, v6

    aput v2, v1, v6

    .line 27
    aget v2, v4, v7

    aput v2, v1, v7

    :goto_2
    move v2, v10

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    aget p1, v1, v6

    aget p2, v1, v7

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    aget p0, v1, v7

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static a(II)I
    .locals 2

    .line 35
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 36
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 37
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 38
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    rsub-int p0, p1, 0x168

    .line 39
    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 40
    :cond_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p0, p1, 0x168

    :goto_0
    return p0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Lcom/ksyun/media/streamer/capture/CameraCapture$b;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;
    .locals 14

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==== Camera Support: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CameraUtil"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, p1, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->a:I

    sub-int v10, v8, v9

    sub-int v11, v8, v9

    mul-int v10, v10, v11

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    iget v11, p1, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->b:I

    sub-int v12, v7, v11

    sub-int v13, v7, v11

    mul-int v12, v12, v13

    add-int/2addr v10, v12

    if-ge v10, v1, :cond_2

    move v6, v7

    move v5, v8

    move v1, v10

    :cond_2
    if-lt v8, v9, :cond_1

    if-lt v7, v11, :cond_1

    if-ge v10, v2, :cond_1

    move v4, v7

    move v3, v8

    move v2, v10

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_5

    :cond_4
    move v3, v5

    move v4, v6

    .line 33
    :cond_5
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 34
    new-instance p0, Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    invoke-direct {p0, v3, v4}, Lcom/ksyun/media/streamer/capture/CameraCapture$b;-><init>(II)V

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Lcom/ksyun/media/streamer/capture/camera/b$b;
    .locals 1

    .line 11
    invoke-static {p0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/content/Context;)V

    .line 12
    :try_start_0
    invoke-static {}, Lcom/ksyun/media/streamer/capture/camera/a;->a()Lcom/ksyun/media/streamer/capture/camera/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/capture/camera/a;->a(I)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object p0
    :try_end_0
    .catch Lcom/ksyun/media/streamer/capture/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "openCamera failed"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 15
    :cond_0
    throw p0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-video"

    .line 4
    invoke-static {v2, v0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    const-string v4, "auto"

    const-string v5, "continuous-picture"

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v5, v0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v5

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v4, v0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, v4

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "device_policy"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p0, Lcom/ksyun/media/streamer/capture/camera/CameraDisabledException;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/camera/CameraDisabledException;-><init>()V

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    .line 2
    invoke-static {v1, v0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "CameraUtil"

    const-string v0, "Auto white balance not found!"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static c(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_1
    return-void
.end method

.method public static d(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    .line 2
    invoke-static {v1, v0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
