.class public Lcom/ksyun/media/player/KSYNetworkDetector;
.super Ljava/lang/Object;
.source "KSYNetworkDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;,
        Lcom/ksyun/media/player/KSYNetworkDetector$a;,
        Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;
    }
.end annotation


# static fields
.field public static final KSY_NETWORK_DETECTION_EVENT_ERROR:I = 0x3

.field public static final KSY_NETWORK_DETECTION_EVENT_FINISH:I = 0x2

.field public static final KSY_NETWORK_DETECTION_EVENT_ONCE_DONE:I = 0x1

.field public static final KSY_NETWORK_DETECTOR_TYPE_TRACKER:I = 0x1

.field public static final KSY_NETWORK_TRACKER_TYPE_DESTINATION:I = 0x1

.field private static final a:I

.field private static final b:I

.field private static d:Lcom/ksyun/media/player/KSYNetworkDetector;


# instance fields
.field private final c:Ljava/lang/String;

.field private e:Lcom/ksyun/media/player/KSYNetworkDetector$a;

.field private f:Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;

.field private g:Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "router_number"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->c:Ljava/lang/String;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/player/KSYNetworkDetector$a;

    invoke-direct {v1, p0, p0, v0}, Lcom/ksyun/media/player/KSYNetworkDetector$a;-><init>(Lcom/ksyun/media/player/KSYNetworkDetector;Lcom/ksyun/media/player/KSYNetworkDetector;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->e:Lcom/ksyun/media/player/KSYNetworkDetector$a;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/ksyun/media/player/KSYNetworkDetector$a;

    invoke-direct {v1, p0, p0, v0}, Lcom/ksyun/media/player/KSYNetworkDetector$a;-><init>(Lcom/ksyun/media/player/KSYNetworkDetector;Lcom/ksyun/media/player/KSYNetworkDetector;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->e:Lcom/ksyun/media/player/KSYNetworkDetector$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->e:Lcom/ksyun/media/player/KSYNetworkDetector$a;

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYNetworkDetector;->a()V

    return-void
.end method

.method private native _destroy()V
.end method

.method private native _getStatus()I
.end method

.method private native _getTrackerConfig()Landroid/os/Bundle;
.end method

.method private native _getTrackerDetectResult()Landroid/os/Bundle;
.end method

.method private native _open(ILjava/lang/Object;)I
.end method

.method private native _start(Ljava/lang/String;ILjava/lang/Object;)V
.end method

.method private native _stop()V
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ksyplayer"

    const-string v2, "ksylive"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v2}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {v1}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/ksyun/media/player/KSYNetworkDetector;)Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->g:Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;

    return-object p0
.end method

.method public static getInstance()Lcom/ksyun/media/player/KSYNetworkDetector;
    .locals 2

    .line 1
    sget-object v0, Lcom/ksyun/media/player/KSYNetworkDetector;->d:Lcom/ksyun/media/player/KSYNetworkDetector;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ksyun/media/player/KSYNetworkDetector;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ksyun/media/player/KSYNetworkDetector;->d:Lcom/ksyun/media/player/KSYNetworkDetector;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/player/KSYNetworkDetector;

    invoke-direct {v1}, Lcom/ksyun/media/player/KSYNetworkDetector;-><init>()V

    sput-object v1, Lcom/ksyun/media/player/KSYNetworkDetector;->d:Lcom/ksyun/media/player/KSYNetworkDetector;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ksyun/media/player/KSYNetworkDetector;->d:Lcom/ksyun/media/player/KSYNetworkDetector;

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIDLjava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/KSYNetworkDetector;

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    .line 3
    iget-object p0, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->e:Lcom/ksyun/media/player/KSYNetworkDetector$a;

    if-eqz p0, :cond_2

    const/4 p4, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/player/KSYNetworkDetector;->_destroy()V

    return-void
.end method

.method public getTrackerConfig()Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->f:Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYNetworkDetector;->_getTrackerConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    new-instance v1, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;

    invoke-direct {v1}, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->f:Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;

    .line 4
    invoke-virtual {v1, v0}, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->parse(Landroid/os/Bundle;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->f:Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;

    return-object v0
.end method

.method public getTrackerDetectResult()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYNetworkDetector;->_getTrackerDetectResult()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "router_number"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;

    invoke-direct {v5}, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;-><init>()V

    .line 6
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 7
    invoke-virtual {v5, v4}, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->parse(Landroid/os/Bundle;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 8
    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public open(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/ksyun/media/player/KSYNetworkDetector;->_open(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setOnNetworkDetectionEventListener(Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->g:Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;)I
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYNetworkDetector;->getTrackerConfig()Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYNetworkDetector;->f:Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;

    .line 3
    invoke-virtual {p2}, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/ksyun/media/player/KSYNetworkDetector;->_start(Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/player/KSYNetworkDetector;->_stop()V

    return-void
.end method
