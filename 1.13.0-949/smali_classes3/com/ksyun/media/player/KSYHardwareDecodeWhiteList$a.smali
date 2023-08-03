.class Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;
.super Landroid/os/AsyncTask;
.source "KSYHardwareDecodeWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;-><init>(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0xbb8

    .line 4
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    .line 6
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 8
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 9
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ksyun/media/player/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 13
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_1
    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    .line 20
    :try_start_3
    iget-object v1, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;I)I
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_3

    .line 21
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 23
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_8

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catch_3
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_9

    :catch_5
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    .line 24
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_4

    .line 25
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz p1, :cond_6

    goto :goto_7

    :catch_7
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    .line 27
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_5

    .line 28
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    .line 30
    :goto_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    :goto_8
    return-object v0

    :catchall_2
    move-exception v0

    :goto_9
    if-eqz v2, :cond_7

    .line 31
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_a
    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;->a:Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;

    invoke-static {v0, p1}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;->a(Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYHardwareDecodeWhiteList$a;->a(Ljava/lang/String;)V

    return-void
.end method
