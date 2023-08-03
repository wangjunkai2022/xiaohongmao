.class public Lcom/ksyun/media/streamer/capture/camera/a;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# static fields
.field private static final a:Ljava/lang/String; = "CameraHolder"

.field private static i:Lcom/ksyun/media/streamer/capture/camera/a;


# instance fields
.field private b:Lcom/ksyun/media/streamer/capture/camera/b$b;

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:[Landroid/hardware/Camera$CameraInfo;

.field private h:Landroid/hardware/Camera$Parameters;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->d:I

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->e:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->f:I

    .line 5
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 6
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/a;->c:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->c:I

    .line 8
    :goto_0
    iget v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->c:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->g:[Landroid/hardware/Camera$CameraInfo;

    const/4 v1, 0x0

    .line 9
    :goto_1
    iget v3, p0, Lcom/ksyun/media/streamer/capture/camera/a;->c:I

    if-ge v1, v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/camera/a;->g:[Landroid/hardware/Camera$CameraInfo;

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v4, v3, v1

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/camera/a;->g:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v1

    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v3, "CameraHolder"

    const-string v4, "Failed to getCameraInfo"

    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    :goto_3
    iget v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->c:I

    if-ge v2, v1, :cond_4

    .line 14
    iget v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->e:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->g:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_2

    .line 15
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/a;->e:I

    goto :goto_4

    .line 16
    :cond_2
    iget v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->f:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->g:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 17
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/a;->f:I

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static declared-synchronized a()Lcom/ksyun/media/streamer/capture/camera/a;
    .locals 2

    const-class v0, Lcom/ksyun/media/streamer/capture/camera/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ksyun/media/streamer/capture/camera/a;->i:Lcom/ksyun/media/streamer/capture/camera/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ksyun/media/streamer/capture/camera/a;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/capture/camera/a;-><init>()V

    sput-object v1, Lcom/ksyun/media/streamer/capture/camera/a;->i:Lcom/ksyun/media/streamer/capture/camera/a;

    .line 3
    :cond_0
    sget-object v1, Lcom/ksyun/media/streamer/capture/camera/a;->i:Lcom/ksyun/media/streamer/capture/camera/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(I)Lcom/ksyun/media/streamer/capture/camera/b$b;
    .locals 3

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->d:I

    if-eq v1, p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->d:I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "CameraHolder"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/ksyun/media/streamer/capture/camera/b;->a()Lcom/ksyun/media/streamer/capture/camera/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/camera/b;->a(I)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;

    .line 11
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->d:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 12
    :try_start_2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->h:Landroid/hardware/Camera$Parameters;

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->h:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Lcom/ksyun/media/streamer/capture/camera/CameraDisabledException;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/capture/camera/CameraDisabledException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    const-string v0, "CameraHolder"

    const-string v1, "fail to connect Camera"

    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    new-instance v0, Lcom/ksyun/media/streamer/capture/camera/CameraHardwareException;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/capture/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$Parameters;)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "CameraHolder"

    const-string v1, "reconnect failed."

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/ksyun/media/streamer/capture/camera/CameraHardwareException;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/capture/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->b:Lcom/ksyun/media/streamer/capture/camera/b$b;

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->h:Landroid/hardware/Camera$Parameters;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/a;->f:I

    return v0
.end method
