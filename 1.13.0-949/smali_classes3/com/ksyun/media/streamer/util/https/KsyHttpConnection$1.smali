.class Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;
.super Ljava/lang/Object;
.source "KsyHttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->performHttpRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/net/URL;

.field b:Ljava/io/BufferedReader;

.field c:Ljava/lang/String;

.field d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iput-object p2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->a:Ljava/net/URL;

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->b:Ljava/io/BufferedReader;

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->c:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->b(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->b:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 10
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    const-string v0, "KsyHttpClient"

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-static {v2, v3}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 16
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    :try_start_5
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->c(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v1

    if-lez v1, :cond_4

    .line 18
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->c(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->e(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v1

    if-lez v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->e(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 21
    :cond_5
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iget-object v1, v1, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iget-object v4, v4, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->c:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    .line 25
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->restResponse()V

    .line 26
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->b:Ljava/io/BufferedReader;

    .line 27
    :goto_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->b:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 28
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->appendData(Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_7
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 30
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    move-exception v1

    .line 31
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    goto :goto_3

    :catch_2
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 35
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 37
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->b:Ljava/io/BufferedReader;

    if-eqz v0, :cond_a

    .line 40
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    const-string v0, "KsyHttpClient"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v1

    .line 45
    :try_start_a
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 46
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 47
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 49
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 50
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 51
    :cond_c
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->b:Ljava/io/BufferedReader;

    if-eqz v0, :cond_d

    .line 52
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 55
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    const-string v0, "KsyHttpClient"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v2, "http response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :goto_7
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    iget v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_f

    .line 59
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 60
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 61
    :cond_f
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->b:Ljava/io/BufferedReader;

    if-eqz v1, :cond_10

    .line 62
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_8

    :catch_6
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    :cond_10
    :goto_8
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 65
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->f:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    const-string v1, "KsyHttpClient"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " response message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
