.class public Lcom/ksy/statlibrary/interval/IntervalTask;
.super Ljava/lang/Thread;
.source "IntervalTask.java"


# static fields
.field private static final READ_TIME_OUT_MILLS:I = 0x1388

.field public static final TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final mAuthUrlSuffix:Ljava/lang/String;

.field private mCallback:Lcom/ksy/statlibrary/interval/IntervalResultListener;


# direct methods
.method public constructor <init>(Lcom/ksy/statlibrary/interval/IntervalResultListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksy/statlibrary/interval/IntervalTask;->mCallback:Lcom/ksy/statlibrary/interval/IntervalResultListener;

    .line 3
    iput-object p2, p0, Lcom/ksy/statlibrary/interval/IntervalTask;->mAuthUrlSuffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://videodev.ksyun.com:8980/univ/intervalquery?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksy/statlibrary/interval/IntervalTask;->mAuthUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksy/statlibrary/log/LogClient;->isEnableLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auth"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    .line 7
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 10
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 12
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15
    :cond_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errno"

    .line 16
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const-string v5, "interval"

    .line 17
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 18
    iget-object v5, p0, Lcom/ksy/statlibrary/interval/IntervalTask;->mCallback:Lcom/ksy/statlibrary/interval/IntervalResultListener;

    if-eqz v5, :cond_3

    .line 19
    invoke-interface {v5, v3, v4}, Lcom/ksy/statlibrary/interval/IntervalResultListener;->onGetIntervalSuccess(II)V

    .line 20
    invoke-static {v4}, Lcom/ksy/statlibrary/util/PreferenceUtil;->saveInterval(I)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ksy/statlibrary/util/PreferenceUtil;->saveLastIntervalTime(J)V

    goto :goto_1

    :cond_2
    const-string v5, "errmsg"

    .line 22
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/ksy/statlibrary/interval/IntervalTask;->mCallback:Lcom/ksy/statlibrary/interval/IntervalResultListener;

    if-eqz v5, :cond_3

    .line 24
    invoke-interface {v5, v3, v4}, Lcom/ksy/statlibrary/interval/IntervalResultListener;->onGetIntervalFailure(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 25
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v3, 0x7d0

    const-string v4, "json result parse failed"

    .line 26
    iget-object v5, p0, Lcom/ksy/statlibrary/interval/IntervalTask;->mCallback:Lcom/ksy/statlibrary/interval/IntervalResultListener;

    if-eqz v5, :cond_3

    .line 27
    invoke-interface {v5, v3, v4}, Lcom/ksy/statlibrary/interval/IntervalResultListener;->onGetIntervalFailure(ILjava/lang/String;)V

    .line 28
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 31
    iget-object v3, p0, Lcom/ksy/statlibrary/interval/IntervalTask;->mCallback:Lcom/ksy/statlibrary/interval/IntervalResultListener;

    if-eqz v3, :cond_5

    .line 32
    invoke-interface {v3, v2, v1}, Lcom/ksy/statlibrary/interval/IntervalResultListener;->onGetIntervalFailure(ILjava/lang/String;)V

    .line 33
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method
