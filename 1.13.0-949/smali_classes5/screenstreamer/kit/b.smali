.class public Lscreenstreamer/kit/b;
.super Ljava/lang/Object;
.source "KSYScreenStreamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscreenstreamer/kit/b$h;,
        Lscreenstreamer/kit/b$i;
    }
.end annotation


# static fields
.field private static final d0:Ljava/lang/String; = "KSYScreenStreamer"

.field public static final e0:Ljava/lang/String; = "1.0.4.0"

.field public static final f0:I = -0x7d7

.field public static final g0:I = -0x7d8


# instance fields
.field protected A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:I

.field protected J:Ljava/util/concurrent/atomic/AtomicInteger;

.field private K:Lscreenstreamer/kit/b$i;

.field private L:Lscreenstreamer/kit/b$h;

.field private M:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

.field private O:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

.field private P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

.field private Q:Lscreenstreamer/capture/ScreenCapture;

.field private R:Lcom/ksyun/media/streamer/capture/AudioCapture;

.field private S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

.field private T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

.field private U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

.field private V:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

.field private W:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

.field private X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

.field private Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

.field private Z:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

.field private a:Landroid/content/Context;

.field private a0:Landroid/os/Handler;

.field protected b:I

.field private final b0:Ljava/lang/Object;

.field protected c:I

.field private c0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lscreenstreamer/kit/a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I

.field protected e:I

.field protected f:I

.field private g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field protected w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lscreenstreamer/kit/b;->b:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lscreenstreamer/kit/b;->c:I

    .line 4
    iput v0, p0, Lscreenstreamer/kit/b;->d:I

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lscreenstreamer/kit/b;->e:I

    .line 6
    iput v1, p0, Lscreenstreamer/kit/b;->f:I

    .line 7
    iput v1, p0, Lscreenstreamer/kit/b;->k:I

    .line 8
    iput v1, p0, Lscreenstreamer/kit/b;->l:I

    .line 9
    iput v1, p0, Lscreenstreamer/kit/b;->m:I

    const/high16 v2, 0x41700000    # 15.0f

    .line 10
    iput v2, p0, Lscreenstreamer/kit/b;->n:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 11
    iput v2, p0, Lscreenstreamer/kit/b;->o:F

    .line 12
    iput v0, p0, Lscreenstreamer/kit/b;->p:I

    .line 13
    iput v0, p0, Lscreenstreamer/kit/b;->q:I

    const/4 v2, 0x3

    .line 14
    iput v2, p0, Lscreenstreamer/kit/b;->r:I

    const v2, 0xc3500

    .line 15
    iput v2, p0, Lscreenstreamer/kit/b;->s:I

    const v2, 0x927c0

    .line 16
    iput v2, p0, Lscreenstreamer/kit/b;->t:I

    const v2, 0x30d40

    .line 17
    iput v2, p0, Lscreenstreamer/kit/b;->u:I

    .line 18
    iput-boolean v0, p0, Lscreenstreamer/kit/b;->v:Z

    .line 19
    iput v1, p0, Lscreenstreamer/kit/b;->w:I

    const v2, 0xbb80

    .line 20
    iput v2, p0, Lscreenstreamer/kit/b;->x:I

    const v2, 0xac44

    .line 21
    iput v2, p0, Lscreenstreamer/kit/b;->y:I

    .line 22
    iput v0, p0, Lscreenstreamer/kit/b;->z:I

    const/4 v2, 0x4

    .line 23
    iput v2, p0, Lscreenstreamer/kit/b;->A:I

    .line 24
    iput-boolean v0, p0, Lscreenstreamer/kit/b;->B:Z

    .line 25
    iput-boolean v1, p0, Lscreenstreamer/kit/b;->C:Z

    .line 26
    iput-boolean v1, p0, Lscreenstreamer/kit/b;->D:Z

    .line 27
    iput-boolean v1, p0, Lscreenstreamer/kit/b;->E:Z

    .line 28
    iput-boolean v1, p0, Lscreenstreamer/kit/b;->F:Z

    .line 29
    iput-boolean v1, p0, Lscreenstreamer/kit/b;->G:Z

    .line 30
    iput-boolean v1, p0, Lscreenstreamer/kit/b;->H:Z

    const/16 v0, 0xbb8

    .line 31
    iput v0, p0, Lscreenstreamer/kit/b;->I:I

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->b0:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lscreenstreamer/kit/b;->a0:Landroid/os/Handler;

    .line 35
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setContext(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lscreenstreamer/kit/b;->k0()V

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private I0()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lscreenstreamer/kit/b;->r()V

    .line 2
    iget-object v0, p0, Lscreenstreamer/kit/b;->O:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget v1, p0, Lscreenstreamer/kit/b;->l:I

    iget v2, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->setTargetSize(II)V

    .line 3
    iget-object v0, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v1, p0, Lscreenstreamer/kit/b;->l:I

    iget v2, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 4
    iget-object v0, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget v1, p0, Lscreenstreamer/kit/b;->l:I

    iget v2, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->setTargetSize(II)V

    .line 5
    iget-object v0, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget v1, p0, Lscreenstreamer/kit/b;->l:I

    iget v2, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->setPreviewSize(II)V

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;

    iget v1, p0, Lscreenstreamer/kit/b;->p:I

    iget v2, p0, Lscreenstreamer/kit/b;->l:I

    iget v3, p0, Lscreenstreamer/kit/b;->m:I

    iget v4, p0, Lscreenstreamer/kit/b;->t:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;-><init>(IIII)V

    .line 7
    iget v1, p0, Lscreenstreamer/kit/b;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v1, 0x41700000    # 15.0f

    .line 8
    iput v1, p0, Lscreenstreamer/kit/b;->n:F

    .line 9
    :cond_0
    iget v1, p0, Lscreenstreamer/kit/b;->n:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setFramerate(F)V

    .line 10
    iget v1, p0, Lscreenstreamer/kit/b;->o:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setIframeinterval(F)V

    .line 11
    iget v1, p0, Lscreenstreamer/kit/b;->q:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setScene(I)V

    .line 12
    iget v1, p0, Lscreenstreamer/kit/b;->r:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setProfile(I)V

    .line 13
    iget-object v1, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEncodeFormat(Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;)V

    .line 14
    iget v0, p0, Lscreenstreamer/kit/b;->A:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 15
    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncodeMethod(I)V

    .line 16
    :cond_1
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;

    const/16 v3, 0x100

    const/4 v4, 0x1

    iget v5, p0, Lscreenstreamer/kit/b;->y:I

    iget v6, p0, Lscreenstreamer/kit/b;->z:I

    iget v7, p0, Lscreenstreamer/kit/b;->x:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;-><init>(IIIII)V

    .line 17
    iget v1, p0, Lscreenstreamer/kit/b;->A:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->setProfile(I)V

    .line 18
    iget-object v1, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncodeFormat(Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;)V

    .line 19
    new-instance v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;-><init>()V

    .line 20
    iget v1, p0, Lscreenstreamer/kit/b;->w:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->strategy:I

    .line 21
    iget v1, p0, Lscreenstreamer/kit/b;->x:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initAudioBitrate:I

    .line 22
    iget v1, p0, Lscreenstreamer/kit/b;->t:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initVideoBitrate:I

    .line 23
    iget v1, p0, Lscreenstreamer/kit/b;->u:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->minVideoBitrate:I

    .line 24
    iget v1, p0, Lscreenstreamer/kit/b;->s:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->maxVideoBitrate:I

    .line 25
    iget-boolean v1, p0, Lscreenstreamer/kit/b;->v:Z

    iput-boolean v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->isAdjustBitrate:Z

    .line 26
    iget-object v1, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setBwEstConfig(Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;)V

    .line 27
    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget v1, p0, Lscreenstreamer/kit/b;->n:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setFramerate(F)V

    .line 28
    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget v1, p0, Lscreenstreamer/kit/b;->s:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setVideoBitrate(I)V

    .line 29
    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget v1, p0, Lscreenstreamer/kit/b;->x:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setAudioBitrate(I)V

    .line 30
    iget-object v0, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    iget v1, p0, Lscreenstreamer/kit/b;->t:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setVideoBitrate(I)V

    .line 31
    iget-object v0, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    iget v1, p0, Lscreenstreamer/kit/b;->x:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAudioBitrate(I)V

    .line 32
    iget-object v0, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    iget v1, p0, Lscreenstreamer/kit/b;->n:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setFramerate(F)V

    return-void
.end method

.method private W(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 p1, 0x2d0

    return p1

    :cond_0
    const/16 p1, 0x438

    return p1

    :cond_1
    const/16 p1, 0x21c

    return p1

    :cond_2
    const/16 p1, 0x1e0

    return p1

    :cond_3
    const/16 p1, 0x168

    return p1
.end method

.method static synthetic a(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$h;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->L:Lscreenstreamer/kit/b$h;

    return-object p0
.end method

.method private a1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lscreenstreamer/kit/b;->E:Z

    .line 3
    invoke-direct {p0}, Lscreenstreamer/kit/b;->v0()V

    .line 4
    invoke-direct {p0}, Lscreenstreamer/kit/b;->I0()V

    .line 5
    invoke-virtual {p0}, Lscreenstreamer/kit/b;->Z0()V

    .line 6
    iget-object v0, p0, Lscreenstreamer/kit/b;->Q:Lscreenstreamer/capture/ScreenCapture;

    invoke-virtual {v0}, Lscreenstreamer/capture/ScreenCapture;->O()Z

    return-void
.end method

.method static synthetic b(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    return-object p0
.end method

.method static synthetic c(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/publisher/FilePublisher;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    return-object p0
.end method

.method static synthetic d(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/publisher/PublisherMgt;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->Z:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    return-object p0
.end method

.method static synthetic e(Lscreenstreamer/kit/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lscreenstreamer/kit/b;->D:Z

    return p1
.end method

.method private e1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->E:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lscreenstreamer/kit/b;->E:Z

    .line 3
    invoke-virtual {p0}, Lscreenstreamer/kit/b;->d1()V

    .line 4
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->flush()V

    .line 6
    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->flush()V

    .line 7
    :cond_1
    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->stop()V

    .line 8
    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->stop()V

    return-void
.end method

.method static synthetic f(Lscreenstreamer/kit/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->b0:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lscreenstreamer/kit/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->a0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/publisher/RtmpPublisher;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    return-object p0
.end method

.method static synthetic i(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$i;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->K:Lscreenstreamer/kit/b$i;

    return-object p0
.end method

.method static synthetic j(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    return-object p0
.end method

.method static synthetic k(Lscreenstreamer/kit/b;)Z
    .locals 0

    iget-boolean p0, p0, Lscreenstreamer/kit/b;->v:Z

    return p0
.end method

.method private k0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 2
    new-instance v1, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-direct {v1, v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v1, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    .line 3
    new-instance v0, Lscreenstreamer/capture/ScreenCapture;

    iget-object v1, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1, v2}, Lscreenstreamer/capture/ScreenCapture;-><init>(Landroid/content/Context;Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lscreenstreamer/kit/b;->Q:Lscreenstreamer/capture/ScreenCapture;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget-object v1, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lscreenstreamer/kit/b;->O:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget-object v1, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    .line 6
    iget-object v0, p0, Lscreenstreamer/kit/b;->Q:Lscreenstreamer/capture/ScreenCapture;

    iget-object v0, v0, Lscreenstreamer/capture/ScreenCapture;->v:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lscreenstreamer/kit/b;->O:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 7
    iget-object v0, p0, Lscreenstreamer/kit/b;->O:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lscreenstreamer/kit/b;->c:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 8
    iget-object v0, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lscreenstreamer/kit/b;->d:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 9
    iget-object v0, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lscreenstreamer/kit/b;->e:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 10
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioCapture;

    iget-object v1, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    .line 11
    iget v1, p0, Lscreenstreamer/kit/b;->b:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setAudioCaptureType(I)V

    .line 12
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->W:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    .line 13
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    .line 14
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->V:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    .line 15
    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->W:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 16
    iget-object v0, p0, Lscreenstreamer/kit/b;->W:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->V:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 17
    iget-object v0, p0, Lscreenstreamer/kit/b;->V:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v2, p0, Lscreenstreamer/kit/b;->f:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 18
    new-instance v0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    iget-object v1, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    .line 19
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    .line 20
    iget-object v0, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgTexSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 21
    iget-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 22
    new-instance v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    .line 23
    new-instance v0, Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/FilePublisher;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setForceVideoFrameFirst(Z)V

    .line 25
    new-instance v0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->Z:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    .line 26
    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->Z:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->getAudioSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 27
    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->Z:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->getVideoSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 28
    iget-object v0, p0, Lscreenstreamer/kit/b;->Z:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    iget-object v1, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->addPublisher(Lcom/ksyun/media/streamer/publisher/Publisher;)V

    .line 29
    iget-object v0, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v1, Lscreenstreamer/kit/b$a;

    invoke-direct {v1, p0}, Lscreenstreamer/kit/b$a;-><init>(Lscreenstreamer/kit/b;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;)V

    .line 30
    iget-object v0, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    const-string v1, "window"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 32
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 33
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 34
    iget-boolean v3, p0, Lscreenstreamer/kit/b;->F:Z

    if-eqz v3, :cond_0

    if-lt v1, v2, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-le v1, v2, :cond_2

    .line 35
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 36
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 37
    :cond_2
    invoke-virtual {p0, v1, v2}, Lscreenstreamer/kit/b;->E0(II)V

    .line 38
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getEnableDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->initLogReport(Landroid/content/Context;)V

    .line 39
    :cond_3
    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    new-instance v1, Lscreenstreamer/kit/b$b;

    invoke-direct {v1, p0}, Lscreenstreamer/kit/b$b;-><init>(Lscreenstreamer/kit/b;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setAudioCaptureListener(Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;)V

    .line 40
    iget-object v0, p0, Lscreenstreamer/kit/b;->Q:Lscreenstreamer/capture/ScreenCapture;

    new-instance v1, Lscreenstreamer/kit/b$c;

    invoke-direct {v1, p0}, Lscreenstreamer/kit/b$c;-><init>(Lscreenstreamer/kit/b;)V

    invoke-virtual {v0, v1}, Lscreenstreamer/capture/ScreenCapture;->N(Lscreenstreamer/capture/ScreenCapture$e;)V

    .line 41
    new-instance v0, Lscreenstreamer/kit/b$d;

    invoke-direct {v0, p0}, Lscreenstreamer/kit/b$d;-><init>(Lscreenstreamer/kit/b;)V

    .line 42
    iget-object v1, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V

    .line 43
    iget-object v1, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V

    .line 44
    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    new-instance v1, Lscreenstreamer/kit/b$e;

    invoke-direct {v1, p0}, Lscreenstreamer/kit/b$e;-><init>(Lscreenstreamer/kit/b;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setPubListener(Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;)V

    .line 45
    iget-object v0, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    new-instance v1, Lscreenstreamer/kit/b$f;

    invoke-direct {v1, p0}, Lscreenstreamer/kit/b$f;-><init>(Lscreenstreamer/kit/b;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setPubListener(Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;)V

    return-void
.end method

.method static synthetic l(Lscreenstreamer/kit/b;)I
    .locals 0

    iget p0, p0, Lscreenstreamer/kit/b;->x:I

    return p0
.end method

.method static synthetic m(Lscreenstreamer/kit/b;)I
    .locals 0

    iget p0, p0, Lscreenstreamer/kit/b;->s:I

    return p0
.end method

.method static synthetic n(Lscreenstreamer/kit/b;)I
    .locals 0

    iget p0, p0, Lscreenstreamer/kit/b;->u:I

    return p0
.end method

.method static synthetic o(Lscreenstreamer/kit/b;)V
    .locals 0

    invoke-direct {p0}, Lscreenstreamer/kit/b;->q()V

    return-void
.end method

.method private p(II)I
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p2

    mul-int p1, p1, p2

    return p1
.end method

.method private q()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->H:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/kit/b;->a0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lscreenstreamer/kit/b;->g1()Z

    .line 4
    iget-object v0, p0, Lscreenstreamer/kit/b;->a0:Landroid/os/Handler;

    new-instance v1, Lscreenstreamer/kit/b$g;

    invoke-direct {v1, p0}, Lscreenstreamer/kit/b$g;-><init>(Lscreenstreamer/kit/b;)V

    iget v2, p0, Lscreenstreamer/kit/b;->I:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    const-string v1, "window"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 5
    iget-boolean v3, p0, Lscreenstreamer/kit/b;->F:Z

    if-eqz v3, :cond_0

    if-lt v1, v2, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-le v1, v2, :cond_2

    .line 6
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 8
    :cond_2
    iget v0, p0, Lscreenstreamer/kit/b;->l:I

    if-nez v0, :cond_4

    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    if-nez v0, :cond_4

    .line 9
    iget v0, p0, Lscreenstreamer/kit/b;->k:I

    invoke-direct {p0, v0}, Lscreenstreamer/kit/b;->W(I)I

    move-result v0

    if-le v1, v2, :cond_3

    .line 10
    iput v0, p0, Lscreenstreamer/kit/b;->m:I

    goto :goto_0

    .line 11
    :cond_3
    iput v0, p0, Lscreenstreamer/kit/b;->l:I

    .line 12
    :cond_4
    :goto_0
    iget v0, p0, Lscreenstreamer/kit/b;->l:I

    if-nez v0, :cond_5

    .line 13
    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    mul-int v0, v0, v1

    div-int/2addr v0, v2

    iput v0, p0, Lscreenstreamer/kit/b;->l:I

    goto :goto_1

    .line 14
    :cond_5
    iget v3, p0, Lscreenstreamer/kit/b;->m:I

    if-nez v3, :cond_6

    mul-int v0, v0, v2

    .line 15
    div-int/2addr v0, v1

    iput v0, p0, Lscreenstreamer/kit/b;->m:I

    .line 16
    :cond_6
    :goto_1
    iget v0, p0, Lscreenstreamer/kit/b;->l:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lscreenstreamer/kit/b;->p(II)I

    move-result v0

    iput v0, p0, Lscreenstreamer/kit/b;->l:I

    .line 17
    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    invoke-direct {p0, v0, v1}, Lscreenstreamer/kit/b;->p(II)I

    move-result v0

    iput v0, p0, Lscreenstreamer/kit/b;->m:I

    return-void
.end method

.method private v(Lscreenstreamer/kit/a;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private v0()V
    .locals 5

    iget-object v0, p0, Lscreenstreamer/kit/b;->V:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget v2, p0, Lscreenstreamer/kit/b;->y:I

    iget v3, p0, Lscreenstreamer/kit/b;->z:I

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->setOutFormat(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->A:I

    return v0
.end method

.method public A0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lscreenstreamer/kit/b;->Q0(I)V

    .line 2
    invoke-virtual {p0, p1}, Lscreenstreamer/kit/b;->s0(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not support ENCODE_METHOD_SOFTWARE_COMPAT for screen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B()Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    return-object v0
.end method

.method public B0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lscreenstreamer/kit/b;->o:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the IFrameInterval must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->W:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    return-object v0
.end method

.method public C0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->F:Z

    if-eq v0, p1, :cond_0

    .line 2
    iget v0, p0, Lscreenstreamer/kit/b;->j:I

    iget v1, p0, Lscreenstreamer/kit/b;->i:I

    invoke-virtual {p0, v0, v1}, Lscreenstreamer/kit/b;->E0(II)V

    .line 3
    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    iget v1, p0, Lscreenstreamer/kit/b;->l:I

    invoke-virtual {p0, v0, v1}, Lscreenstreamer/kit/b;->L0(II)V

    .line 4
    iget-object v0, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget v1, p0, Lscreenstreamer/kit/b;->l:I

    iget v2, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->setTargetSize(II)V

    .line 5
    :cond_0
    iput-boolean p1, p0, Lscreenstreamer/kit/b;->F:Z

    return-void
.end method

.method public D()Lcom/ksyun/media/streamer/filter/audio/AudioMixer;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    return-object v0
.end method

.method public D0(Z)V
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->setMute(Z)V

    return-void
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->y:I

    return v0
.end method

.method public E0(II)V
    .locals 2

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, Lscreenstreamer/kit/b;->i:I

    .line 2
    iput p2, p0, Lscreenstreamer/kit/b;->j:I

    .line 3
    iget-object v0, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->init(II)V

    return-void

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offscreen resolution "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KSYScreenStreamer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->w:I

    return v0
.end method

.method public F0(Lscreenstreamer/kit/b$h;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/kit/b;->L:Lscreenstreamer/kit/b$h;

    return-void
.end method

.method public G()I
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getConnectTime()I

    move-result v0

    return v0
.end method

.method public G0(Lscreenstreamer/kit/b$i;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/kit/b;->K:Lscreenstreamer/kit/b$i;

    return-void
.end method

.method public H()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lscreenstreamer/kit/b;->I()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public H0(Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;)V
    .locals 1

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setOnLogEventListener(Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;)V

    return-void
.end method

.method public I()I
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getCurrentUploadKBitrate()I

    move-result v0

    return v0
.end method

.method public J()I
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getDnsParseTime()I

    move-result v0

    return v0
.end method

.method public J0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lscreenstreamer/kit/b;->n:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the fps must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K()I
    .locals 2

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getFrameDropped()I

    move-result v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    .line 2
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getDroppedVideoFrames()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public K0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lscreenstreamer/kit/b;->k:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lscreenstreamer/kit/b;->l:I

    .line 3
    iput p1, p0, Lscreenstreamer/kit/b;->m:I

    .line 4
    invoke-direct {p0}, Lscreenstreamer/kit/b;->r()V

    .line 5
    iget-object p1, p0, Lscreenstreamer/kit/b;->O:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget v0, p0, Lscreenstreamer/kit/b;->l:I

    iget v1, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->setTargetSize(II)V

    .line 6
    iget-object p1, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v0, p0, Lscreenstreamer/kit/b;->l:I

    iget v1, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 7
    iget-object p1, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    iget v0, p0, Lscreenstreamer/kit/b;->l:I

    iget v1, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setImgBufTargetSize(II)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid resolution index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lscreenstreamer/kit/b;->H:Z

    return v0
.end method

.method public L0(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTargetResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KSYScreenStreamer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lscreenstreamer/kit/b;->l:I

    .line 3
    iput p2, p0, Lscreenstreamer/kit/b;->m:I

    .line 4
    invoke-direct {p0}, Lscreenstreamer/kit/b;->r()V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lscreenstreamer/kit/b;->l:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lscreenstreamer/kit/b;->O:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget p2, p0, Lscreenstreamer/kit/b;->l:I

    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {p1, p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->setTargetSize(II)V

    .line 7
    iget-object p1, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget p2, p0, Lscreenstreamer/kit/b;->l:I

    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {p1, p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 8
    iget-object p1, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    iget p2, p0, Lscreenstreamer/kit/b;->l:I

    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    invoke-virtual {p1, p2, v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setImgBufTargetSize(II)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid resolution"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M()J
    .locals 2

    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getFrameEncoded()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public M0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lscreenstreamer/kit/b;->g:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N()Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object v0
.end method

.method public N0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lscreenstreamer/kit/b;->t:I

    .line 2
    iput p1, p0, Lscreenstreamer/kit/b;->s:I

    .line 3
    iput p1, p0, Lscreenstreamer/kit/b;->u:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lscreenstreamer/kit/b;->v:Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the VideoBitrate must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O()F
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->o:F

    return v0
.end method

.method public O0(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ltz p3, :cond_0

    .line 1
    iput p1, p0, Lscreenstreamer/kit/b;->t:I

    .line 2
    iput p2, p0, Lscreenstreamer/kit/b;->s:I

    .line 3
    iput p3, p0, Lscreenstreamer/kit/b;->u:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lscreenstreamer/kit/b;->v:Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the min VideoBitrate must >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the initial and max VideoBitrate must > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->t:I

    return v0
.end method

.method public P0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input video codecid error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lscreenstreamer/kit/b;->p:I

    return-void
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    const-string v0, "5.0.1.3"

    return-object v0
.end method

.method public Q0(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEncodeMethod(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not support ENCODE_METHOD_SOFTWARE_COMPAT for screen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set encode method while recording"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.4.0"

    return-object v0
.end method

.method public R0(I)V
    .locals 0

    iput p1, p0, Lscreenstreamer/kit/b;->r:I

    return-void
.end method

.method public S()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->s:I

    return v0
.end method

.method public S0(I)V
    .locals 0

    iput p1, p0, Lscreenstreamer/kit/b;->q:I

    return-void
.end method

.method public T()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->u:I

    return v0
.end method

.method public T0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lscreenstreamer/kit/b;->N0(I)V

    return-void
.end method

.method public U()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getHostIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U0(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    mul-int/lit16 p1, p1, 0x3e8

    mul-int/lit16 p2, p2, 0x3e8

    mul-int/lit16 p3, p3, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Lscreenstreamer/kit/b;->O0(III)V

    return-void
.end method

.method public V()Lcom/ksyun/media/streamer/publisher/RtmpPublisher;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    return-object v0
.end method

.method public V0(F)V
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setVolume(F)V

    return-void
.end method

.method public W0(Landroid/graphics/Bitmap;FFFFF)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p6}, Ljava/lang/Math;->max(FF)F

    move-result p6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    .line 3
    iget-object v1, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lscreenstreamer/kit/b;->d:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 4
    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setRenderRect(IFFFFF)V

    .line 5
    iget-object p2, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {p2, p1, p4, p5}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showLogo(Landroid/graphics/Bitmap;FF)V

    return-void
.end method

.method public X()F
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->n:F

    return v0
.end method

.method public X0(Ljava/lang/String;FFFFF)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    if-nez v0, :cond_0

    const-string p1, "KSYScreenStreamer"

    const-string p2, "Should be called after startStream"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p6}, Ljava/lang/Math;->max(FF)F

    move-result p6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    .line 5
    iget-object v1, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lscreenstreamer/kit/b;->d:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 6
    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setRenderRect(IFFFFF)V

    .line 7
    iget-object p2, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object p3, p0, Lscreenstreamer/kit/b;->a:Landroid/content/Context;

    invoke-virtual {p2, p3, p1, p4, p5}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showLogo(Landroid/content/Context;Ljava/lang/String;FF)V

    return-void
.end method

.method public Y()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->m:I

    return v0
.end method

.method public Y0(FFFIF)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    if-nez v0, :cond_0

    const-string p1, "KSYScreenStreamer"

    const-string p2, "Should be called after startStream"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p5, v1}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 5
    iget-object v2, p0, Lscreenstreamer/kit/b;->P:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v3, p0, Lscreenstreamer/kit/b;->e:I

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 6
    iget-object v1, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setRenderRect(IFFFFF)V

    .line 7
    iget-object p1, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, p4, p2, p3, v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showTime(ILjava/lang/String;FF)V

    return-void
.end method

.method public Z()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->l:I

    return v0
.end method

.method protected Z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lscreenstreamer/kit/b;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lscreenstreamer/kit/b;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    :cond_0
    iget-object v0, p0, Lscreenstreamer/kit/b;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->start()V

    :cond_1
    return-void
.end method

.method public a0()I
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getUploadedKBytes()I

    move-result v0

    return v0
.end method

.method public b0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b1(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->D:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lscreenstreamer/kit/b;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lscreenstreamer/kit/b;->D:Z

    .line 4
    iget-object v1, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/publisher/FilePublisher;->startRecording(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lscreenstreamer/kit/b;->Z:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    iget-object v1, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {p1, v1}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->addPublisher(Lcom/ksyun/media/streamer/publisher/Publisher;)V

    .line 6
    invoke-direct {p0}, Lscreenstreamer/kit/b;->a1()V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c0()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->p:I

    return v0
.end method

.method public c1()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    .line 3
    invoke-direct {p0}, Lscreenstreamer/kit/b;->a1()V

    .line 4
    iget-object v1, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget-object v2, p0, Lscreenstreamer/kit/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->connect(Ljava/lang/String;)V

    return v0
.end method

.method public d0()I
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncodeMethod()I

    move-result v0

    return v0
.end method

.method protected d1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lscreenstreamer/kit/b;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/kit/b;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lscreenstreamer/kit/b;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->stop()V

    :cond_2
    return-void
.end method

.method public e0()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->r:I

    return v0
.end method

.method public f0()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->q:I

    return v0
.end method

.method public f1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lscreenstreamer/kit/b;->e1()V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lscreenstreamer/kit/b;->Y:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->stop()V

    :goto_1
    return-void
.end method

.method public g0()Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->S:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    return-object v0
.end method

.method public g1()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->D:Z

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lscreenstreamer/kit/b;->e1()V

    .line 4
    :cond_1
    iput-boolean v1, p0, Lscreenstreamer/kit/b;->C:Z

    .line 5
    iget-object v0, p0, Lscreenstreamer/kit/b;->U:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->disconnect()V

    const/4 v0, 0x1

    return v0
.end method

.method public h0()F
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getVolume()F

    move-result v0

    return v0
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->hideLogo()V

    return-void
.end method

.method public j0()V
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->hideTime()V

    return-void
.end method

.method public l0()Z
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getMute()Z

    move-result v0

    return v0
.end method

.method public m0()Z
    .locals 1

    iget-boolean v0, p0, Lscreenstreamer/kit/b;->v:Z

    return v0
.end method

.method public n0()Z
    .locals 1

    iget-boolean v0, p0, Lscreenstreamer/kit/b;->D:Z

    return v0
.end method

.method public o0()Z
    .locals 1

    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    return v0
.end method

.method public p0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b;->a0:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lscreenstreamer/kit/b;->a0:Landroid/os/Handler;

    .line 4
    :cond_0
    iget-object v0, p0, Lscreenstreamer/kit/b;->b0:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lscreenstreamer/kit/b;->N:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->release()V

    .line 6
    iget-object v2, p0, Lscreenstreamer/kit/b;->Q:Lscreenstreamer/capture/ScreenCapture;

    invoke-virtual {v2}, Lscreenstreamer/capture/ScreenCapture;->M()V

    .line 7
    iget-object v2, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->release()V

    .line 8
    iget-object v2, p0, Lscreenstreamer/kit/b;->M:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    .line 9
    invoke-virtual {p0, v1}, Lscreenstreamer/kit/b;->H0(Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public q0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lscreenstreamer/kit/b;->x:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the AudioBitrate must >0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the AudioChannels must be mono or stereo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lscreenstreamer/kit/b;->z:I

    return-void
.end method

.method public s(Lscreenstreamer/kit/a;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPinNum()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getEmptySinkPin()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p1}, Lscreenstreamer/kit/a;->b()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v3, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v3, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 8
    iget-object v1, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 9
    :cond_2
    iget-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, p1}, Lscreenstreamer/kit/b;->v(Lscreenstreamer/kit/a;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lscreenstreamer/kit/a;->b()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object v1, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    return v2

    :cond_3
    return v3
.end method

.method public s0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lscreenstreamer/kit/b;->C:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncodeMethod(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not support ENCODE_METHOD_SOFTWARE_COMPAT for screen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set encode method while recording"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lscreenstreamer/kit/a;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lscreenstreamer/kit/b;->v(Lscreenstreamer/kit/a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lscreenstreamer/kit/a;->b()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lscreenstreamer/kit/b;->X:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v2, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lscreenstreamer/kit/b;->c0:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Lscreenstreamer/kit/b;->A:I

    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lscreenstreamer/kit/b;->G:Z

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-boolean v0, p0, Lscreenstreamer/kit/b;->G:Z

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setEnableDebugLog(Z)V

    return-void
.end method

.method public u0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lscreenstreamer/kit/b;->q0(I)V

    return-void
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->x:I

    return v0
.end method

.method public w0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lscreenstreamer/kit/b;->y:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the AudioSampleRate must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()Lcom/ksyun/media/streamer/capture/AudioCapture;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->R:Lcom/ksyun/media/streamer/capture/AudioCapture;

    return-object v0
.end method

.method public x0(I)V
    .locals 0

    iput p1, p0, Lscreenstreamer/kit/b;->w:I

    return-void
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lscreenstreamer/kit/b;->z:I

    return v0
.end method

.method public y0(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lscreenstreamer/kit/b;->H:Z

    .line 2
    iput p2, p0, Lscreenstreamer/kit/b;->I:I

    return-void
.end method

.method public z()I
    .locals 1

    iget-object v0, p0, Lscreenstreamer/kit/b;->T:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncodeMethod()I

    move-result v0

    return v0
.end method

.method public z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lscreenstreamer/kit/b;->B:Z

    return-void
.end method
