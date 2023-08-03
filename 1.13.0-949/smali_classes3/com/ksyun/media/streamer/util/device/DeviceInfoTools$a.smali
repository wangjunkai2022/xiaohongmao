.class Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;
.super Landroid/os/AsyncTask;
.source "DeviceInfoTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10

    const-string p1, "DeviceInfoTools"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->a:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://devinfo.ks-live.com:8420/info?model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&osver="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "GET"

    .line 5
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x1388

    .line 6
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 7
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRequestUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v4}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 12
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 13
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 14
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 17
    :cond_0
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "errno"

    .line 18
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "info"

    .line 19
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "interval"

    .line 20
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 21
    iget-object v7, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;J)J

    .line 22
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v5, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v7}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->b(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    iget-object v5, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    new-instance v7, Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    .line 25
    invoke-static {v5}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->b(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v9}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->c(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Lcom/ksyun/media/streamer/util/device/DeviceInfo;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v5, v7}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->a(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Lcom/ksyun/media/streamer/util/device/DeviceInfo;)Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    .line 27
    iget-object v5, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v5}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->d(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->b(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;Lcom/ksyun/media/streamer/util/device/DeviceInfo;)V

    .line 28
    :cond_1
    iget-object v5, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    iget-object v5, v5, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->mRequestListener:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;

    if-eqz v5, :cond_3

    .line 29
    new-instance v7, Lcom/ksyun/media/streamer/util/device/DeviceInfo;

    iget-object v8, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->a:Ljava/lang/String;

    iget-object v9, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->b:Ljava/lang/String;

    invoke-direct {v7, v6, v8, v9}, Lcom/ksyun/media/streamer/util/device/DeviceInfo;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2, v7}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get info error:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "errmsg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->e(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V

    .line 32
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    iget-object v2, v2, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->mRequestListener:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;

    if-eqz v2, :cond_3

    .line 33
    invoke-interface {v2, v5}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;->a(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 34
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const-string v2, "get info error:parse failed:"

    .line 35
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    iget-object v2, v2, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->mRequestListener:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;

    if-eqz v2, :cond_3

    const/16 v5, -0x3ea

    .line 37
    invoke-interface {v2, v5}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;->a(I)V

    .line 38
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 39
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    :cond_4
    const-string v3, "send request to server failed!"

    .line 40
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_5

    const/16 v3, 0x1f4

    if-gt v2, v3, :cond_5

    .line 41
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->e(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V

    goto :goto_2

    .line 42
    :cond_5
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->f(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V

    .line 43
    :goto_2
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    iget-object v3, v3, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->mRequestListener:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;

    if-eqz v3, :cond_7

    .line 44
    invoke-interface {v3, v2}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v1, v0

    :goto_3
    :try_start_4
    const-string v3, "Send request failed"

    .line 45
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->f(Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;)V

    .line 48
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->c:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;

    iget-object p1, p1, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools;->mRequestListener:Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;

    if-eqz p1, :cond_6

    const/16 v2, -0x3e9

    .line 49
    invoke-interface {p1, v2}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$b;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    if-eqz v1, :cond_8

    .line 50
    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/util/device/DeviceInfoTools$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
