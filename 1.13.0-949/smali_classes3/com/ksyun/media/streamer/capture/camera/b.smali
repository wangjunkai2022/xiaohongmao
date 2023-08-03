.class public Lcom/ksyun/media/streamer/capture/camera/b;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/capture/camera/b$b;,
        Lcom/ksyun/media/streamer/capture/camera/b$a;
    }
.end annotation


# static fields
.field private static final A:I = 0x15

.field private static final B:I = 0x16

.field private static final C:I = 0x17

.field private static final a:Ljava/lang/String; = "CameraManager"

.field private static b:Lcom/ksyun/media/streamer/capture/camera/b; = null

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:I = 0x5

.field private static final l:I = 0x6

.field private static final m:I = 0x7

.field private static final n:I = 0x8

.field private static final o:I = 0x9

.field private static final p:I = 0xa

.field private static final q:I = 0xb

.field private static final r:I = 0xc

.field private static final s:I = 0xd

.field private static final t:I = 0xe

.field private static final u:I = 0xf

.field private static final v:I = 0x10

.field private static final w:I = 0x11

.field private static final x:I = 0x12

.field private static final y:I = 0x13

.field private static final z:I = 0x14


# instance fields
.field private D:Landroid/os/Handler;

.field private E:Lcom/ksyun/media/streamer/capture/camera/b$b;

.field private F:Landroid/hardware/Camera;

.field private c:Landroid/os/ConditionVariable;

.field private d:Landroid/hardware/Camera$Parameters;

.field private e:Ljava/lang/RuntimeException;

.field private f:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ksyun/media/streamer/capture/camera/b;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/capture/camera/b;-><init>()V

    sput-object v0, Lcom/ksyun/media/streamer/capture/camera/b;->b:Lcom/ksyun/media/streamer/capture/camera/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/b;->c:Landroid/os/ConditionVariable;

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/capture/camera/b$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/ksyun/media/streamer/capture/camera/b$a;-><init>(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->D:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->d:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/b;->F:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/b;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->F:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/b;Lcom/ksyun/media/streamer/capture/camera/b$b;)Lcom/ksyun/media/streamer/capture/camera/b$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->E:Lcom/ksyun/media/streamer/capture/camera/b$b;

    return-object p1
.end method

.method public static a()Lcom/ksyun/media/streamer/capture/camera/b;
    .locals 1

    .line 7
    sget-object v0, Lcom/ksyun/media/streamer/capture/camera/b;->b:Lcom/ksyun/media/streamer/capture/camera/b;

    return-object v0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/b;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->f:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/b;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->e:Ljava/lang/RuntimeException;

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/b;->c:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/b;->D:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/capture/camera/b;)Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/b;->f:Ljava/io/IOException;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/capture/camera/b;)Ljava/lang/RuntimeException;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/b;->e:Ljava/lang/RuntimeException;

    return-object p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/capture/camera/b;)Landroid/hardware/Camera$Parameters;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/b;->d:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method


# virtual methods
.method a(I)Lcom/ksyun/media/streamer/capture/camera/b$b;
    .locals 0

    .line 8
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->F:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Lcom/ksyun/media/streamer/capture/camera/b$b;

    invoke-direct {p1, p0}, Lcom/ksyun/media/streamer/capture/camera/b$b;-><init>(Lcom/ksyun/media/streamer/capture/camera/b;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/b;->E:Lcom/ksyun/media/streamer/capture/camera/b$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
