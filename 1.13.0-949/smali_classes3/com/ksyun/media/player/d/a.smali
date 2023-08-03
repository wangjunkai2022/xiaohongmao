.class public Lcom/ksyun/media/player/d/a;
.super Ljava/lang/Object;
.source "KSYBaseStat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ksyun/media/player/d/a;->b:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/player/d/a;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\."

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "ksyplayer_android_"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 5
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lcom/ksy/statlibrary/log/LogParams;

    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ksyun/media/player/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "D8uDWZ88ZKUCPu0KRJkR"

    const-string v4, "2tueIxI3wqxo6IvVU9/Wn+h8RKNNBrxzk/vdmWSD"

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/ksy/statlibrary/log/LogParams;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/player/d/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/ksy/statlibrary/log/LogClient;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ksy/statlibrary/log/LogClient;->addReportParam(Lcom/ksy/statlibrary/log/LogParams;)V

    .line 4
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Lcom/ksy/statlibrary/log/LogClient;->setTIMER_INTERVAL(J)Lcom/ksy/statlibrary/log/LogClient;

    .line 5
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksy/statlibrary/log/LogClient;->start()V

    :try_start_0
    const-string v1, "sdk_type"

    const-string v2, "player"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_ver"

    .line 7
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "android"

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_ver"

    .line 9
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/player/d/a;->b:Landroid/content/Context;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UNKNOWN"

    const-string v3, "pkg"

    if-eqz v1, :cond_0

    .line 11
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "dev_model"

    .line 13
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/player/d/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksyun/media/player/util/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "dev_id"

    if-eqz v1, :cond_1

    .line 15
    :try_start_2
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/ksyun/media/player/d/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksyun/media/player/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mac"

    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/player/d/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksyun/media/player/util/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "imei"

    .line 22
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "log_ver"

    .line 23
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksy/statlibrary/log/LogClient;->getBuildVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "log_vn"

    .line 24
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksy/statlibrary/log/LogClient;->getBuildVersionNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    iget-object v1, p0, Lcom/ksyun/media/player/d/a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_4

    const/16 v2, 0x1f5

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
