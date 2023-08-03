.class public Lcom/ksyun/media/streamer/logstats/a;
.super Ljava/lang/Object;
.source "StatsLogMaker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ZF)F
    .locals 1

    .line 158
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->q()F

    move-result v0

    if-eqz p0, :cond_0

    sub-float p0, p1, v0

    .line 159
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/logstats/b;->a(F)V

    goto :goto_0

    :cond_0
    sub-float p0, v0, p1

    .line 160
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/logstats/b;->a(F)V

    :goto_0
    return p0
.end method

.method private static a()I
    .locals 3

    .line 147
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->i()I

    move-result v0

    .line 148
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/logstats/b;->p()I

    move-result v1

    sub-int v1, v0, v1

    .line 149
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ksyun/media/streamer/logstats/b;->e(I)V

    return v1
.end method

.method private static a(I)I
    .locals 2

    .line 145
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->m()I

    move-result v0

    sub-int v0, p0, v0

    .line 146
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ksyun/media/streamer/logstats/b;->b(I)V

    return v0
.end method

.method private static a(J)J
    .locals 3

    .line 150
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->r()J

    move-result-wide v0

    sub-long v0, p0, v0

    .line 151
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/ksyun/media/streamer/logstats/b;->b(J)V

    return-wide v0
.end method

.method public static varargs a(JLandroid/content/Context;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 124
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const/16 v2, 0x64

    .line 125
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "body_type"

    const-string v2, "beautify"

    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    array-length v1, p3

    if-lez v1, :cond_2

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 130
    :goto_0
    array-length v2, p3

    if-ge v3, v2, :cond_1

    .line 131
    aget-object v2, p3, v3

    if-eqz v2, :cond_0

    const-string v2, "_"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p3, "beautify_type"

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p3, "net_type"

    .line 135
    invoke-static {p2}, Lcom/ksyun/media/streamer/logstats/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "date"

    .line 136
    invoke-virtual {v0, p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "sdk_type"

    const-string v2, "streamer"

    .line 2
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_ver"

    const-string v2, "5.0.1.3"

    .line 3
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v2, "android"

    .line 4
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_ver"

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "UNKNOWN"

    const-string v2, "pkg"

    if-eqz p0, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "dev_model"

    .line 8
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-static {p0}, Lcom/ksyun/media/streamer/logstats/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "dev_id"

    if-eqz p0, :cond_1

    .line 10
    :try_start_3
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string p0, "log_ver"

    .line 12
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksy/statlibrary/log/LogClient;->getBuildVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "log_vn"

    const/16 v0, 0x66

    .line 13
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 14
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_3
    return-object v1
.end method

.method public static a(Ljava/lang/String;JJIIIJ)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "PUB"

    const-string v1, "end_role"

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "type"

    const/16 v4, 0x64

    .line 64
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "body_type"

    const-string v4, "publishing"

    .line 65
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "streamId"

    .line 66
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "pts"

    .line 69
    invoke-virtual {v2, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "pts_diff"

    .line 70
    invoke-static {p1, p2}, Lcom/ksyun/media/streamer/logstats/a;->a(J)J

    move-result-wide p1

    invoke-virtual {v2, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "audio_duration"

    .line 71
    invoke-static {p3, p4}, Lcom/ksyun/media/streamer/logstats/a;->c(J)J

    move-result-wide p1

    invoke-virtual {v2, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "time_cost"

    .line 72
    invoke-static {p8, p9}, Lcom/ksyun/media/streamer/logstats/a;->b(J)J

    move-result-wide p1

    invoke-virtual {v2, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "video_frame_num"

    .line 73
    invoke-virtual {v2, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "audio_delay_min"

    .line 74
    invoke-static {p7}, Lcom/ksyun/media/streamer/logstats/a;->d(I)I

    move-result p1

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "audio_delay_max"

    .line 75
    invoke-static {p7}, Lcom/ksyun/media/streamer/logstats/a;->e(I)I

    move-result p1

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "encode_delay"

    .line 76
    invoke-virtual {v2, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "send_delay"

    .line 77
    invoke-virtual {v2, p0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 78
    invoke-virtual {v2, p0, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 3

    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const/16 v2, 0x64

    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "body_type"

    const-string v2, "function_point"

    .line 140
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "function_type"

    .line 141
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "net_type"

    .line 142
    invoke-static {p1}, Lcom/ksyun/media/streamer/logstats/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 143
    invoke-virtual {v0, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IJIIJ)Lorg/json/JSONObject;
    .locals 2

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 49
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "type"

    const/16 v1, 0x64

    .line 50
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "body_type"

    const-string v1, "networkingStatus"

    .line 51
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "action_id"

    .line 52
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "streamId"

    .line 53
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-static {v0, p3, p4}, Lcom/ksyun/media/streamer/logstats/a;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string p0, "drop_frame_cnt"

    add-int p1, p5, p6

    .line 55
    invoke-static {p1}, Lcom/ksyun/media/streamer/logstats/a;->a(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "drop_frame_cnt_am"

    .line 56
    invoke-static {p5}, Lcom/ksyun/media/streamer/logstats/a;->b(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "drop_frame_cnt_bm"

    .line 57
    invoke-static {p6}, Lcom/ksyun/media/streamer/logstats/a;->c(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "send_slow_cnt"

    .line 58
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/a;->a()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "upload_speed"

    .line 59
    invoke-static {p2}, Lcom/ksyun/media/streamer/logstats/a;->f(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "network_stat_frequency"

    const/16 p1, 0x1388

    .line 60
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 61
    invoke-virtual {v0, p0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIJIIJ)Lorg/json/JSONObject;
    .locals 3

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 106
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "type"

    const/16 v1, 0x64

    .line 107
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "body_type"

    const-string v1, "endStreaming"

    .line 108
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "action_id"

    .line 109
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "streamId"

    .line 110
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "streaming_len"

    .line 111
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "send_slow_cnt"

    .line 112
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/a;->b()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "drop_frame_cnt"

    add-int p1, p7, p8

    .line 113
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "drop_frame_cnt_am"

    .line 114
    invoke-virtual {v0, p0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "drop_frame_cnt_bm"

    .line 115
    invoke-virtual {v0, p0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "net_type"

    .line 116
    invoke-static {p2}, Lcom/ksyun/media/streamer/logstats/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "net_des"

    .line 117
    invoke-static {p2}, Lcom/ksyun/media/streamer/logstats/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "upload_size"

    .line 118
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "encode_frame_cnt"

    .line 119
    invoke-virtual {v0, p0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "end_type"

    .line 120
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "end_role"

    const-string p1, "PUB"

    .line 121
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 122
    invoke-virtual {v0, p0, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 2

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 81
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "type"

    const/16 v1, 0x64

    .line 82
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "body_type"

    const-string v1, "connectionStatus"

    .line 83
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "action_id"

    .line 84
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "streamId"

    .line 85
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dns_dt"

    .line 86
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "dns_ip"

    .line 87
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "connectDt"

    .line 88
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 89
    invoke-virtual {v0, p0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)Lorg/json/JSONObject;
    .locals 2

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 92
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const/16 v1, 0x64

    .line 93
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "body_type"

    const-string v1, "startStreaming"

    .line 94
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action_id"

    .line 95
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "streamId"

    .line 96
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    .line 97
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "streaming_stat"

    const-string p1, "fail"

    .line 98
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "fail_code"

    .line 99
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "net_type"

    .line 100
    invoke-static {p3}, Lcom/ksyun/media/streamer/logstats/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "net_des"

    .line 101
    invoke-static {p3}, Lcom/ksyun/media/streamer/logstats/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p5, :cond_0

    const-string p5, "unknown"

    :cond_0
    const-string p0, "serverIp"

    .line 102
    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 103
    invoke-virtual {v0, p0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 2

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 16
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const/16 v1, 0x64

    .line 17
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "body_type"

    const-string v1, "startStreaming"

    .line 18
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action_id"

    .line 19
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "streamId"

    .line 20
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    .line 21
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "streaming_stat"

    const-string p1, "ok"

    .line 22
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "net_type"

    .line 23
    invoke-static {p3}, Lcom/ksyun/media/streamer/logstats/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "net_des"

    .line 24
    invoke-static {p3}, Lcom/ksyun/media/streamer/logstats/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p4, :cond_0

    const-string p4, "unknown"

    :cond_0
    const-string p0, "serverIp"

    .line 25
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 26
    invoke-virtual {v0, p0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ZIJIJ)Lorg/json/JSONObject;
    .locals 2

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    int-to-float p6, p6

    .line 29
    :try_start_0
    invoke-static {p5, p6}, Lcom/ksyun/media/streamer/logstats/a;->a(ZF)F

    move-result p6

    const-string v1, "_id"

    .line 30
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const/16 v1, 0x64

    .line 31
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "body_type"

    const-string v1, "event"

    .line 32
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "event_type"

    const-string v1, "auto_bitrate"

    .line 33
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action_id"

    .line 34
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "streamId"

    .line 35
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    .line 36
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "streaming_stat"

    if-eqz p5, :cond_0

    :try_start_1
    const-string p1, "auto_bitrate_raise"

    .line 37
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "auto_bitrate_drop"

    .line 38
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p0, "auto_bitrate_value"

    float-to-double p1, p6

    .line 39
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "auto_bitrate_bandwidth"

    .line 40
    invoke-virtual {v0, p0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "net_type"

    .line 41
    invoke-static {p3}, Lcom/ksyun/media/streamer/logstats/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "net_des"

    .line 42
    invoke-static {p3}, Lcom/ksyun/media/streamer/logstats/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p4, :cond_1

    const-string p4, "unknown"

    :cond_1
    const-string p0, "serverIp"

    .line 43
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "bw_estimate_mode"

    if-nez p9, :cond_2

    :try_start_2
    const-string p1, "default"

    .line 44
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    if-ne p9, p1, :cond_3

    const-string p1, "negtive"

    .line 45
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    const-string p0, "date"

    .line 46
    invoke-virtual {v0, p0, p10, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 3

    .line 152
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->l()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 153
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/ksyun/media/streamer/logstats/b;->a(J)V

    :try_start_0
    const-string p1, "encode_frame_cnt"

    .line 154
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 p1, 0x5

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    div-long/2addr v0, p1

    long-to-int p1, v0

    :goto_0
    const-string p2, "average_frame"

    .line 156
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method private static b()I
    .locals 1

    .line 20
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->i()I

    move-result v0

    return v0
.end method

.method private static b(I)I
    .locals 2

    .line 16
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->n()I

    move-result v0

    sub-int v0, p0, v0

    .line 17
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ksyun/media/streamer/logstats/b;->c(I)V

    return v0
.end method

.method private static b(J)J
    .locals 3

    .line 18
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->s()J

    move-result-wide v0

    sub-long v0, p0, v0

    .line 19
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/ksyun/media/streamer/logstats/b;->c(J)V

    return-wide v0
.end method

.method public static varargs b(JLandroid/content/Context;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const/16 v2, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "body_type"

    const-string v2, "audio_filter"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    array-length v1, p3

    if-lez v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 8
    :goto_0
    array-length v2, p3

    if-ge v3, v2, :cond_1

    .line 9
    aget-object v2, p3, v3

    if-eqz v2, :cond_0

    const-string v2, "_"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p3, "net_type"

    .line 12
    invoke-static {p2}, Lcom/ksyun/media/streamer/logstats/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "audio_filter_type"

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p2, "date"

    .line 14
    invoke-virtual {v0, p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ksyun/media/streamer/logstats/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static c(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->o()I

    move-result v0

    sub-int v0, p0, v0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ksyun/media/streamer/logstats/b;->d(I)V

    return v0
.end method

.method private static c()J
    .locals 2

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->f()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static c(J)J
    .locals 3

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->u()J

    move-result-wide v0

    sub-long v0, p0, v0

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/ksyun/media/streamer/logstats/b;->d(J)V

    return-wide v0
.end method

.method private static d(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->t()I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static e(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->t()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ksyun/media/streamer/logstats/b;->f(I)V

    .line 3
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static f(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->k()I

    move-result v0

    sub-int v0, p0, v0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ksyun/media/streamer/logstats/b;->a(I)V

    .line 3
    div-int/lit8 v0, v0, 0x5

    return v0
.end method
