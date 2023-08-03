.class public Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;
.super Ljava/lang/Object;
.source "KSYHardwareDecodeWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;
    }
.end annotation


# static fields
.field public static final KSY_STATUS_CONNECTING:I = 0xb

.field public static final KSY_STATUS_FAIL:I = 0xd

.field public static final KSY_STATUS_IDLE:I = 0xa

.field public static final KSY_STATUS_OK:I = 0xc

.field private static a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://sdk.ks-live.com:8989/api/CanHWDecode/2017-01-01"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->d:Z

    const/16 v0, 0xa

    .line 5
    iput v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->i:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_0

    .line 5
    iput v1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lorg/json/JSONObject;

    const-string v2, "Data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "RetCode"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iput v1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    return-void

    :cond_1
    const-string v0, "Intval"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-string v2, "HwDec264"

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->e:Ljava/lang/String;

    const-string v2, "HwDec265"

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->f:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 14
    iput-boolean v2, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->c:Z

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->e:Ljava/lang/String;

    const-string v4, "ksy_264_name"

    invoke-static {p1, v4, v3}, Lcom/ksyun/media/player/e/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    iput-boolean v2, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->d:Z

    .line 18
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->f:Ljava/lang/String;

    const-string v3, "ksy_265_name"

    invoke-static {p1, v3, v2}, Lcom/ksyun/media/player/e/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->c:Z

    const-string v3, "ksy_support_h264"

    invoke-static {p1, v3, v2}, Lcom/ksyun/media/player/e/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 20
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->d:Z

    const-string v3, "ksy_support_h265"

    invoke-static {p1, v3, v2}, Lcom/ksyun/media/player/e/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 21
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    const-string v2, "ksy_interval"

    invoke-static {p1, v2, v0, v1}, Lcom/ksyun/media/player/e/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 22
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "ksy_update"

    invoke-static {p1, v2, v0, v1}, Lcom/ksyun/media/player/e/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/16 p1, 0xc

    .line 23
    iput p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static getInstance()Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;
    .locals 2

    .line 1
    sget-object v0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    invoke-direct {v1}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;-><init>()V

    sput-object v1, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

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
    sget-object v0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    return-object v0
.end method


# virtual methods
.method public getCurrentStatus()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->g:Landroid/content/Context;

    const-string v0, "ksy_interval"

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/ksyun/media/player/e/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "ksy_update"

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/ksyun/media/player/e/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    cmp-long v0, v5, v1

    if-lez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v5

    cmp-long v2, v0, v3

    if-gez v2, :cond_1

    const-string v0, "ksy_support_h264"

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/ksyun/media/player/e/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->c:Z

    const-string v0, "ksy_support_h265"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/ksyun/media/player/e/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->d:Z

    const/16 p1, 0xc

    .line 8
    iput p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->i:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;-><init>(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$1;)V

    iput-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->i:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;

    const-string v0, "http://sdk.ks-live.com:8989/api/CanHWDecode/2017-01-01"

    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 p1, 0xb

    .line 12
    iput p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input argument CONTEXT can\'t be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportHardwareDecodeH264()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->c:Z

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This can only be called when the status is KSY_STATUS_OK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportHardwareDecodeH265()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->h:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->d:Z

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This can only be called when the status is KSY_STATUS_OK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
