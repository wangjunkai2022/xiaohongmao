.class public Lcom/ksyun/media/streamer/capture/WaterMarkCapture;
.super Ljava/lang/Object;
.source "WaterMarkCapture.java"


# static fields
.field private static final a:Ljava/lang/String; = "WaterMarkCapture"

.field private static final b:I = 0x200


# instance fields
.field private c:Ljava/util/Timer;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/Runnable;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:F

.field public mLogoBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

.field public mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

.field public mTimeBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

.field public mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

.field private n:F

.field private o:Landroid/graphics/Bitmap;

.field private final p:Ljava/lang/Object;

.field private q:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->f:I

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->g:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->h:I

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->i:I

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->p:Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;-><init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->q:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 8
    new-instance v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    .line 9
    new-instance v0, Lcom/ksyun/media/streamer/capture/a;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/capture/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    .line 10
    new-instance v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    .line 11
    new-instance v0, Lcom/ksyun/media/streamer/capture/a;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/capture/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->setUseSyncMode(Z)V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->setUseSyncMode(Z)V

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    .line 15
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->e:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->q:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->p:Ljava/lang/Object;

    return-object p0
.end method

.method private a(FF)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 18
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/a;FF)V

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Z)V

    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const-string p2, "watermark"

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(ILjava/lang/String;FF)V
    .locals 2

    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 24
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/high16 v0, 0x42000000    # 32.0f

    .line 26
    invoke-static {p2, p1, v0}, Lcom/ksyun/media/streamer/util/e;->a(Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/a;FF)V

    .line 28
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 4

    .line 7
    iget v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->f:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 8
    iget v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->g:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x200

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/16 v0, 0x200

    const/16 v1, 0x200

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    :cond_1
    invoke-static {p1, p2, v0, v1}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-direct {p0, p3, p4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(FF)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Z)V
    .locals 1

    .line 39
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p2, p1, p3}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/a;FF)V
    .locals 3

    .line 29
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 30
    iget v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->h:I

    int-to-float v0, v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    mul-int/lit8 p3, p3, 0x2

    .line 31
    iget v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->i:I

    int-to-float v0, v0

    mul-float p4, p4, v0

    float-to-int p4, p4

    div-int/lit8 p4, p4, 0x2

    mul-int/lit8 p4, p4, 0x2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    mul-int p3, p3, p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr p3, v0

    .line 33
    div-int/lit8 p3, p3, 0x2

    mul-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    mul-int p4, p4, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr p4, v0

    .line 35
    div-int/lit8 p4, p4, 0x2

    mul-int/lit8 p4, p4, 0x2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq p4, v1, :cond_4

    .line 37
    :cond_3
    invoke-static {p1, p3, p4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 38
    :cond_4
    invoke-virtual {p2, p1, v0}, Lcom/ksyun/media/streamer/capture/a;->a(Landroid/graphics/Bitmap;Z)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;ILjava/lang/String;FF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(ILjava/lang/String;FF)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Landroid/content/Context;Ljava/lang/String;FF)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Z)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 6
    iget v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->i:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->k:I

    return p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->m:F

    return p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->n:F

    return p0
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->e:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object p0
.end method


# virtual methods
.method public getLogoBufSrcPin()Lcom/ksyun/media/streamer/capture/a;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    return-object v0
.end method

.method public getLogoTexSrcPin()Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object v0
.end method

.method public getTimeBufSrcPin()Lcom/ksyun/media/streamer/capture/a;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    return-object v0
.end method

.method public getTimeTexSrcPin()Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object v0
.end method

.method public hideLogo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    iput-object v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$3;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$3;-><init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 9
    iput-object v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hideTime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c:Ljava/util/Timer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/a;->a(Landroid/graphics/Bitmap;Z)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c:Ljava/util/Timer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->release()V

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/a;->a()V

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->release()V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/a;->a()V

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->e:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->q:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

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

.method public setPreviewSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->f:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->g:I

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setTargetSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->h:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->i:I

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public showLogo(Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;-><init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;Landroid/content/Context;Ljava/lang/String;FF)V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public showLogo(Landroid/graphics/Bitmap;FF)V
    .locals 2

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    :cond_1
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->o:Landroid/graphics/Bitmap;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    new-instance p1, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;-><init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;FF)V

    .line 13
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_2
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->j:Ljava/lang/Runnable;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public showTime(ILjava/lang/String;FF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->k:I

    .line 3
    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->l:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->m:F

    .line 5
    iput p4, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->n:F

    .line 6
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c:Ljava/util/Timer;

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$4;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$4;-><init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;ILjava/lang/String;FF)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 8
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const-string p2, "watermark"

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    return-void
.end method
