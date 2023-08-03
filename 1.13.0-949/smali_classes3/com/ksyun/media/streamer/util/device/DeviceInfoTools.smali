.class public Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;
.super Ljava/lang/Object;
.source "DeviceInfoTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;,
        Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;
    }
.end annotation


# static fields
.field public static final REQUEST_ERROR_FAILED:I = -0x3e9

.field public static final REQUEST_ERROR_PARSE_FILED:I = -0x3ea

.field private static final a:Ljava/lang/String; = "DeviceInfoTools"

.field private static final b:Z = true

.field private static final c:I = 0x1388

.field private static final d:I = 0x1388

.field private static u:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;


# instance fields
.field private final e:Ljava/lang/String;

.field private f:J

.field private final g:J

.field private final h:J

.field private final i:I

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field public mRequestListener:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;

.field private final n:Ljava/lang/String;

.field private o:Landroid/content/SharedPreferences;

.field private p:Landroid/content/SharedPreferences$Editor;

.field private final q:Landroid/os/Handler;

.field private final r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "last_save_time"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->e:Ljava/lang/String;

    const-wide/32 v0, 0x240c8400

    .line 3
    iput-wide v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->f:J

    const-wide/32 v0, 0x5265c00

    .line 4
    iput-wide v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->g:J

    const-wide/32 v0, 0xea60

    .line 5
    iput-wide v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->h:J

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->i:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->j:I

    .line 8
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->k:Z

    .line 9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->l:Ljava/lang/String;

    .line 10
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->m:Ljava/lang/String;

    const-string v0, "ksydeviceinfo"

    .line 11
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->n:Ljava/lang/String;

    const-string v0, "http://devinfo.ks-live.com:8420/info"

    .line 12
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->r:Ljava/lang/String;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->q:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Lcom/ksyun/media/streamer/util/device/DeviceInfo;)Lcom/ksyun/media/streamer/util/device/DeviceInfo;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->b()Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->k:Z

    if-nez v0, :cond_1

    .line 7
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->m:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;-><init>(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/util/device/DeviceInfo;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->p:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/device/DeviceInfo;->saveDeviceInfoForLocal(Landroid/content/SharedPreferences$Editor;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->p:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_save_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->p:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->k:Z

    return-void
.end method

.method private b()Lcom/ksyun/media/streamer/util/device/DeviceInfo;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    if-nez v1, :cond_0

    const-string v0, "DeviceInfoTools"

    const-string v1, "please call init before call this function"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/util/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "last_save_time"

    const-wide/16 v2, 0x0

    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->k:Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->o:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 11
    new-instance v1, Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->m:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/ksyun/media/streamer/util/device/DeviceInfo;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/util/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Lcom/ksyun/media/streamer/util/device/DeviceInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a(Lcom/ksyun/media/streamer/util/device/DeviceInfo;)V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->m:Ljava/lang/String;

    return-object p0
.end method

.method private c()Z
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->o:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->o:Landroid/content/SharedPreferences;

    const-string v4, "last_save_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_1

    sub-long/2addr v2, v7

    .line 5
    iget-wide v4, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->f:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Lcom/ksyun/media/streamer/util/device/DeviceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->j:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->q:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$1;-><init>(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->j:I

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->q:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$2;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$2;-><init>(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->e()V

    return-void
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->d()V

    return-void
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a()V

    return-void
.end method

.method public static getInstance()Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;
    .locals 2

    .line 1
    sget-object v0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->u:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->u:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;-><init>()V

    sput-object v1, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->u:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

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
    sget-object v0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->u:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    return-object v0
.end method


# virtual methods
.method public getDeviceInfo()Lcom/ksyun/media/streamer/util/device/DeviceInfo;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a()V

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    const-string v1, "device_info"

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->t:Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ksydeviceinfo"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->o:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->p:Landroid/content/SharedPreferences$Editor;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a()V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the context must not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendDeviceInfoRequest(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->mRequestListener:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;

    .line 2
    new-instance p1, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;

    invoke-direct {p1, p0, p2, p3}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;-><init>(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
