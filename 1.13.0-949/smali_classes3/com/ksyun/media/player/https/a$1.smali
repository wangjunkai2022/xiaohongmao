.class Lcom/ksyun/media/player/https/a$1;
.super Ljava/lang/Object;
.source "KsyHttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/player/https/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ksyun/media/player/https/a;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/https/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    iput-object p2, p0, Lcom/ksyun/media/player/https/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v0, Lcom/ksyun/media/player/https/KsyHttpResponse;

    invoke-direct {v0}, Lcom/ksyun/media/player/https/KsyHttpResponse;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 3
    :try_start_1
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 4
    :try_start_2
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 6
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 7
    iget-object v3, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v3}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 8
    :try_start_3
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 10
    :cond_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "KsyHttpClient"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response message : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 13
    :cond_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 14
    :try_start_6
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 15
    :try_start_7
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->c(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    if-lez v4, :cond_2

    .line 16
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->c(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 17
    :cond_2
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->d(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    if-lez v4, :cond_3

    .line 18
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->d(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 19
    :cond_3
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    iget-object v4, v4, Lcom/ksyun/media/player/https/a;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    iget-object v6, v6, Lcom/ksyun/media/player/https/a;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 22
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_6

    .line 23
    :try_start_9
    invoke-virtual {v0}, Lcom/ksyun/media/player/https/KsyHttpResponse;->restResponse()V

    .line 24
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 25
    :goto_1
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/https/KsyHttpResponse;->appendData(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :cond_5
    move v2, v5

    move-object v1, v6

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move v2, v5

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_9

    :catch_0
    move-exception v1

    move-object v9, v6

    move-object v6, v1

    move-object v1, v9

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v9, v6

    move-object v6, v1

    move-object v1, v9

    goto :goto_3

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_3

    :catchall_2
    move-exception v5

    goto/16 :goto_9

    :catch_4
    move-exception v5

    move-object v6, v5

    const/4 v5, -0x1

    goto :goto_2

    :catch_5
    move-exception v5

    move-object v6, v5

    const/4 v5, -0x1

    goto :goto_3

    :catchall_3
    move-exception v4

    move-object v5, v4

    move-object v4, v1

    goto/16 :goto_9

    :catch_6
    move-exception v4

    move-object v6, v4

    const/4 v5, -0x1

    move-object v4, v1

    goto :goto_2

    :catch_7
    move-exception v4

    move-object v6, v4

    const/4 v5, -0x1

    move-object v4, v1

    goto :goto_3

    :catchall_4
    move-exception v3

    .line 27
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catch_8
    move-exception v4

    move-object v3, v1

    move-object v6, v4

    const/4 v5, -0x1

    move-object v4, v3

    .line 28
    :goto_2
    :try_start_d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_9
    move-exception v4

    move-object v3, v1

    move-object v6, v4

    const/4 v5, -0x1

    move-object v4, v3

    .line 29
    :goto_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 30
    :cond_6
    :goto_4
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 31
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 32
    :try_start_e
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 33
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 34
    :cond_7
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v1, :cond_8

    .line 35
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_5

    :catch_a
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 37
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    const-string v0, "KsyHttpClient"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :catchall_5
    move-exception v0

    .line 39
    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0

    :catch_b
    move-exception v6

    goto :goto_6

    :catchall_6
    move-exception v4

    move-object v3, v1

    move-object v5, v4

    move-object v4, v3

    goto :goto_9

    :catch_c
    move-exception v6

    move-object v3, v1

    move-object v4, v3

    const/4 v5, -0x1

    .line 40
    :goto_6
    :try_start_11
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 41
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 42
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 43
    :try_start_12
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 44
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 45
    :cond_a
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v1, :cond_b

    .line 46
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_7

    :catch_d
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_7
    if-eqz v3, :cond_c

    .line 48
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    const-string v0, "KsyHttpClient"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    const-string v3, "http response code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_7
    move-exception v0

    .line 50
    :try_start_14
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v0

    :catchall_8
    move-exception v2

    move v9, v5

    move-object v5, v2

    move v2, v9

    .line 51
    :goto_9
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 52
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 53
    :try_start_15
    iget-object v7, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v7}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v7}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 54
    iget-object v7, p0, Lcom/ksyun/media/player/https/a$1;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v7}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 55
    :cond_d
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-eqz v1, :cond_e

    .line 56
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    goto :goto_a

    :catch_e
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_a
    if-eqz v3, :cond_f

    .line 58
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    const-string v0, "KsyHttpClient"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http response code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v5

    :catchall_9
    move-exception v0

    .line 60
    :try_start_17
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    throw v0
.end method
