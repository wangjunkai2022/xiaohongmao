.class public Lscreenstreamer/capture/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscreenstreamer/capture/ScreenCapture$e;,
        Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;,
        Lscreenstreamer/capture/ScreenCapture$d;
    }
.end annotation


# static fields
.field public static final A:I = 0x3e9

.field public static B:Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity; = null

.field public static final C:I = 0x0

.field public static final D:I = 0x1

.field public static final E:I = 0x2

.field public static final F:I = 0x3

.field public static final G:I = 0x4

.field public static final H:I = -0x1

.field public static final I:I = -0x2

.field public static final J:I = 0x4

.field public static final K:I = 0x5

.field private static final L:I = 0x1

.field private static final M:I = 0x2

.field private static final N:I = 0x3

.field private static final O:I = 0x4

.field private static final P:I = 0x5

.field private static final Q:I = 0x1

.field private static final R:Z = true

.field private static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String; = "ScreenCapture.OnAssistantActivityCreated"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lscreenstreamer/capture/ScreenCapture$e;

.field public c:Landroid/media/projection/MediaProjectionManager;

.field private d:Landroid/media/projection/MediaProjection;

.field private e:Landroid/hardware/display/VirtualDisplay;

.field private final f:Landroid/content/BroadcastReceiver;

.field private g:I

.field private h:I

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private k:I

.field private l:Landroid/view/Surface;

.field private m:Landroid/graphics/SurfaceTexture;

.field private n:Z

.field private o:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private p:Landroid/os/Handler;

.field private q:Landroid/os/HandlerThread;

.field private r:Landroid/os/Handler;

.field private s:Ljava/lang/Runnable;

.field private t:J

.field private u:J

.field public v:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

.field public x:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lscreenstreamer/capture/ScreenCapture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lscreenstreamer/capture/a;

    invoke-direct {v0, p0}, Lscreenstreamer/capture/a;-><init>(Lscreenstreamer/capture/ScreenCapture;)V

    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->f:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x500

    .line 3
    iput v0, p0, Lscreenstreamer/capture/ScreenCapture;->g:I

    const/16 v0, 0x2d0

    .line 4
    iput v0, p0, Lscreenstreamer/capture/ScreenCapture;->h:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lscreenstreamer/capture/ScreenCapture;->n:Z

    .line 6
    new-instance v1, Lscreenstreamer/capture/ScreenCapture$b;

    invoke-direct {v1, p0}, Lscreenstreamer/capture/ScreenCapture$b;-><init>(Lscreenstreamer/capture/ScreenCapture;)V

    iput-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->w:Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 7
    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lscreenstreamer/capture/ScreenCapture;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 9
    invoke-virtual {p2, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;)V

    .line 10
    new-instance p1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->v:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 11
    new-instance p1, Lscreenstreamer/capture/ScreenCapture$d;

    invoke-direct {p1, p0}, Lscreenstreamer/capture/ScreenCapture$d;-><init>(Lscreenstreamer/capture/ScreenCapture;)V

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    new-instance p1, Lscreenstreamer/capture/ScreenCapture$a;

    invoke-direct {p1, p0}, Lscreenstreamer/capture/ScreenCapture$a;-><init>(Lscreenstreamer/capture/ScreenCapture;)V

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->s:Ljava/lang/Runnable;

    .line 14
    invoke-direct {p0}, Lscreenstreamer/capture/ScreenCapture;->J()V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the context or render must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic A(Lscreenstreamer/capture/ScreenCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lscreenstreamer/capture/ScreenCapture;->n:Z

    return p0
.end method

.method static synthetic B(Lscreenstreamer/capture/ScreenCapture;Z)Z
    .locals 0

    iput-boolean p1, p0, Lscreenstreamer/capture/ScreenCapture;->n:Z

    return p1
.end method

.method static synthetic C(Lscreenstreamer/capture/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->e:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static synthetic D(Lscreenstreamer/capture/ScreenCapture;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->e:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic E(Lscreenstreamer/capture/ScreenCapture;)I
    .locals 0

    iget p0, p0, Lscreenstreamer/capture/ScreenCapture;->k:I

    return p0
.end method

.method static synthetic F(Lscreenstreamer/capture/ScreenCapture;I)I
    .locals 0

    iput p1, p0, Lscreenstreamer/capture/ScreenCapture;->k:I

    return p1
.end method

.method private G(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    const-string v1, "doRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->e:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 6
    :cond_1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->d:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->e:Landroid/hardware/display/VirtualDisplay;

    .line 9
    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->d:Landroid/media/projection/MediaProjection;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method private H()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    const-string v1, "doScreenSetup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->c:Landroid/media/projection/MediaProjectionManager;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->a:Landroid/content/Context;

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->c:Landroid/media/projection/MediaProjectionManager;

    .line 5
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ScreenCapture.OnAssistantActivityCreated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->a:Landroid/content/Context;

    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->a:Landroid/content/Context;

    const-class v2, Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "screen_setup_thread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->q:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Lscreenstreamer/capture/ScreenCapture$c;

    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lscreenstreamer/capture/ScreenCapture$c;-><init>(Lscreenstreamer/capture/ScreenCapture;Landroid/os/Looper;)V

    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v1, p0, Lscreenstreamer/capture/ScreenCapture;->g:I

    iget v2, p0, Lscreenstreamer/capture/ScreenCapture;->h:I

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->o:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 2
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->v:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private L()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->q:Landroid/os/HandlerThread;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3
    :catch_0
    :try_start_1
    sget-object v1, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    const-string v2, "ScreenSetUpThread Interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :goto_1
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    :cond_0
    return-void

    .line 7
    :goto_2
    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->q:Landroid/os/HandlerThread;

    .line 8
    throw v1
.end method

.method private P()V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->d:Landroid/media/projection/MediaProjection;

    iget v2, p0, Lscreenstreamer/capture/ScreenCapture;->g:I

    iget v3, p0, Lscreenstreamer/capture/ScreenCapture;->h:I

    iget-object v6, p0, Lscreenstreamer/capture/ScreenCapture;->l:Landroid/view/Surface;

    const-string v1, "ScreenCapture"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->e:Landroid/hardware/display/VirtualDisplay;

    .line 2
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lscreenstreamer/capture/ScreenCapture;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic b(Lscreenstreamer/capture/ScreenCapture;)Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object p0
.end method

.method static synthetic c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->m:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic d(Lscreenstreamer/capture/ScreenCapture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->m:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic e(Lscreenstreamer/capture/ScreenCapture;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->l:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic f(Lscreenstreamer/capture/ScreenCapture;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->l:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic g(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lscreenstreamer/capture/ScreenCapture;)V
    .locals 0

    invoke-direct {p0}, Lscreenstreamer/capture/ScreenCapture;->K()V

    return-void
.end method

.method static synthetic i(Lscreenstreamer/capture/ScreenCapture;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->o:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object p0
.end method

.method static synthetic j(Lscreenstreamer/capture/ScreenCapture;)J
    .locals 2

    iget-wide v0, p0, Lscreenstreamer/capture/ScreenCapture;->u:J

    return-wide v0
.end method

.method static synthetic k(Lscreenstreamer/capture/ScreenCapture;J)J
    .locals 0

    iput-wide p1, p0, Lscreenstreamer/capture/ScreenCapture;->u:J

    return-wide p1
.end method

.method static synthetic l(Lscreenstreamer/capture/ScreenCapture;)J
    .locals 4

    iget-wide v0, p0, Lscreenstreamer/capture/ScreenCapture;->u:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lscreenstreamer/capture/ScreenCapture;->u:J

    return-wide v0
.end method

.method static synthetic m(Lscreenstreamer/capture/ScreenCapture;)J
    .locals 2

    iget-wide v0, p0, Lscreenstreamer/capture/ScreenCapture;->t:J

    return-wide v0
.end method

.method static synthetic n(Lscreenstreamer/capture/ScreenCapture;J)J
    .locals 0

    iput-wide p1, p0, Lscreenstreamer/capture/ScreenCapture;->t:J

    return-wide p1
.end method

.method static synthetic o(Lscreenstreamer/capture/ScreenCapture;)Lscreenstreamer/capture/ScreenCapture$e;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->b:Lscreenstreamer/capture/ScreenCapture$e;

    return-object p0
.end method

.method static synthetic p(Lscreenstreamer/capture/ScreenCapture;)V
    .locals 0

    invoke-direct {p0}, Lscreenstreamer/capture/ScreenCapture;->H()V

    return-void
.end method

.method static synthetic q(Lscreenstreamer/capture/ScreenCapture;)V
    .locals 0

    invoke-direct {p0}, Lscreenstreamer/capture/ScreenCapture;->P()V

    return-void
.end method

.method static synthetic r(Lscreenstreamer/capture/ScreenCapture;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic s(Lscreenstreamer/capture/ScreenCapture;I)V
    .locals 0

    invoke-direct {p0, p1}, Lscreenstreamer/capture/ScreenCapture;->G(I)V

    return-void
.end method

.method static synthetic t(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->q:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic u(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lscreenstreamer/capture/ScreenCapture;)I
    .locals 0

    iget p0, p0, Lscreenstreamer/capture/ScreenCapture;->g:I

    return p0
.end method

.method static synthetic x(Lscreenstreamer/capture/ScreenCapture;I)I
    .locals 0

    iput p1, p0, Lscreenstreamer/capture/ScreenCapture;->g:I

    return p1
.end method

.method static synthetic y(Lscreenstreamer/capture/ScreenCapture;)I
    .locals 0

    iget p0, p0, Lscreenstreamer/capture/ScreenCapture;->h:I

    return p0
.end method

.method static synthetic z(Lscreenstreamer/capture/ScreenCapture;I)I
    .locals 0

    iput p1, p0, Lscreenstreamer/capture/ScreenCapture;->h:I

    return p1
.end method


# virtual methods
.method public final I(IILandroid/content/Intent;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    const-string v1, "initProjection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->a:Landroid/content/Context;

    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getEnableDebugLog()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    sget-object p2, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown request code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 6
    sget-object p1, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen Cast Permission Denied, resultCode:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    const/4 p2, 0x5

    const/4 p3, -0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    invoke-virtual {p0}, Lscreenstreamer/capture/ScreenCapture;->Q()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->c:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->d:Landroid/media/projection/MediaProjection;

    .line 11
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->l:Landroid/view/Surface;

    if-eqz p1, :cond_3

    .line 12
    invoke-direct {p0}, Lscreenstreamer/capture/ScreenCapture;->P()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public M()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    invoke-direct {p0}, Lscreenstreamer/capture/ScreenCapture;->L()V

    return-void

    .line 7
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 9
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 10
    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    invoke-direct {p0}, Lscreenstreamer/capture/ScreenCapture;->L()V

    return-void
.end method

.method public N(Lscreenstreamer/capture/ScreenCapture$e;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->b:Lscreenstreamer/capture/ScreenCapture$e;

    return-void
.end method

.method public O()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->B:Lscreenstreamer/capture/ScreenCapture$ScreenCaptureAssistantActivity;

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    const-string v2, "start failed you may best confim the user permission"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1
.end method

.method public Q()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lscreenstreamer/capture/ScreenCapture;->y:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x2

    .line 7
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 8
    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v1, p0, Lscreenstreamer/capture/ScreenCapture;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->requestRender()V

    .line 3
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture;->p:Landroid/os/Handler;

    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture;->s:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
