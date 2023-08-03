.class Lcom/tangxiaolv/telegramgallery/Utils/e$l;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/RandomAccessFile;

.field private e:Z

.field final synthetic f:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->f:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->d:Ljava/io/RandomAccessFile;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->e:Z

    .line 4
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->b:Ljava/io/File;

    .line 6
    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    const-string p1, "google.com"

    const-string v0, "Referer"

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    const-string v2, "User-Agent"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-virtual {v6, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v6, v0, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1388

    .line 5
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 7
    instance-of v7, v6, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_1

    .line 8
    move-object v7, v6

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 9
    invoke-virtual {v7, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 10
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0x12e

    if-eq v8, v9, :cond_0

    const/16 v9, 0x12d

    if-eq v8, v9, :cond_0

    const/16 v9, 0x12f

    if-ne v8, v9, :cond_1

    :cond_0
    const-string v8, "Location"

    .line 11
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Set-Cookie"

    .line 12
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    const-string v8, "Cookie"

    .line 15
    invoke-virtual {v6, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v0, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 19
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->b:Ljava/io/File;

    const-string v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->d:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v4

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, v4

    move-object v6, v0

    .line 21
    :goto_0
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    .line 22
    iput-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->e:Z

    .line 23
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v0

    .line 24
    :goto_1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->e:Z

    if-eqz v0, :cond_9

    if-eqz v6, :cond_3

    .line 25
    :try_start_3
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 26
    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xca

    if-eq v0, v1, :cond_3

    const/16 v1, 0x130

    if-eq v0, v1, :cond_3

    .line 27
    iput-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->e:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    if-eqz p1, :cond_7

    const/16 v0, 0x1000

    :try_start_4
    new-array v0, v0, [B

    .line 29
    :goto_3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_4

    goto :goto_4

    .line 30
    :cond_4
    :try_start_5
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_5

    .line 31
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    if-ne v1, v0, :cond_6

    goto :goto_5

    :catch_1
    move-exception v0

    .line 32
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    :goto_4
    const/4 v3, 0x0

    :goto_5
    move v5, v3

    goto :goto_6

    :catchall_3
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :cond_7
    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_8

    .line 35
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 36
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->d:Ljava/io/RandomAccessFile;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 38
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_9
    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$l;->b(Ljava/lang/Boolean;)V

    return-void
.end method
