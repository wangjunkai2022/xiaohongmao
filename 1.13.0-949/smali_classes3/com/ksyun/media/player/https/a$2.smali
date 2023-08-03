.class Lcom/ksyun/media/player/https/a$2;
.super Ljava/lang/Object;
.source "KsyHttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/player/https/a;->b(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    iput-object p2, p0, Lcom/ksyun/media/player/https/a$2;->a:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v4, "TLS"

    .line 3
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    .line 4
    new-instance v7, Lcom/ksyun/media/player/https/a$a;

    iget-object v8, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-direct {v7, v8}, Lcom/ksyun/media/player/https/a$a;-><init>(Lcom/ksyun/media/player/https/a;)V

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 5
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 6
    new-instance v4, Lcom/ksyun/media/player/https/a$2$1;

    invoke-direct {v4, p0}, Lcom/ksyun/media/player/https/a$2$1;-><init>(Lcom/ksyun/media/player/https/a$2;)V

    .line 7
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 8
    :try_start_1
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 10
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v1}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v1}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v1}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v1}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 14
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 15
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 16
    :try_start_4
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 17
    :try_start_5
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 18
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    iget-object v4, v4, Lcom/ksyun/media/player/https/a;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 19
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    iget-object v6, v6, Lcom/ksyun/media/player/https/a;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->c(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    if-lez v4, :cond_3

    .line 21
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->c(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 22
    :cond_3
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->d(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    if-lez v4, :cond_4

    .line 23
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->d(Lcom/ksyun/media/player/https/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 24
    :cond_4
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 25
    :try_start_6
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_6

    .line 26
    :try_start_7
    invoke-virtual {v0}, Lcom/ksyun/media/player/https/KsyHttpResponse;->restResponse()V

    .line 27
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 28
    :goto_1
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 29
    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/https/KsyHttpResponse;->appendData(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :cond_5
    move v2, v4

    move-object v1, v6

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move v2, v4

    move-object v4, v1

    move-object v1, v6

    goto/16 :goto_11

    :catch_0
    move-exception v1

    move v9, v4

    move-object v4, v1

    move-object v1, v6

    move v6, v9

    goto/16 :goto_5

    :catch_1
    move-exception v1

    move v9, v4

    move-object v4, v1

    move-object v1, v6

    move v6, v9

    goto/16 :goto_8

    :catch_2
    move-exception v1

    move v9, v4

    move-object v4, v1

    move-object v1, v6

    move v6, v9

    goto/16 :goto_b

    :catch_3
    move-exception v1

    move v9, v4

    move-object v4, v1

    move-object v1, v6

    move v6, v9

    goto/16 :goto_e

    :catch_4
    move-exception v6

    move-object v9, v6

    move v6, v4

    move-object v4, v9

    goto/16 :goto_5

    :catch_5
    move-exception v6

    move-object v9, v6

    move v6, v4

    move-object v4, v9

    goto/16 :goto_8

    :catch_6
    move-exception v6

    move-object v9, v6

    move v6, v4

    move-object v4, v9

    goto/16 :goto_b

    :catch_7
    move-exception v6

    move-object v9, v6

    move v6, v4

    move-object v4, v9

    goto/16 :goto_e

    .line 30
    :cond_6
    :goto_2
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 31
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 32
    :try_start_9
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 33
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 34
    :cond_7
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_8

    .line 35
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_3

    :catch_8
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :cond_8
    :goto_3
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    .line 38
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :catchall_3
    move-exception v2

    move v9, v4

    move-object v4, v2

    move v2, v9

    goto/16 :goto_11

    :catch_9
    move-exception v5

    move v6, v4

    move-object v4, v5

    move-object v5, v1

    goto :goto_5

    :catch_a
    move-exception v5

    move v6, v4

    move-object v4, v5

    move-object v5, v1

    goto/16 :goto_8

    :catch_b
    move-exception v5

    move v6, v4

    move-object v4, v5

    move-object v5, v1

    goto/16 :goto_b

    :catch_c
    move-exception v5

    move v6, v4

    move-object v4, v5

    move-object v5, v1

    goto/16 :goto_e

    :catchall_4
    move-exception v4

    goto/16 :goto_11

    :catch_d
    move-exception v4

    move-object v5, v1

    goto :goto_4

    :catch_e
    move-exception v4

    move-object v5, v1

    goto :goto_7

    :catch_f
    move-exception v4

    move-object v5, v1

    goto/16 :goto_a

    :catch_10
    move-exception v4

    move-object v5, v1

    goto/16 :goto_d

    :catchall_5
    move-exception v3

    .line 39
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/security/KeyManagementException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v4

    move-object v3, v1

    goto/16 :goto_11

    :catch_11
    move-exception v4

    move-object v3, v1

    move-object v5, v3

    :goto_4
    const/4 v6, -0x1

    .line 40
    :goto_5
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 41
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 42
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 43
    :try_start_f
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 44
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 45
    :cond_9
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v1, :cond_a

    .line 46
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    goto :goto_6

    :catch_12
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_6
    if-eqz v3, :cond_11

    goto :goto_3

    :catchall_7
    move-exception v0

    .line 48
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0

    :catch_13
    move-exception v4

    move-object v3, v1

    move-object v5, v3

    :goto_7
    const/4 v6, -0x1

    .line 49
    :goto_8
    :try_start_12
    invoke-virtual {v4}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 50
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 51
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 52
    :try_start_13
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 53
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 54
    :cond_b
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v1, :cond_c

    .line 55
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_9

    :catch_14
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_9
    if-eqz v3, :cond_11

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    .line 57
    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v0

    :catch_15
    move-exception v4

    move-object v3, v1

    move-object v5, v3

    :goto_a
    const/4 v6, -0x1

    .line 58
    :goto_b
    :try_start_16
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 59
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 60
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 61
    :try_start_17
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 62
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 63
    :cond_d
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    if-eqz v1, :cond_e

    .line 64
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    goto :goto_c

    :catch_16
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_c
    if-eqz v3, :cond_11

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    .line 66
    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v0

    :catch_17
    move-exception v4

    move-object v3, v1

    move-object v5, v3

    :goto_d
    const/4 v6, -0x1

    .line 67
    :goto_e
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 68
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 69
    iget-object v4, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v4}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 70
    :try_start_1b
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 71
    iget-object v6, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v6}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 72
    :cond_f
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    if-eqz v1, :cond_10

    .line 73
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_18

    goto :goto_f

    :catch_18
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_f
    if-eqz v3, :cond_11

    goto/16 :goto_3

    :cond_11
    :goto_10
    const-string v0, "KsyHttpClient"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https response code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_a
    move-exception v0

    .line 76
    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    throw v0

    :catchall_b
    move-exception v4

    move v2, v6

    .line 77
    :goto_11
    invoke-virtual {v0, v2}, Lcom/ksyun/media/player/https/KsyHttpResponse;->setResponseCode(I)V

    .line 78
    iget-object v2, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v2}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 79
    :try_start_1e
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->b(Lcom/ksyun/media/player/https/a;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 80
    iget-object v5, p0, Lcom/ksyun/media/player/https/a$2;->b:Lcom/ksyun/media/player/https/a;

    invoke-static {v5}, Lcom/ksyun/media/player/https/a;->e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/ksyun/media/player/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V

    .line 81
    :cond_12
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    if-eqz v1, :cond_13

    .line 82
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_19

    goto :goto_12

    :catch_19
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_12
    if-eqz v3, :cond_14

    .line 84
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 85
    :cond_14
    throw v4

    :catchall_c
    move-exception v0

    .line 86
    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    throw v0
.end method
