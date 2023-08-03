.class public Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;
.super Ljava/lang/Object;
.source "TimeDeltaUtil.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/https/HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/util/TimeDeltaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->getData()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->getData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->getResponseCode()I

    move-result p1

    if-ne v1, p1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->a(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;J)J

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->f(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->g(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long p1, v3, v5

    if-gtz p1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->g(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)J

    move-result-wide v5

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->f(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {p1, v3, v4}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->b(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server data error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeDeltaUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    .line 14
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
