.class public final Lcom/ksyun/media/player/KSYMediaPlayer;
.super Lcom/ksyun/media/player/a;
.source "KSYMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;,
        Lcom/ksyun/media/player/KSYMediaPlayer$c;,
        Lcom/ksyun/media/player/KSYMediaPlayer$a;,
        Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;,
        Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;,
        Lcom/ksyun/media/player/KSYMediaPlayer$e;,
        Lcom/ksyun/media/player/KSYMediaPlayer$f;,
        Lcom/ksyun/media/player/KSYMediaPlayer$d;,
        Lcom/ksyun/media/player/KSYMediaPlayer$b;,
        Lcom/ksyun/media/player/KSYMediaPlayer$Builder;,
        Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;,
        Lcom/ksyun/media/player/KSYMediaPlayer$g;,
        Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;,
        Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;
    }
.end annotation


# static fields
.field private static final A:I = 0xc351

.field private static final B:I = 0xc352

.field private static final C:I = 0x4e23

.field private static final D:I = 0x4e24

.field private static final E:I = 0x0

.field private static final F:I = 0x3

.field public static final FFP_PROPV_DECODER_AVCODEC:I = 0x1

.field public static final FFP_PROPV_DECODER_MEDIACODEC:I = 0x2

.field private static final G:I = 0x4e25

.field private static final H:I = 0x4e26

.field private static final I:I = 0x4e27

.field private static final J:I = 0x4e28

.field private static final K:I = 0x4e29

.field public static final KSY_LOG_DEBUG:I = 0x3

.field public static final KSY_LOG_DEFAULT:I = 0x1

.field public static final KSY_LOG_ERROR:I = 0x6

.field public static final KSY_LOG_FATAL:I = 0x7

.field public static final KSY_LOG_INFO:I = 0x4

.field public static final KSY_LOG_SILENT:I = 0x8

.field public static final KSY_LOG_UNKNOWN:I = 0x0

.field public static final KSY_LOG_VERBOSE:I = 0x2

.field public static final KSY_LOG_WARN:I = 0x5

.field private static final L:I = 0x4e2a

.field public static final LOG_REPORT_GOT_HEADER:I = 0x6

.field public static final LOG_REPORT_GOT_LOCAL_DNS_INFO:I = 0x7

.field private static final M:I = 0x4e3e

.field public static final MEDIA_LOG_REPORT:I = 0x1f5

.field private static final N:I = 0x4e40

.field private static final O:I = 0x4e3f

.field public static final OPT_CATEGORY_CODEC:I = 0x2

.field public static final OPT_CATEGORY_FORMAT:I = 0x1

.field public static final OPT_CATEGORY_PLAYER:I = 0x4

.field public static final OPT_CATEGORY_SWS:I = 0x3

.field public static final SDL_FCC_RV16:I = 0x36315652

.field public static final SDL_FCC_RV32:I = 0x32335652

.field public static final SDL_FCC_YV12:I = 0x32315659

.field public static final VIDEO_SCALING_MODE_NOSCALE_TO_FIT:I = 0x0

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field protected static final a:I = 0x257

.field private static volatile aJ:Z = false

.field private static volatile aK:Z = false

.field private static ax:Ljava/lang/String; = null

.field protected static final b:I = 0x2711

.field private static final d:Ljava/lang/String; = "com.ksyun.media.player.KSYMediaPlayer"

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:I = 0x5

.field private static final k:I = 0x63

.field private static final l:I = 0x64

.field private static final m:I = 0xc8

.field private static final n:I = 0x9c4a

.field private static final o:I = 0x1

.field private static final p:I = 0x2

.field private static final q:I = 0x2711

.field private static final r:I = 0x2712

.field private static final s:I = 0x2713

.field private static final t:I = 0x4e21

.field private static final u:I = 0x4e22

.field private static final v:I = 0x4e52

.field private static final w:I = 0x4e53

.field private static final x:I = 0x9c41

.field private static final y:I = 0x9c42

.field private static final z:I = 0x9c43


# instance fields
.field private P:J

.field private Q:J

.field private R:I
    .annotation build Lcom/ksyun/media/player/a/a;
    .end annotation
.end field

.field private S:I
    .annotation build Lcom/ksyun/media/player/a/a;
    .end annotation
.end field

.field private T:Landroid/content/Context;

.field private U:Landroid/view/SurfaceHolder;

.field private V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

.field private W:Landroid/os/PowerManager$WakeLock;

.field private X:Z

.field private Y:Z

.field private Z:I

.field private aA:Ljava/lang/Object;

.field private aB:Z

.field private aC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aD:I

.field private aE:Lcom/ksyun/media/player/misc/d;

.field private aF:Ljava/lang/Object;

.field private aG:Ljava/lang/Object;

.field private aH:I

.field private aI:Lcom/ksyun/media/player/KSYMediaPlayer$c;

.field private aL:Lcom/ksyun/media/player/KSYMediaPlayer$d;

.field private aM:Lcom/ksyun/media/player/KSYMediaPlayer$f;

.field private aN:Lcom/ksyun/media/player/KSYMediaPlayer$e;

.field private aO:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;

.field private aP:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

.field private aQ:Ljava/nio/ByteBuffer;

.field private aR:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:J

.field private ag:I

.field private ah:J

.field private ai:I

.field private aj:J

.field private ak:Z

.field private al:Z

.field private am:Ljava/util/UUID;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field private ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Z

.field private av:F

.field private aw:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field c:Lcom/ksyun/media/player/KSYMediaMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/a;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->av:F

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aH:I

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aI:Lcom/ksyun/media/player/KSYMediaPlayer$c;

    .line 8
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aO:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;

    .line 9
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aP:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    .line 10
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aQ:Ljava/nio/ByteBuffer;

    .line 11
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aR:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;

    .line 12
    invoke-static {p1}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->access$100(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    .line 13
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aA:Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aG:Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aF:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->am:Ljava/util/UUID;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ad:I

    .line 18
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ae:I

    .line 19
    iput v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ag:I

    const-wide/16 v2, 0x0

    .line 20
    iput-wide v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ah:J

    const-string v2, "UNKNOWN"

    .line 21
    iput-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->as:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->at:Ljava/lang/String;

    const-string v2, "sw"

    .line 23
    iput-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aw:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;->a:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 26
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ak:Z

    .line 27
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->au:Z

    .line 28
    invoke-static {p1}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->access$200(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->al:Z

    .line 29
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    .line 30
    invoke-static {}, Lcom/ksyun/media/player/misc/e;->a()Lcom/ksyun/media/player/misc/e;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/misc/e;->a(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;Lcom/ksyun/media/player/KSYMediaPlayer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;-><init>(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;)V

    return-void
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getLinkLatencyInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native _getLoopCount()I
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getPropertyFloat(IF)F
.end method

.method private native _getPropertyLong(IJ)J
.end method

.method private native _getPropertyString(I)Ljava/lang/String;
.end method

.method private native _getQosInfo()Landroid/os/Bundle;
.end method

.method private native _getScreenShot(Landroid/graphics/Bitmap;)V
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reload(Ljava/lang/String;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _reset()V
.end method

.method private native _seekTo(JZ)V
.end method

.method private native _setBufferSize(I)V
.end method

.method private native _setDataSource(Lcom/ksyun/media/player/misc/IMediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSourceFd(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSourceList(Ljava/lang/String;)V
.end method

.method private native _setDecodeMode(I)V
.end method

.method private native _setLoopCount(I)V
.end method

.method private native _setMirror(Z)Z
.end method

.method private native _setOption(ILjava/lang/String;J)V
.end method

.method private native _setOption(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setPlayerMute(I)V
.end method

.method private native _setPropertyFloat(IF)V
.end method

.method private native _setPropertyLong(IJ)V
.end method

.method private native _setPropertyString(ILjava/lang/String;)V
.end method

.method private native _setRotateDegree(I)Z
.end method

.method private native _setStreamSelected(IZ)V
.end method

.method private native _setTimeout(II)V
.end method

.method private native _setVideoRenderingState(I)V
.end method

.method private native _setVideoScalingMode(I)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _softReset()V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private a(Ljava/io/FileDescriptor;)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 16
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    return p1
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->am:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ad:I

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ae:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ag:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ah:J

    .line 6
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ak:Z

    .line 7
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->au:Z

    .line 8
    iput-wide v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->af:J

    .line 9
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ai:I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aj:J

    .line 11
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getBufferTimeMax()F

    move-result v1

    iput v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->av:F

    const-string v1, "UNKNOWN"

    .line 12
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->as:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->at:Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->a:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 15
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ClientIP"

    .line 73
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->as:Ljava/lang/String;

    const-string p1, "LocalDnsIP"

    .line 74
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->at:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    const/16 v0, 0x1f5

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 23
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Y:Z

    .line 24
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->d()V

    return-void
.end method

.method private a(ZI)V
    .locals 11

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->au:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 26
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aj:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    .line 28
    div-long v6, v2, v4

    long-to-int v7, v6

    .line 29
    iget-object v6, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aA:Ljava/lang/Object;

    monitor-enter v6

    .line 30
    :try_start_0
    iget-boolean v8, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    if-eqz v8, :cond_3

    .line 31
    monitor-exit v6

    return-void

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getDownloadDataSize()J

    move-result-wide v8

    .line 33
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getServerAddress()Ljava/lang/String;

    move-result-object v10

    .line 34
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long v8, v8, v4

    .line 35
    div-long/2addr v8, v2

    long-to-int v2, v8

    .line 36
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    .line 37
    :try_start_1
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v6, "domain"

    .line 38
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "_id"

    .line 39
    iget-object v6, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->am:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "type"

    const/16 v6, 0x64

    .line 40
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "body_type"

    const-string v6, "cdnMonitor"

    .line 41
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "action_id"

    .line 42
    iget-object v6, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ao:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "taskType"

    const/4 v6, 0x0

    .line 43
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "date"

    .line 44
    invoke-virtual {v3, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "downTime"

    .line 45
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "downSpeed"

    .line 46
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "serverIp"

    .line 47
    invoke-virtual {v3, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "clientIp"

    .line 48
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->as:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ldnsIp"

    .line 49
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->at:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v1, "android"

    .line 50
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_ver"

    .line 51
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dev_model"

    .line 52
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playId"

    .line 53
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aq:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "streamId"

    .line 55
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    const-string v0, "streamId"

    const-string v1, ""

    .line 56
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "net_type"

    .line 57
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksyun/media/player/util/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    if-eqz v0, :cond_5

    const-string p2, "connectDt"

    .line 59
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getConnectTime()I

    move-result v0

    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "respDt"

    .line 60
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getFirstDataTime()I

    move-result v0

    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "dnsDt"

    .line 61
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getAnalyzeDnsTime()I

    move-result v0

    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "httpCode"

    .line 62
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getHttpCode()I

    move-result v0

    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    if-lez p2, :cond_6

    const-string v0, "httpCode"

    .line 63
    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    :goto_1
    const-string p2, "key_count"

    .line 64
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 65
    invoke-virtual {p2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 66
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    :goto_2
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object p2

    invoke-virtual {p2, v3, p1}, Lcom/ksyun/media/player/d/c;->a(Lorg/json/JSONObject;Z)V

    .line 68
    iget-boolean p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->al:Z

    if-eqz p1, :cond_7

    .line 69
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/a;->notifyOnLogEvent(Ljava/lang/String;)V

    .line 70
    :cond_7
    iput-boolean v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->au:Z

    return-void

    :catchall_0
    move-exception p1

    .line 71
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic access$1000(Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->i()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ksyun/media/player/KSYMediaPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ksyun/media/player/KSYMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Z:I

    return p0
.end method

.method static synthetic access$1202(Lcom/ksyun/media/player/KSYMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Z:I

    return p1
.end method

.method static synthetic access$1300(Lcom/ksyun/media/player/KSYMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aa:I

    return p0
.end method

.method static synthetic access$1302(Lcom/ksyun/media/player/KSYMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aa:I

    return p1
.end method

.method static synthetic access$1400(Lcom/ksyun/media/player/KSYMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ab:I

    return p0
.end method

.method static synthetic access$1402(Lcom/ksyun/media/player/KSYMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ab:I

    return p1
.end method

.method static synthetic access$1500(Lcom/ksyun/media/player/KSYMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ac:I

    return p0
.end method

.method static synthetic access$1502(Lcom/ksyun/media/player/KSYMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ac:I

    return p1
.end method

.method static synthetic access$1600(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->am:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ao:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ksyun/media/player/KSYMediaPlayer;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->av:F

    return p0
.end method

.method static synthetic access$2000(Lcom/ksyun/media/player/KSYMediaPlayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ksyun/media/player/KSYMediaPlayer;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(ZI)V

    return-void
.end method

.method static synthetic access$2308(Lcom/ksyun/media/player/KSYMediaPlayer;)I
    .locals 2

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ad:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ad:I

    return v0
.end method

.method static synthetic access$2400(Lcom/ksyun/media/player/KSYMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ah:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/ksyun/media/player/KSYMediaPlayer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ah:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/ksyun/media/player/KSYMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ag:I

    return p0
.end method

.method static synthetic access$2502(Lcom/ksyun/media/player/KSYMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ag:I

    return p1
.end method

.method static synthetic access$2600(Lcom/ksyun/media/player/KSYMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aj:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/ksyun/media/player/KSYMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ai:I

    return p1
.end method

.method static synthetic access$2800(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->az:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/ksyun/media/player/KSYMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->az:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/ksyun/media/player/KSYMediaPlayer;)Lcom/ksyun/media/player/KSYMediaPlayer$b;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ksyun/media/player/KSYMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->P:J

    return-wide v0
.end method

.method static synthetic access$3000(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->checkMediaCodecSupportedResolution(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/ksyun/media/player/KSYMediaPlayer;)Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aO:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ksyun/media/player/KSYMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aH:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->j()V

    return-void
.end method

.method static synthetic access$600(Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->h()V

    return-void
.end method

.method static synthetic access$700(Lcom/ksyun/media/player/KSYMediaPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ksyun/media/player/KSYMediaPlayer;)Lcom/ksyun/media/player/KSYMediaPlayer$g;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-object p0
.end method

.method static synthetic access$802(Lcom/ksyun/media/player/KSYMediaPlayer;Lcom/ksyun/media/player/KSYMediaPlayer$g;)Lcom/ksyun/media/player/KSYMediaPlayer$g;
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->g()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->loadLibrariesOnce()V

    .line 2
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->initNativeOnce()V

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/player/KSYMediaPlayer$b;

    invoke-direct {v1, p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer$b;-><init>(Lcom/ksyun/media/player/KSYMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/ksyun/media/player/KSYMediaPlayer$b;

    invoke-direct {v1, p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer$b;-><init>(Lcom/ksyun/media/player/KSYMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$c;

    invoke-direct {v0, p0, p0}, Lcom/ksyun/media/player/KSYMediaPlayer$c;-><init>(Lcom/ksyun/media/player/KSYMediaPlayer;Lcom/ksyun/media/player/KSYMediaPlayer;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aI:Lcom/ksyun/media/player/KSYMediaPlayer$c;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    const v0, 0xc352

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setPropertyString(ILjava/lang/String;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_c

    .line 9
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    .line 11
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_2
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    .line 13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v8, "video/avc"

    .line 14
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "video/hevc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    invoke-static {v3, v7}, Lcom/ksyun/media/player/f;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/ksyun/media/player/f;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    iget v7, v7, Lcom/ksyun/media/player/f;->j:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "*"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 20
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 21
    iget-object v8, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 22
    iput-object v7, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    goto :goto_2

    .line 23
    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 24
    iput-object v7, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    :cond_a
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 26
    :cond_c
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ay:Ljava/lang/String;

    return-object p1
.end method

.method private static checkMediaCodecSupportedResolution(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p0

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->U:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->X:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Y:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/ksyun/media/player/misc/e;->a()Lcom/ksyun/media/player/misc/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksyun/media/player/misc/e;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ksyplayer/"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 6
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "/"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "null"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ak:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->d:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aj:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ae:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x1

    :try_start_0
    const-string v3, "_id"

    .line 5
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->am:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    const/16 v4, 0x64

    .line 6
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "body_type"

    const-string v4, "onPlayEnd"

    .line 7
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "action_id"

    .line 8
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ao:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "play_len"

    .line 9
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getCurrentPosition()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "block_cnt"

    .line 10
    iget v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ad:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "block_time"

    .line 11
    iget v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ag:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "net_type"

    .line 12
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    invoke-static {v4}, Lcom/ksyun/media/player/util/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "down_size"

    .line 13
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getDownloadDataSize()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "date"

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "first_screen"

    .line 15
    iget v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ai:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "playId"

    .line 16
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aq:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "streamId"

    if-nez v3, :cond_2

    .line 18
    :try_start_1
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string v3, ""

    .line 19
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v3, "play_time_cost"

    .line 20
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "pause_time"

    .line 21
    iget v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ae:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "buf_time_max"

    .line 22
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getBufferTimeMax()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "key_count"

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 24
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 25
    :goto_1
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ksyun/media/player/d/c;->a(Lorg/json/JSONObject;)V

    .line 26
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ak:Z

    .line 27
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->al:Z

    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ksyun/media/player/a;->notifyOnLogEvent(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private g()V
    .locals 14

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "unknown"

    const-string v2, "N/A"

    const-string v3, "N/A"

    .line 2
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aA:Ljava/lang/Object;

    monitor-enter v4

    .line 3
    :try_start_0
    iget-boolean v5, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    if-eqz v5, :cond_0

    const-string v5, "N/A"

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getServerAddress()Ljava/lang/String;

    move-result-object v5

    .line 5
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lcom/ksyun/media/player/KSYMediaMeta;->parse(Landroid/os/Bundle;)Lcom/ksyun/media/player/KSYMediaMeta;

    move-result-object v4

    iput-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    const/4 v6, 0x0

    .line 8
    iput-object v6, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v4}, Lcom/ksyun/media/player/KSYMediaMeta;->getStreamId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 13
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta;->getFirstDataTime()I

    move-result v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v2}, Lcom/ksyun/media/player/KSYMediaMeta;->getPrepareCostTime()I

    move-result v2

    .line 16
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v3}, Lcom/ksyun/media/player/KSYMediaMeta;->getPrepareReadBytes()I

    move-result v3

    .line 17
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v4}, Lcom/ksyun/media/player/KSYMediaMeta;->getParserInfoStatus()I

    move-result v4

    .line 18
    iget-object v7, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v7}, Lcom/ksyun/media/player/KSYMediaMeta;->getOpenStreamCostTime()I

    move-result v7

    .line 19
    iget-object v8, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v8}, Lcom/ksyun/media/player/KSYMediaMeta;->getStreamType()Ljava/lang/String;

    move-result-object v8

    .line 20
    iget-object v9, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v9}, Lcom/ksyun/media/player/KSYMediaMeta;->getVideoCodec()Ljava/lang/String;

    move-result-object v9

    .line 21
    iget-object v10, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v10}, Lcom/ksyun/media/player/KSYMediaMeta;->getAudioCodec()Ljava/lang/String;

    move-result-object v10

    move v13, v2

    move v2, v1

    move-object v1, v8

    move v8, v7

    move v7, v4

    move v4, v3

    move v3, v13

    goto :goto_2

    :cond_3
    move-object v9, v2

    move-object v10, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    :try_start_2
    const-string v11, "_id"

    .line 22
    iget-object v12, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->am:Ljava/util/UUID;

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "type"

    const/16 v12, 0x64

    .line 23
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "body_type"

    const-string v12, "onPrepared"

    .line 24
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "prepare_cost"

    .line 25
    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "prepare_read_bytes"

    .line 26
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "parser_info_status"

    .line 27
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "open_stream_cost"

    .line 28
    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "stream_type"

    .line 29
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vcodec"

    .line 30
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "acodec"

    .line 31
    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action_id"

    .line 32
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    .line 33
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "buf_time_max"

    .line 34
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getBufferTimeMax()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "play_stat"

    const-string v3, "ok"

    .line 35
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail_code"

    .line 36
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "first_frame"

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "net_type"

    .line 38
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    invoke-static {v2}, Lcom/ksyun/media/player/util/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "net_des"

    .line 39
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    invoke-static {v2}, Lcom/ksyun/media/player/util/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverIp"

    .line 40
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "date"

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "playId"

    .line 42
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "streamId"

    .line 44
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    const-string v1, "streamId"

    const-string v2, ""

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    const-string v1, "key_count"

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    :goto_4
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ksyun/media/player/d/c;->a(Lorg/json/JSONObject;)V

    .line 49
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->al:Z

    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ksyun/media/player/a;->notifyOnLogEvent(Ljava/lang/String;)V

    .line 51
    :cond_5
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/d/c;->a(Landroid/os/Handler;)V

    return-void

    :catchall_1
    move-exception v0

    .line 52
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMediaDataSource()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Q:J

    return-wide v0
.end method

.method private getMediaPlayer()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->P:J

    return-wide v0
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method private h()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getAnalyzeDnsTime()I

    move-result v0

    .line 4
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v3}, Lcom/ksyun/media/player/KSYMediaMeta;->getConnectTime()I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v4}, Lcom/ksyun/media/player/KSYMediaMeta;->getFirstDataTime()I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aA:Ljava/lang/Object;

    monitor-enter v5

    .line 7
    :try_start_0
    iget-boolean v6, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    if-eqz v6, :cond_1

    .line 8
    monitor-exit v5

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getDownloadDataSize()J

    move-result-wide v6

    .line 10
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aj:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_2

    const-wide/16 v12, 0x3e8

    mul-long v6, v6, v12

    .line 12
    div-long/2addr v6, v8

    goto :goto_0

    :cond_2
    move-wide v6, v10

    :goto_0
    const/16 v5, 0x50

    if-le v0, v5, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/16 v5, 0x1e

    if-le v3, v5, :cond_4

    const/4 v0, 0x1

    :cond_4
    const/16 v3, 0x64

    if-le v4, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    cmp-long v3, v6, v10

    if-lez v3, :cond_6

    const-wide/16 v3, 0xc8

    cmp-long v5, v6, v3

    if-gez v5, :cond_6

    const/4 v0, 0x1

    .line 13
    :cond_6
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->c:Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-virtual {v3}, Lcom/ksyun/media/player/KSYMediaMeta;->getHttpCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_7

    goto :goto_2

    :cond_7
    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    const/4 v2, 0x0

    .line 15
    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(ZI)V

    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v1, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "unsupport"

    :cond_0
    :try_start_0
    const-string v2, "_id"

    .line 3
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->am:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "body_type"

    const-string v3, "decMonitor"

    .line 4
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "action_id"

    .line 5
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ao:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "date"

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "use_dec_type"

    .line 7
    iget-object v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aw:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dev_support_dec"

    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "real_dec_type"

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->az:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playId"

    .line 10
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "streamId"

    if-nez v1, :cond_1

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ap:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "key_count"

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const-string v1, "sw"

    .line 16
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aw:Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    sput-object v1, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ksyun/media/player/d/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static initNativeOnce()V
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/ksyun/media/player/KSYMediaPlayer;->aK:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_init()V

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/ksyun/media/player/KSYMediaPlayer;->aK:Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->al:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aq:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getLinkLatencyInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ksyun/media/player/d/c;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/ksyun/media/player/a;->notifyOnLogEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibrariesOnce()V
    .locals 3

    .line 1
    const-class v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/ksyun/media/player/KSYMediaPlayer;->aJ:Z

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ksylive"

    .line 4
    invoke-static {v1}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ksyplayer"

    .line 5
    invoke-static {v1}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ksylive"

    invoke-static {v1, v2}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ksyplayer"

    invoke-static {v1, v2}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 8
    sput-boolean v1, Lcom/ksyun/media/player/KSYMediaPlayer;->aJ:Z

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native native_addMasterClock(Ljava/lang/Object;)V
.end method

.method private native native_addTimedTextSource(Ljava/lang/String;)V
.end method

.method private native native_addVideoRawBuffer([B)V
.end method

.method private native native_enableDeinterlace(Z)V
.end method

.method private native native_enableFastPlayMode(Z)V
.end method

.method private native native_enableVideoRawDataCallback(Z)V
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_initRecorder(Ljava/lang/String;II)V
.end method

.method private native native_message_loop(Ljava/lang/Object;)V
.end method

.method public static native native_profileBegin(Ljava/lang/String;)V
.end method

.method public static native native_profileEnd()V
.end method

.method public static native native_setLogLevel(I)V
.end method

.method public static native native_setPCMBuffer(JLjava/nio/ByteBuffer;)V
.end method

.method private native native_setPlayableRanges(JJ)V
.end method

.method private native native_setVideoOffset(FF)V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static onNativeInvoke(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 5
    .annotation build Lcom/ksyun/media/player/a/b;
    .end annotation

    .line 1
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onNativeInvoke %d"

    invoke-static {v0, v3, v2}, Lcom/ksyun/media/player/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_6

    .line 2
    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    .line 3
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz p0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aM:Lcom/ksyun/media/player/KSYMediaPlayer$f;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer$f;->a(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_1

    return v4

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aL:Lcom/ksyun/media/player/KSYMediaPlayer$d;

    if-nez p0, :cond_2

    return v4

    :cond_2
    const/4 p1, -0x1

    const-string v0, "segment_index"

    .line 8
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_4

    .line 9
    invoke-interface {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer$d;->a(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "url"

    .line 10
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "onNativeInvoke() = <NULL newUrl>"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "onNativeInvoke(invalid segment index)"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "<null weakPlayer>.onNativeInvoke()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "<null weakThiz>.onNativeInvoke()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 8
    .annotation build Lcom/ksyun/media/player/a/b;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/ksyun/media/player/KSYMediaPlayer;

    if-nez v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object p0, v2, Lcom/ksyun/media/player/KSYMediaPlayer;->aN:Lcom/ksyun/media/player/KSYMediaPlayer$e;

    if-nez p0, :cond_2

    .line 5
    sget-object p0, Lcom/ksyun/media/player/KSYMediaPlayer$a;->a:Lcom/ksyun/media/player/KSYMediaPlayer$a;

    :cond_2
    move-object v1, p0

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 7
    :cond_3
    invoke-static {}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->getInstance()Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->getCurrentStatus()I

    move-result p0

    const/16 v3, 0xc

    if-ne p0, v3, :cond_6

    const-string p0, "video/avc"

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 9
    invoke-static {}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->getInstance()Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->supportHardwareDecodeH264()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 10
    iget-object p0, v2, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    const-string p1, "ksy_264_name"

    invoke-static {p0, p1, v0}, Lcom/ksyun/media/player/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p0, "video/hevc"

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 12
    invoke-static {}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->getInstance()Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->supportHardwareDecodeH265()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 13
    iget-object p0, v2, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    const-string p1, "ksy_265_name"

    invoke-static {p0, p1, v0}, Lcom/ksyun/media/player/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 14
    invoke-interface/range {v1 .. v7}, Lcom/ksyun/media/player/KSYMediaPlayer$e;->a(Lcom/ksyun/media/player/IMediaPlayer;Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 15
    invoke-interface/range {v1 .. v7}, Lcom/ksyun/media/player/KSYMediaPlayer$e;->a(Lcom/ksyun/media/player/IMediaPlayer;Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    .line 16
    :cond_7
    :goto_0
    sget-object p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ax:Ljava/lang/String;

    return-object p0

    :cond_8
    :goto_1
    return-object v0
.end method

.method private static onVideoRawDataReady(Ljava/lang/Object;[BIIIIJ)V
    .locals 11
    .annotation build Lcom/ksyun/media/player/a/b;
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v2, :cond_1

    .line 3
    iget-object v10, v2, Lcom/ksyun/media/player/KSYMediaPlayer;->aF:Ljava/lang/Object;

    if-eqz v10, :cond_1

    .line 4
    monitor-enter v10

    .line 5
    :try_start_0
    iget-object v1, v2, Lcom/ksyun/media/player/KSYMediaPlayer;->aR:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;

    if-eqz v1, :cond_0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    .line 6
    invoke-interface/range {v1 .. v9}, Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;->onVideoRawDataAvailable(Lcom/ksyun/media/player/IMediaPlayer;[BIIIIJ)V

    .line 7
    :cond_0
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1
    .annotation build Lcom/ksyun/media/player/a/b;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/KSYMediaPlayer;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->start()V

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private setMediaDataSource(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Q:J

    return-void
.end method

.method private setMediaPlayer(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->P:J

    return-void
.end method


# virtual methods
.method public _onAudioPCMReady(Ljava/nio/ByteBuffer;JIII)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aG:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aP:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p5

    move v7, p4

    move v8, p6

    .line 3
    invoke-interface/range {v1 .. v8}, Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;->onAudioPCMAvailable(Lcom/ksyun/media/player/IMediaPlayer;Ljava/nio/ByteBuffer;JIII)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addMasterClock(Lcom/ksyun/media/player/KSYMediaPlayer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_addMasterClock(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_addTimedTextSource(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Input Argument, path can\'t be NULL!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVideoRawBuffer([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_addVideoRawBuffer([B)V

    return-void
.end method

.method public bufferEmptyCount()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ad:I

    return v0
.end method

.method public bufferEmptyDuration()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ag:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    return v0
.end method

.method public createSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const v0, 0x8d65

    .line 1
    invoke-static {v0}, Lcom/ksyun/media/player/util/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aH:I

    .line 2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aH:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aI:Lcom/ksyun/media/player/KSYMediaPlayer$c;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-object v0
.end method

.method public deselectTrack(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setStreamSelected(IZ)V

    return-void
.end method

.method public enableFastPlayMode(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_enableFastPlayMode(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_finalize()V

    return-void
.end method

.method public getAudioCachedBytes()J
    .locals 3

    const/16 v0, 0x4e28

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedDuration()J
    .locals 3

    const/16 v0, 0x4e26

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedPackets()J
    .locals 3

    const/16 v0, 0x4e2a

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getAudioSessionId()I
.end method

.method public getBufferTimeMax()F
    .locals 2

    const v0, 0x9c43

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->as:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    return-object v0
.end method

.method public native getCurrentPosition()J
.end method

.method public getCurrentPts()J
    .locals 3

    const/16 v0, 0x4e3e

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentVideoPts()J
    .locals 3

    const/16 v0, 0x4e40

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedDataSize()J
    .locals 3

    const v0, 0x9c41

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadDataSize()J
    .locals 3

    const v0, 0x9c42

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getDuration()J
.end method

.method public getLocalDnsIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->at:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaInfo()Lcom/ksyun/media/player/MediaInfo;
    .locals 8

    .line 1
    new-instance v0, Lcom/ksyun/media/player/MediaInfo;

    invoke-direct {v0}, Lcom/ksyun/media/player/MediaInfo;-><init>()V

    const-string v1, "ksyplayer"

    .line 2
    iput-object v1, v0, Lcom/ksyun/media/player/MediaInfo;->mMediaPlayerName:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6
    array-length v2, v1

    if-lt v2, v4, :cond_0

    .line 7
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/ksyun/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 8
    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/ksyun/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    array-length v2, v1

    if-lt v2, v7, :cond_1

    .line 10
    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/ksyun/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Lcom/ksyun/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 12
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 15
    array-length v2, v1

    if-lt v2, v4, :cond_2

    .line 16
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/ksyun/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 17
    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/ksyun/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_2
    array-length v2, v1

    if-lt v2, v7, :cond_3

    .line 19
    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/ksyun/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 20
    iput-object v3, v0, Lcom/ksyun/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 21
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaMeta()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/ksyun/media/player/KSYMediaMeta;->parse(Landroid/os/Bundle;)Lcom/ksyun/media/player/KSYMediaMeta;

    move-result-object v1

    iput-object v1, v0, Lcom/ksyun/media/player/MediaInfo;->mMeta:Lcom/ksyun/media/player/KSYMediaMeta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->al:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Z:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aa:I

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getScreenShot(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 p1, 0x4e53

    .line 1
    invoke-direct {p0, p1, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    :goto_0
    long-to-int p1, v0

    return p1

    :cond_1
    const/16 p1, 0x4e52

    .line 2
    invoke-direct {p0, p1, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const/16 p1, 0x4e22

    .line 3
    invoke-direct {p0, p1, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const/16 p1, 0x4e21

    .line 4
    invoke-direct {p0, p1, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    const v0, 0xc351

    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()F
    .locals 2

    const/16 v0, 0x2713

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getStreamQosInfo()Lcom/ksyun/media/player/misc/KSYQosInfo;
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getQosInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->al:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/ksyun/media/player/misc/KSYQosInfo;

    invoke-direct {v1}, Lcom/ksyun/media/player/misc/KSYQosInfo;-><init>()V

    const-string v2, "audio_buffer_byte"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ksyun/media/player/misc/KSYQosInfo;->audioBufferByteLength:I

    const-string v2, "audio_buffer_time"

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ksyun/media/player/misc/KSYQosInfo;->audioBufferTimeLength:I

    const-string v2, "audio_total_data_size"

    const-wide/16 v4, 0x0

    .line 6
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/ksyun/media/player/misc/KSYQosInfo;->audioTotalDataSize:J

    const-string v2, "video_buffer_byte"

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ksyun/media/player/misc/KSYQosInfo;->videoBufferByteLength:I

    const-string v2, "video_buffer_time"

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ksyun/media/player/misc/KSYQosInfo;->videoBufferTimeLength:I

    const-string v2, "video_total_data_size"

    .line 9
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ksyun/media/player/misc/KSYQosInfo;->videoTotalDataSize:J

    const-string v2, "total_data_bytes"

    .line 10
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ksyun/media/player/misc/KSYQosInfo;->totalDataSize:J

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamStartTime()J
    .locals 3

    const/16 v0, 0x4e3f

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTrackInfo()[Lcom/ksyun/media/player/misc/ITrackInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getTrackInfo()[Lcom/ksyun/media/player/misc/KSYTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Lcom/ksyun/media/player/misc/KSYTrackInfo;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaMeta;->parse(Landroid/os/Bundle;)Lcom/ksyun/media/player/KSYMediaMeta;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    iget-object v2, v0, Lcom/ksyun/media/player/KSYMediaMeta;->mStreams:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, v0, Lcom/ksyun/media/player/KSYMediaMeta;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    .line 7
    new-instance v3, Lcom/ksyun/media/player/misc/KSYTrackInfo;

    invoke-direct {v3, v2}, Lcom/ksyun/media/player/misc/KSYTrackInfo;-><init>(Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;)V

    .line 8
    iget-object v4, v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v3, v4}, Lcom/ksyun/media/player/misc/KSYTrackInfo;->setTrackType(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v4, v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    .line 11
    invoke-virtual {v3, v4}, Lcom/ksyun/media/player/misc/KSYTrackInfo;->setTrackType(I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v4, v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    const-string v5, "subtitle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    .line 13
    invoke-virtual {v3, v4}, Lcom/ksyun/media/player/misc/KSYTrackInfo;->setTrackType(I)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v4, v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    const-string v5, "external_timed_text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x64

    .line 15
    invoke-virtual {v3, v4}, Lcom/ksyun/media/player/misc/KSYTrackInfo;->setTrackType(I)V

    .line 16
    :cond_5
    :goto_1
    iget v2, v2, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mIndex:I

    invoke-virtual {v3, v2}, Lcom/ksyun/media/player/misc/KSYTrackInfo;->setTrackIndex(I)V

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ksyun/media/player/misc/KSYTrackInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/media/player/misc/KSYTrackInfo;

    return-object v0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public getVideoCachedBytes()J
    .locals 3

    const/16 v0, 0x4e27

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedDuration()J
    .locals 3

    const/16 v0, 0x4e25

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedPackets()J
    .locals 3

    const/16 v0, 0x4e29

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoDecodeFramesPerSecond()F
    .locals 2

    const/16 v0, 0x2711

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getVideoDecoder()I
    .locals 3

    const/16 v0, 0x4e23

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aa:I

    return v0
.end method

.method public getVideoOutputFramesPerSecond()F
    .locals 2

    const/16 v0, 0x2712

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ac:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ab:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Z:I

    return v0
.end method

.method public initRecorderMuxer(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_initRecorder(Ljava/lang/String;II)V

    return-void
.end method

.method public isLooping()Z
    .locals 2

    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_getLoopCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public pause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->f:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->af:J

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Z)V

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_pause()V

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-void
.end method

.method public prepareAsync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->a()V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "user-agent"

    invoke-virtual {p0, v1, v2, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ksyun/media/player/d/c;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/media/player/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ao:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->T:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksyun/media/player/util/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/media/player/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aq:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aj:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ak:Z

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    iget v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aD:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/misc/d;->a(I)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    iget-wide v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aj:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/ksyun/media/player/misc/d;->a(Lcom/ksyun/media/player/KSYMediaPlayer;J)V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_prepareAsync()V

    .line 12
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;->c:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    :goto_1
    return-void
.end method

.method public prepareSourceList(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setDataSourceList(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_prepareAsync()V

    .line 3
    sget-object p1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->c:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    if-eqz p1, :cond_1

    const/16 p2, 0x64

    const/16 v0, -0x2723

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Z)V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->f()V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->d()V

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->resetListeners()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/ksyun/media/player/misc/d;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aA:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 11
    :try_start_0
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    .line 12
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_release()V

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;->j:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public reload(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;->KSY_RELOAD_MODE_FAST:Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_reload(Ljava/lang/String;ZI)V

    return-void
.end method

.method public reload(Ljava/lang/String;ZLcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->_reload(Ljava/lang/String;ZI)V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Z)V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->f()V

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/ksyun/media/player/misc/d;->a()V

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aA:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 9
    :try_start_0
    iput-boolean v3, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    .line 10
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_reset()V

    .line 11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Z:I

    .line 14
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aa:I

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetListeners()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/player/a;->resetListeners()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aN:Lcom/ksyun/media/player/KSYMediaPlayer$e;

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aQ:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_seekTo(JZ)V

    return-void
.end method

.method public seekTo(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->_seekTo(JZ)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setStreamSelected(IZ)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setBufferSize(I)V

    return-void
.end method

.method public setBufferTimeMax(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->av:F

    const v0, 0x9c43

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setPropertyFloat(IF)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "content"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p2

    .line 8
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Failed to resolve default ringtone"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "r"

    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    .line 13
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_5

    .line 14
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw p1

    :catch_0
    nop

    if-eqz v0, :cond_7

    goto :goto_2

    :catch_1
    nop

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 17
    :cond_7
    sget-object p1, Lcom/ksyun/media/player/KSYMediaPlayer;->d:Ljava/lang/String;

    const-string v0, "Couldn\'t open file on client side, trying server side"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Lcom/ksyun/media/player/misc/IMediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setDataSource(Lcom/ksyun/media/player/misc/IMediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Ljava/io/FileDescriptor;)I

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setDataSourceFd(IJJ)V

    .line 35
    sget-object p1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->b:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Ljava/io/FileDescriptor;)I

    move-result v2

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setDataSourceFd(IJJ)V

    .line 38
    sget-object p1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->b:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->b:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 22
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\r\n"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "headers"

    invoke-virtual {p0, v1, v3, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 40
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/ksyun/media/player/misc/d;

    invoke-direct {v0}, Lcom/ksyun/media/player/misc/d;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->an:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 47
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "\r\n"

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "headers"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_4
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aE:Lcom/ksyun/media/player/misc/d;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aC:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/ksyun/media/player/misc/d;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty Input Source List."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDecodeMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hw"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aw:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "sw"

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aw:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setDecodeMode(I)V

    return-void
.end method

.method public setDeinterlaceMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;->KSY_Deinterlace_Close:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;->KSY_Deinterlace_Auto:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_enableDeinterlace(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_enableDeinterlace(Z)V

    :goto_1
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->U:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->d()V

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 4

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x4

    int-to-long v1, p1

    const-string v3, "loop"

    .line 1
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setLoopCount(I)V

    return-void
.end method

.method public setMirror(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setMirror(Z)Z

    move-result p1

    return p1
.end method

.method public setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aQ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const v0, 0x2af80

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aQ:Ljava/nio/ByteBuffer;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaPlayer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aQ:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_setPCMBuffer(JLjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaPlayer()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_setPCMBuffer(JLjava/nio/ByteBuffer;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aG:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aP:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOnControlMessageListener(Lcom/ksyun/media/player/KSYMediaPlayer$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aL:Lcom/ksyun/media/player/KSYMediaPlayer$d;

    return-void
.end method

.method public setOnMediaCodecSelectListener(Lcom/ksyun/media/player/KSYMediaPlayer$e;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aN:Lcom/ksyun/media/player/KSYMediaPlayer$e;

    return-void
.end method

.method public setOnNativeInvokeListener(Lcom/ksyun/media/player/KSYMediaPlayer$f;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aM:Lcom/ksyun/media/player/KSYMediaPlayer$f;

    return-void
.end method

.method public setOnVideoTextureListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aO:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoTextureListener;

    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setOption(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPlayableRanges(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    :cond_0
    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong Input Arguments, start time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", end time:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_setPlayableRanges(JJ)V

    return-void
.end method

.method public setPlayerMute(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setPlayerMute(I)V

    return-void
.end method

.method public setRotateDegree(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setRotateDegree(I)Z

    move-result p1

    return p1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->X:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->U:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer;->d:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Lcom/ksyun/media/player/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->X:Z

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->d()V

    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/16 v0, 0x2713

    invoke-direct {p0, v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setPropertyFloat(IF)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->X:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer;->d:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Lcom/ksyun/media/player/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->U:Landroid/view/SurfaceHolder;

    .line 4
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->d()V

    return-void
.end method

.method public setTimeout(II)V
    .locals 3

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aD:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setTimeout(II)V

    return-void

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong parameters, prepareTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", readTimeout:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVideoOffset(FF)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    cmpg-float v2, p2, v0

    if-gez v2, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    :cond_2
    cmpl-float v0, p2, v1

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p2

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_setVideoOffset(FF)V

    return-void
.end method

.method public setVideoRawDataListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_enableVideoRawDataCallback(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->native_enableVideoRawDataCallback(Z)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aF:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aR:Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVideoRenderingState(I)V
    .locals 3

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setVideoRenderingState(I)V

    return-void

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoRenderingState wrong parameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->_setVideoScalingMode(I)V

    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "power"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 6
    const-class v2, Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->W:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public shouldAutoPlay(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p1, 0x4

    const-string v2, "start-on-prepared"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public softReset()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Z)V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->f()V

    .line 3
    monitor-enter p0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aB:Z

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_softReset()V

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->V:Lcom/ksyun/media/player/KSYMediaPlayer$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->Z:I

    .line 9
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->aa:I

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->f:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->af:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 3
    iget v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ae:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ae:I

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Z)V

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_start()V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    sget-object v2, Lcom/ksyun/media/player/KSYMediaPlayer$g;->d:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    .line 7
    :cond_1
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;->e:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->a(Z)V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->f()V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYMediaPlayer;->_stop()V

    .line 4
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;->g:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer;->ar:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-void
.end method
