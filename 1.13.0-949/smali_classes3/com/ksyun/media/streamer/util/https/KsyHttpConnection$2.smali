.class Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;
.super Ljava/lang/Object;
.source "KsyHttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->performHttpsRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/net/URL;

.field d:Ljavax/net/ssl/SSLContext;

.field e:Ljava/io/BufferedReader;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iput-object p2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->c:Ljava/net/URL;

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->d:Ljavax/net/ssl/SSLContext;

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, -0x1

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->c:Ljava/net/URL;

    const-string v1, "TLS"

    .line 2
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->d:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    .line 3
    new-instance v4, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$a;

    iget-object v5, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-direct {v4, v5}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$a;-><init>(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)V

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->d:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2$1;-><init>(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;)V

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->h(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->b(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 14
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    return-void

    .line 18
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iget-object v4, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->c:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v3, v4}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HttpsURLConnection;

    .line 19
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 20
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :try_start_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iget-object v1, v1, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    iget-object v4, v4, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->c(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v1

    if-lez v1, :cond_5

    .line 24
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->c(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 25
    :cond_5
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->e(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v1

    if-lez v1, :cond_6

    .line 26
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->e(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 27
    :cond_6
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    .line 28
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->b:Ljava/lang/String;

    .line 29
    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    .line 30
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->restResponse()V

    .line 31
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v3}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    .line 32
    :goto_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 33
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->appendData(Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_7
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 37
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_a

    .line 40
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-eqz v0, :cond_13

    goto/16 :goto_8

    :catchall_0
    move-exception v1

    .line 43
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catch_2
    move-exception v1

    .line 44
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 46
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 48
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 49
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_c

    .line 51
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-eqz v0, :cond_13

    goto/16 :goto_8

    :catch_4
    move-exception v1

    .line 54
    :try_start_a
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    .line 55
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 56
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 59
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 60
    :cond_d
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_e

    .line 61
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-eqz v0, :cond_13

    goto/16 :goto_8

    :catch_6
    move-exception v1

    .line 64
    :try_start_c
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 65
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 66
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 68
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 70
    :cond_f
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_10

    .line 71
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_8

    :catch_8
    move-exception v1

    .line 74
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 76
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 78
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 80
    :cond_11
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_12

    .line 81
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_7

    :catch_9
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    :cond_12
    :goto_7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 84
    :goto_8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_13
    const-string v0, "KsyHttpClient"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :goto_9
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v1

    iget v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->a:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;->setResponseCode(I)V

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_14

    .line 88
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 89
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    .line 90
    :cond_14
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->e:Ljava/io/BufferedReader;

    if-eqz v1, :cond_15

    .line 91
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    :cond_15
    :goto_a
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 94
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_16
    throw v0
.end method
