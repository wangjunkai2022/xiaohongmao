.class public Lcom/ksyun/media/streamer/capture/CameraCapture;
.super Ljava/lang/Object;
.source "CameraCapture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/capture/CameraCapture$b;,
        Lcom/ksyun/media/streamer/capture/CameraCapture$a;,
        Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;
    }
.end annotation


# static fields
.field public static final CAMERA_ERROR_EVICTED:I = -0x7d7

.field public static final CAMERA_ERROR_SERVER_DIED:I = -0x7d6

.field public static final CAMERA_ERROR_START_FAILED:I = -0x7d2

.field public static final CAMERA_ERROR_UNKNOWN:I = -0x7d1

.field public static final CAMERA_STATE_IDLE:I = 0x0

.field public static final CAMERA_STATE_INITIALIZING:I = 0x1

.field public static final CAMERA_STATE_PREVIEWING:I = 0x2

.field public static final CAMERA_STATE_STOPPING:I = 0x3

.field public static final DEFAULT_PREVIEW_FPS:I = 0xf

.field public static final FACING_BACK:I = 0x0

.field public static final FACING_FRONT:I = 0x1

.field private static final a:Ljava/lang/String; = "CameraCapture"

.field private static final b:Z = true

.field private static final c:Z = false

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:I = 0x4

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x4

.field private static final l:I = 0xb


# instance fields
.field private A:Lcom/ksyun/media/streamer/capture/camera/b$b;

.field private B:Landroid/hardware/Camera$Parameters;

.field private final C:Landroid/os/Handler;

.field private D:Landroid/os/HandlerThread;

.field private E:Landroid/os/Handler;

.field private F:Landroid/os/ConditionVariable;

.field private volatile G:Z

.field private H:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private I:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

.field private J:[B

.field private K:Ljava/nio/ByteBuffer;

.field private L:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Lcom/ksyun/media/streamer/util/c;

.field private T:F

.field private U:J

.field private V:J

.field private W:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

.field private X:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

.field private Y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

.field private Z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

.field private aa:Landroid/hardware/Camera$ErrorCallback;

.field private ab:Landroid/hardware/Camera$PreviewCallback;

.field private m:Landroid/content/Context;

.field public final mImgBufSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field public final mImgTexSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

.field private o:Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;

.field private p:I

.field private q:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

.field private r:F

.field private s:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

.field private t:F

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final x:Ljava/lang/Object;

.field private y:I

.field private z:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->x:Ljava/lang/Object;

    .line 4
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->F:Landroid/os/ConditionVariable;

    .line 5
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->G:Z

    .line 6
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->M:Z

    .line 7
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->N:Z

    .line 8
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->O:Z

    .line 9
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->P:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Q:Z

    .line 11
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->R:Z

    .line 12
    new-instance v1, Lcom/ksyun/media/streamer/capture/CameraCapture$3;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$3;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->W:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 13
    new-instance v1, Lcom/ksyun/media/streamer/capture/CameraCapture$4;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$4;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->X:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    .line 14
    new-instance v1, Lcom/ksyun/media/streamer/capture/CameraCapture$5;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$5;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

    .line 15
    new-instance v1, Lcom/ksyun/media/streamer/capture/CameraCapture$6;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$6;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    .line 16
    new-instance v1, Lcom/ksyun/media/streamer/capture/CameraCapture$7;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$7;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->aa:Landroid/hardware/Camera$ErrorCallback;

    .line 17
    new-instance v1, Lcom/ksyun/media/streamer/capture/CameraCapture$8;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$8;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->ab:Landroid/hardware/Camera$PreviewCallback;

    .line 18
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->m:Landroid/content/Context;

    .line 19
    new-instance p1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgTexSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 20
    new-instance p1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgBufSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance p1, Lcom/ksyun/media/streamer/capture/CameraCapture$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture$a;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->C:Landroid/os/Handler;

    .line 23
    new-instance p1, Lcom/ksyun/media/streamer/util/c;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/util/c;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->S:Lcom/ksyun/media/streamer/util/c;

    .line 24
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a()V

    .line 25
    new-instance p1, Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-direct {p1, v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture$b;-><init>(II)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->q:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    const/high16 p1, 0x41700000    # 15.0f

    .line 26
    iput p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->r:F

    .line 27
    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 28
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->W:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 29
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->X:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;)V

    .line 30
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;)V

    .line 31
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V

    return-void
.end method

.method static synthetic A(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->K:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic B(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->N:Z

    return p0
.end method

.method static synthetic C(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->I:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->T:F

    return p1
.end method

.method private a(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 13
    invoke-static {}, Lcom/ksyun/media/streamer/capture/camera/a;->a()Lcom/ksyun/media/streamer/capture/camera/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/camera/a;->c()I

    move-result p1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/capture/camera/a;->a()Lcom/ksyun/media/streamer/capture/camera/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/camera/a;->d()I

    move-result p1

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->V:J

    return-wide p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->z:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->I:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->H:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->K:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera_setup_thread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->D:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->D:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture$1;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/CameraCapture;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->M:Z

    return p1
.end method

.method private b()I
    .locals 5

    .line 5
    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 6
    iput v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    .line 7
    :cond_0
    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(I)I

    move-result v0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->x:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->m:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/content/Context;I)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    .line 10
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->aa:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v0, v4}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$ErrorCallback;)V

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 12
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->d()V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->e()V

    .line 15
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->M:Z

    .line 17
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->N:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catchall_0
    move-exception v0

    .line 18
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v0, "CameraCapture"

    const-string v1, "[setupCamera]-------setup failed"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x7d2

    return v0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/CameraCapture;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->b()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/CameraCapture;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->y:I

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/CameraCapture;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->U:J

    return-wide p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/CameraCapture;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->O:Z

    return p1
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/CameraCapture;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->C:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->v:Ljava/lang/String;

    const-string v1, "auto"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->h()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->g()V

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$ErrorCallback;)V

    .line 11
    invoke-static {}, Lcom/ksyun/media/streamer/capture/camera/a;->a()Lcom/ksyun/media/streamer/capture/camera/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/capture/camera/a;->b()V

    .line 12
    iput-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/CameraCapture;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->N:Z

    return p1
.end method

.method private d()V
    .locals 10

    const-string v0, "setAntibanding failed"

    const-string v1, "setVideoStabilization failed"

    const-string v2, "setFocuseMode failed"

    .line 2
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->q:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    invoke-static {v3, v4}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/hardware/Camera$Parameters;Lcom/ksyun/media/streamer/capture/CameraCapture$b;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v3

    iput-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->s:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    .line 4
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    const-string v4, "CameraCapture"

    if-nez v3, :cond_1

    const-string v3, "setPreviewSize failed"

    .line 5
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v3}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 7
    :cond_1
    iget-boolean v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Q:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    if-ne v3, v6, :cond_2

    iget v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->r:F

    const/high16 v7, 0x41a00000    # 20.0f

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_2

    .line 8
    iget-object v7, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-static {v7, v3, v5}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/hardware/Camera$Parameters;FZ)F

    move-result v3

    iput v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->t:F

    .line 9
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v7, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v7}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    iget v7, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->r:F

    invoke-static {v3, v7, v6}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/hardware/Camera$Parameters;FZ)F

    move-result v3

    iput v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->t:F

    .line 11
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v7, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v7}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "setPreviewFps with fixed value failed, retry"

    .line 12
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    iget v7, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->r:F

    invoke-static {v3, v7, v5}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/hardware/Camera$Parameters;FZ)F

    move-result v3

    iput v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->t:F

    .line 14
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v7, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v7}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    .line 15
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to preview with: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->s:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    iget v7, v7, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->a:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->s:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    iget v8, v8, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->b:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->t:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "fps"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/ksyun/media/streamer/capture/camera/c;->a(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->v:Ljava/lang/String;

    .line 17
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v9, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v9}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 18
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v3}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 20
    :catch_0
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/camera/c;->c(Landroid/hardware/Camera$Parameters;)V

    .line 22
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 23
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 25
    :catch_1
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_5
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/camera/c;->d(Landroid/hardware/Camera$Parameters;)V

    .line 27
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 28
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 30
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v2, v1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 31
    :catch_2
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 32
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview with: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 34
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 35
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v5

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "fps\nFocusMode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 36
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nVideoStabilization: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 37
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nAntibanding: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    .line 38
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/capture/CameraCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->f()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->ab:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->s:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    iget v1, v0, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->a:I

    iget v0, v0, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->b:I

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->J:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, v1, :cond_1

    .line 6
    :cond_0
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->J:[B

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->J:[B

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a([B)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->z:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/graphics/SurfaceTexture;)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->f()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->v:Ljava/lang/String;

    const-string v1, "auto"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    new-instance v1, Lcom/ksyun/media/streamer/capture/CameraCapture$2;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$2;-><init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->G:Z

    return p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/capture/CameraCapture;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    return p0
.end method

.method private f()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->u:I

    iget v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/camera/c;->a(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->F:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->D:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic i(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/camera/b$b;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    return-object p0
.end method

.method static synthetic j(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->n:Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    return-object p0
.end method

.method static synthetic k(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->x:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic l(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->z:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic m(Lcom/ksyun/media/streamer/capture/CameraCapture;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->y:I

    return p0
.end method

.method static synthetic n(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->O:Z

    return p0
.end method

.method static synthetic o(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->M:Z

    return p0
.end method

.method static synthetic p(Lcom/ksyun/media/streamer/capture/CameraCapture;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->r:F

    return p0
.end method

.method static synthetic q(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/util/c;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->S:Lcom/ksyun/media/streamer/util/c;

    return-object p0
.end method

.method static synthetic r(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->R:Z

    return p0
.end method

.method static synthetic s(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->H:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object p0
.end method

.method static synthetic t(Lcom/ksyun/media/streamer/capture/CameraCapture;)J
    .locals 4

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->V:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->V:J

    return-wide v0
.end method

.method static synthetic u(Lcom/ksyun/media/streamer/capture/CameraCapture;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->U:J

    return-wide v0
.end method

.method static synthetic v(Lcom/ksyun/media/streamer/capture/CameraCapture;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->V:J

    return-wide v0
.end method

.method static synthetic w(Lcom/ksyun/media/streamer/capture/CameraCapture;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->u:I

    return p0
.end method

.method static synthetic x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->s:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    return-object p0
.end method

.method static synthetic y(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->o:Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;

    return-object p0
.end method

.method static synthetic z(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->P:Z

    return p0
.end method


# virtual methods
.method public declared-synchronized autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->a(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "CameraCapture"

    const-string v0, "Call autoFocus on invalid state!"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelAutoFocus()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "CameraCapture"

    const-string v1, "Call cancelAutoFocus on invalid state!"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraDisplayOrientation()I
    .locals 2

    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->u:I

    iget v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/camera/c;->a(II)I

    move-result v0

    return v0
.end method

.method public getCameraFacing()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    return v0
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentPreviewFps()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->T:F

    return v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTargetPreviewFps()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->t:F

    return v0
.end method

.method public getTargetPreviewSize()Lcom/ksyun/media/streamer/capture/CameraCapture$b;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->s:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    return-object v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->P:Z

    return v0
.end method

.method public declared-synchronized isTorchSupported()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "torch"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 5
    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    .line 6
    :cond_3
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->O:Z

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->requestRender()V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->stop()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->J:[B

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgTexSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgBufSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->W:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->X:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;)V

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Y:Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;)V

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->L:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->x:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->z:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 12
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->z:Landroid/graphics/SurfaceTexture;

    .line 13
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->D:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :try_start_3
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->D:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :goto_0
    :try_start_4
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->D:Landroid/os/HandlerThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_5
    const-string v1, "CameraCapture"

    const-string v2, "CameraSetUpThread Interrupted!"

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 19
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->D:Landroid/os/HandlerThread;

    throw v1

    .line 20
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->C:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 22
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 23
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCameraParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCameraParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->c(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableExposureWorkaround(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->Q:Z

    return-void
.end method

.method public setEnableFrameDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->R:Z

    return-void
.end method

.method public setOnCameraCaptureListener(Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->n:Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;

    return-void
.end method

.method public setOnPreviewFrameListener(Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->o:Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    rem-int/lit16 v1, p1, 0xb4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setIsLandscape(Z)V

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->u:I

    if-ne v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->u:I

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->f()V

    .line 6
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->M:Z

    .line 7
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->N:Z

    :cond_2
    return-void
.end method

.method public setPreviewFps(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->r:F

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    if-le p1, p2, :cond_0

    .line 1
    new-instance v0, Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    invoke-direct {v0, p1, p2}, Lcom/ksyun/media/streamer/capture/CameraCapture$b;-><init>(II)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->q:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    invoke-direct {v0, p2, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture$b;-><init>(II)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->q:Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    :goto_0
    return-void
.end method

.method public declared-synchronized start(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraCapture"

    const-string v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRecord()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->P:Z

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraCapture"

    const-string v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->F:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->G:Z

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->F:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->G:Z

    const-string v0, "CameraCapture"

    const-string v1, "stopped"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRecord()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->P:Z

    return-void
.end method

.method public declared-synchronized switchCamera()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string v0, "CameraCapture"

    const-string v1, "Call start on invalid state"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v2

    .line 4
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->p:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_1

    .line 5
    monitor-exit p0

    return v2

    .line 6
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->E:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toggleTorch(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "torch"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    const-string v0, "torch"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    const-string p1, "off"

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "CameraCapture"

    const-string v0, "Toggle flash failed!"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->A:Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->i()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture;->B:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return v2

    :cond_3
    const/4 p1, 0x1

    .line 12
    monitor-exit p0

    return p1

    .line 13
    :cond_4
    monitor-exit p0

    return v2

    .line 14
    :cond_5
    :goto_1
    monitor-exit p0

    return v2

    .line 15
    :cond_6
    :goto_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
