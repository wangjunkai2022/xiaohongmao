.class Lcom/ksyun/media/player/KSYMediaPlayer$b;
.super Landroid/os/Handler;
.source "KSYMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ksyun/media/player/KSYMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/KSYMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYMediaPlayer$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1c

    .line 2
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$300(Lcom/ksyun/media/player/KSYMediaPlayer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/16 v3, 0x1f5

    const/4 v4, 0x1

    if-ne v1, v3, :cond_6

    .line 4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v4, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 6
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 7
    :cond_2
    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$700(Lcom/ksyun/media/player/KSYMediaPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/a;->notifyOnLogEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$600(Lcom/ksyun/media/player/KSYMediaPlayer;)V

    goto :goto_0

    .line 11
    :cond_5
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$500(Lcom/ksyun/media/player/KSYMediaPlayer;)V

    :goto_0
    return-void

    :cond_6
    if-eqz v1, :cond_1b

    if-eq v1, v4, :cond_1a

    const/4 v5, 0x0

    if-eq v1, v2, :cond_19

    const/4 v2, 0x3

    if-eq v1, v2, :cond_17

    const/4 v6, 0x4

    if-eq v1, v6, :cond_16

    const/4 v6, 0x5

    if-eq v1, v6, :cond_15

    const/16 v6, 0x63

    if-eq v1, v6, :cond_14

    const/16 v6, 0x64

    if-eq v1, v6, :cond_10

    const/16 v6, 0xc8

    const/16 v7, 0x2711

    if-eq v1, v6, :cond_9

    const/16 v2, 0x257

    if-eq v1, v2, :cond_8

    if-eq v1, v7, :cond_7

    .line 12
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ksyun/media/player/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 13
    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1402(Lcom/ksyun/media/player/KSYMediaPlayer;I)I

    .line 14
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1502(Lcom/ksyun/media/player/KSYMediaPlayer;I)I

    .line 15
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1200(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result p1

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1300(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v1

    .line 16
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1400(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v2

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1500(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v3

    .line 17
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ksyun/media/player/a;->notifyOnVideoSizeChanged(IIII)V

    goto/16 :goto_4

    .line 18
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1b

    .line 19
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/a;->notifyMessageInfo(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 20
    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_d

    const-string v2, "sw"

    if-eq v1, v7, :cond_c

    const/16 v6, 0x2bd

    if-eq v1, v6, :cond_b

    const/16 v6, 0x2be

    if-eq v1, v6, :cond_a

    const-string v6, ", BufferTimeMax:"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 21
    :pswitch_0
    invoke-static {v0, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2802(Lcom/ksyun/media/player/KSYMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KSYMediaPlayer Use Software Decode and SDK Version is:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getBufferTimeMax()F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const-string v1, "hw"

    .line 23
    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2802(Lcom/ksyun/media/player/KSYMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KSYMediaPlayer Use Hardware Decode and SDK Version is:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getBufferTimeMax()F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 25
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2400(Lcom/ksyun/media/player/KSYMediaPlayer;)J

    move-result-wide v6

    sub-long/2addr v1, v6

    long-to-int v2, v1

    .line 26
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2500(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2502(Lcom/ksyun/media/player/KSYMediaPlayer;I)I

    goto :goto_1

    .line 27
    :cond_b
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2308(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2402(Lcom/ksyun/media/player/KSYMediaPlayer;J)J

    goto :goto_1

    .line 29
    :cond_c
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2800(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, v2, :cond_e

    .line 30
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setRotateDegree(I)Z

    goto :goto_1

    .line 31
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2600(Lcom/ksyun/media/player/KSYMediaPlayer;)J

    move-result-wide v6

    sub-long/2addr v1, v6

    long-to-int v2, v1

    .line 32
    invoke-static {v0, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2702(Lcom/ksyun/media/player/KSYMediaPlayer;I)I

    .line 33
    :cond_e
    :goto_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x9c4a

    if-ne v1, v2, :cond_f

    .line 34
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2900(Lcom/ksyun/media/player/KSYMediaPlayer;)Lcom/ksyun/media/player/KSYMediaPlayer$b;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 35
    :cond_f
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/player/a;->notifyOnInfo(II)Z

    return-void

    .line 36
    :cond_10
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ksyun/media/player/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$800(Lcom/ksyun/media/player/KSYMediaPlayer;)Lcom/ksyun/media/player/KSYMediaPlayer$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/ksyun/media/player/KSYMediaPlayer$g;->d:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 38
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1600(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 39
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1600(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_11
    const-string v1, "N/A"

    .line 40
    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "_id"

    .line 41
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1700(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    .line 42
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "body_type"

    const-string v6, "onPrepared"

    .line 43
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "action_id"

    .line 44
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1800(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "url"

    .line 45
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "buf_time_max"

    .line 46
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1900(Lcom/ksyun/media/player/KSYMediaPlayer;)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "play_stat"

    const-string v3, "fail"

    .line 47
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail_code"

    .line 48
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "net_type"

    .line 49
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2000(Lcom/ksyun/media/player/KSYMediaPlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ksyun/media/player/util/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "net_des"

    .line 50
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2000(Lcom/ksyun/media/player/KSYMediaPlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ksyun/media/player/util/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "date"

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "playId"

    .line 52
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2100(Lcom/ksyun/media/player/KSYMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key_count"

    .line 53
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    :goto_3
    invoke-static {}, Lcom/ksyun/media/player/d/c;->a()Lcom/ksyun/media/player/d/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/player/d/c;->a(Lorg/json/JSONObject;)V

    .line 56
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/a;->notifyOnLogEvent(Ljava/lang/String;)V

    .line 57
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v4, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$2200(Lcom/ksyun/media/player/KSYMediaPlayer;ZI)V

    .line 58
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1000(Lcom/ksyun/media/player/KSYMediaPlayer;)V

    .line 59
    :cond_12
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/player/a;->notifyOnError(II)Z

    move-result p1

    if-nez p1, :cond_13

    .line 60
    invoke-virtual {v0}, Lcom/ksyun/media/player/a;->notifyOnCompletion()V

    .line 61
    :cond_13
    invoke-static {v0, v5}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1100(Lcom/ksyun/media/player/KSYMediaPlayer;Z)V

    return-void

    .line 62
    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1b

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/a;->notifyOnTimedText(Ljava/lang/String;)V

    goto :goto_4

    .line 64
    :cond_15
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1202(Lcom/ksyun/media/player/KSYMediaPlayer;I)I

    .line 65
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1302(Lcom/ksyun/media/player/KSYMediaPlayer;I)I

    .line 66
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1200(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result p1

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1300(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v1

    .line 67
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1400(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v2

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1500(Lcom/ksyun/media/player/KSYMediaPlayer;)I

    move-result v3

    .line 68
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ksyun/media/player/a;->notifyOnVideoSizeChanged(IIII)V

    return-void

    .line 69
    :cond_16
    invoke-virtual {v0}, Lcom/ksyun/media/player/a;->notifyOnSeekComplete()V

    return-void

    .line 70
    :cond_17
    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v1, p1

    const-wide/16 v3, 0x64

    cmp-long p1, v1, v3

    if-ltz p1, :cond_18

    move-wide v1, v3

    :cond_18
    long-to-int p1, v1

    .line 71
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/a;->notifyOnBufferingUpdate(I)V

    return-void

    .line 72
    :cond_19
    sget-object p1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->h:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-static {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$802(Lcom/ksyun/media/player/KSYMediaPlayer;Lcom/ksyun/media/player/KSYMediaPlayer$g;)Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 73
    invoke-virtual {v0}, Lcom/ksyun/media/player/a;->notifyOnCompletion()V

    .line 74
    invoke-static {v0, v5}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1100(Lcom/ksyun/media/player/KSYMediaPlayer;Z)V

    return-void

    .line 75
    :cond_1a
    sget-object p1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->d:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-static {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$802(Lcom/ksyun/media/player/KSYMediaPlayer;Lcom/ksyun/media/player/KSYMediaPlayer$g;)Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 76
    invoke-virtual {v0}, Lcom/ksyun/media/player/a;->notifyOnPrepared()V

    .line 77
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$900(Lcom/ksyun/media/player/KSYMediaPlayer;)V

    .line 78
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$1000(Lcom/ksyun/media/player/KSYMediaPlayer;)V

    :cond_1b
    :goto_4
    return-void

    .line 79
    :cond_1c
    :goto_5
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KSYMediaPlayer went away with unhandled events"

    invoke-static {p1, v0}, Lcom/ksyun/media/player/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa028
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
