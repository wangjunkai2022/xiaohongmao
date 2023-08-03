.class public final Lcom/im/freechat/utils/CameraRecorder;
.super Ljava/lang/Object;
.source "CameraRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/utils/CameraRecorder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraRecorder.kt\ncom/im/freechat/utils/CameraRecorder\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,181:1\n36#2:182\n*S KotlinDebug\n*F\n+ 1 CameraRecorder.kt\ncom/im/freechat/utils/CameraRecorder\n*L\n110#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001NB\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u00a2\u0006\u0004\u0008L\u0010MJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0006J\u0014\u0010\u0014\u001a\u00020\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012J\u0006\u0010\u0015\u001a\u00020\u000eJ\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010,\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R$\u00101\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010-\u001a\u0004\u0008\u001f\u0010.\"\u0004\u0008/\u00100R\u001d\u00108\u001a\u0008\u0012\u0004\u0012\u000203028\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R$\u0010>\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u00089\u0010;\"\u0004\u0008<\u0010=R\"\u0010E\u001a\u00020?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u00084\u0010B\"\u0004\u0008C\u0010DR\"\u0010K\u001a\u00020F8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010G\u001a\u0004\u0008@\u0010H\"\u0004\u0008I\u0010J\u00a8\u0006O"
    }
    d2 = {
        "Lcom/im/freechat/utils/CameraRecorder;",
        "",
        "Landroid/hardware/Camera;",
        "c",
        "Ljava/io/File;",
        "i",
        "",
        "n",
        "r",
        "q",
        "s",
        "Landroid/view/ViewGroup;",
        "view",
        "m",
        "",
        "C",
        "z",
        "p",
        "Lkotlin/Function0;",
        "onNext",
        "B",
        "A",
        "Landroid/net/Uri;",
        "j",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "d",
        "()Landroid/content/Context;",
        "context",
        "Lcom/im/freechat/utils/b;",
        "b",
        "Lcom/im/freechat/utils/b;",
        "k",
        "()Lcom/im/freechat/utils/b;",
        "y",
        "(Lcom/im/freechat/utils/b;)V",
        "preview",
        "Landroid/media/MediaRecorder;",
        "Landroid/media/MediaRecorder;",
        "h",
        "()Landroid/media/MediaRecorder;",
        "x",
        "(Landroid/media/MediaRecorder;)V",
        "mediaRecorder",
        "Landroid/hardware/Camera;",
        "()Landroid/hardware/Camera;",
        "t",
        "(Landroid/hardware/Camera;)V",
        "camera",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/im/freechat/utils/CameraRecorder$State;",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "l",
        "()Landroidx/lifecycle/MutableLiveData;",
        "state",
        "f",
        "Ljava/io/File;",
        "()Ljava/io/File;",
        "v",
        "(Ljava/io/File;)V",
        "currentFile",
        "",
        "g",
        "I",
        "()I",
        "u",
        "(I)V",
        "current",
        "",
        "J",
        "()J",
        "w",
        "(J)V",
        "lastTime",
        "<init>",
        "(Landroid/content/Context;)V",
        "State",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public b:Lcom/im/freechat/utils/b;

.field private c:Landroid/media/MediaRecorder;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Landroid/hardware/Camera;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/utils/CameraRecorder$State;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private f:Ljava/io/File;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/utils/CameraRecorder;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/im/freechat/utils/CameraRecorder$State;->CLEAR:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/utils/CameraRecorder;->e:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Lcom/im/freechat/utils/CameraRecorder;)V
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/utils/CameraRecorder;->o(Lcom/im/freechat/utils/CameraRecorder;)V

    return-void
.end method

.method private final c()Landroid/hardware/Camera;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 2
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 4
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v5, p0, Lcom/im/freechat/utils/CameraRecorder;->g:I

    if-ne v4, v5, :cond_0

    .line 5
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private final i()Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "VID_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private final declared-synchronized n()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->c()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 3
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->k()Lcom/im/freechat/utils/b;

    move-result-object v2

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/im/freechat/utils/b;->b(II)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->k()Lcom/im/freechat/utils/b;

    move-result-object v2

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v0, v3, v1}, Lcom/im/freechat/utils/b;->c(Landroid/hardware/Camera;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    .line 7
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->k()Lcom/im/freechat/utils/b;

    move-result-object v0

    new-instance v1, Lcom/im/freechat/utils/c;

    invoke-direct {v1, p0}, Lcom/im/freechat/utils/c;-><init>(Lcom/im/freechat/utils/CameraRecorder;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final o(Lcom/im/freechat/utils/CameraRecorder;)V
    .locals 4

    const-string v0, "FileUtility"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 3
    iget-object v2, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 7
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 8
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->i()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/im/freechat/utils/CameraRecorder;->f:Ljava/io/File;

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->k()Lcom/im/freechat/utils/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 11
    iget v1, p0, Lcom/im/freechat/utils/CameraRecorder;->g:I

    if-ne v1, v3, :cond_1

    const/16 v1, 0x10e

    goto :goto_1

    :cond_1
    const/16 v1, 0x5a

    :goto_1
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 12
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 13
    iget-object v1, p0, Lcom/im/freechat/utils/CameraRecorder;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/im/freechat/utils/CameraRecorder$State;->PREVIEW:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException preparing MediaRecorder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->r()V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException preparing MediaRecorder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->r()V

    .line 18
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->r()V

    return-void
.end method

.method private final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    return-void
.end method

.method private final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    .line 4
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->r()V

    .line 3
    iget-object v1, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->q()V

    .line 5
    iget-object v1, p0, Lcom/im/freechat/utils/CameraRecorder;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/im/freechat/utils/CameraRecorder$State;->CLEAR:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return v0
.end method

.method public final B(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onNext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->A()Z

    .line 3
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized C()Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/im/freechat/utils/CameraRecorder;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/im/freechat/utils/CameraRecorder;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Landroid/hardware/Camera;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/utils/CameraRecorder;->g:I

    return v0
.end method

.method public final f()Ljava/io/File;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->f:Ljava/io/File;

    return-object v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/utils/CameraRecorder;->h:J

    return-wide v0
.end method

.method public final h()Landroid/media/MediaRecorder;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public final j()Landroid/net/Uri;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fromFile(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final k()Lcom/im/freechat/utils/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->b:Lcom/im/freechat/utils/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "preview"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/utils/CameraRecorder$State;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->e:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final m(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/utils/b;

    iget-object v1, p0, Lcom/im/freechat/utils/CameraRecorder;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/utils/b;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/utils/CameraRecorder;->y(Lcom/im/freechat/utils/b;)V

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->k()Lcom/im/freechat/utils/b;

    move-result-object v1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/im/freechat/utils/b;->b(II)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->k()Lcom/im/freechat/utils/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/im/freechat/utils/CameraRecorder$State;->RECORDING:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->A()Z

    .line 3
    iget v0, p0, Lcom/im/freechat/utils/CameraRecorder;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    iput v1, p0, Lcom/im/freechat/utils/CameraRecorder;->g:I

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/utils/CameraRecorder;->z()V

    return-void
.end method

.method public final t(Landroid/hardware/Camera;)V
    .locals 0
    .param p1    # Landroid/hardware/Camera;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/utils/CameraRecorder;->d:Landroid/hardware/Camera;

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/utils/CameraRecorder;->g:I

    return-void
.end method

.method public final v(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/utils/CameraRecorder;->f:Ljava/io/File;

    return-void
.end method

.method public final w(J)V
    .locals 0

    iput-wide p1, p0, Lcom/im/freechat/utils/CameraRecorder;->h:J

    return-void
.end method

.method public final x(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1    # Landroid/media/MediaRecorder;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/utils/CameraRecorder;->c:Landroid/media/MediaRecorder;

    return-void
.end method

.method public final y(Lcom/im/freechat/utils/b;)V
    .locals 1
    .param p1    # Lcom/im/freechat/utils/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/utils/CameraRecorder;->b:Lcom/im/freechat/utils/b;

    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/CameraRecorder;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/im/freechat/utils/CameraRecorder$State;->PREPEARING:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/utils/CameraRecorder;->n()V

    return-void
.end method
