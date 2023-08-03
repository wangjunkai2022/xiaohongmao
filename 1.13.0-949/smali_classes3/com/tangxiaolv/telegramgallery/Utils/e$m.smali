.class Lcom/tangxiaolv/telegramgallery/Utils/e$m;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
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
.field private a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

.field private b:Ljava/io/RandomAccessFile;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Ljava/net/URLConnection;

.field final synthetic g:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$j;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->g:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->b:Ljava/io/RandomAccessFile;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e:Z

    .line 4
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    .line 5
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    .line 6
    iput p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->c:I

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->c:I

    return p0
.end method

.method private e(F)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 2
    iget-wide v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->d:J

    .line 4
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;

    invoke-direct {v1, p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$m;F)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs c([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 2
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    .line 4
    invoke-virtual {p1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    const-string v3, "Referer"

    const-string v4, "google.com"

    invoke-virtual {p1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    instance-of v3, p1, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    .line 9
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->h:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->b:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v1

    .line 14
    :goto_0
    instance-of v4, p1, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1

    .line 15
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e:Z

    goto :goto_1

    .line 16
    :cond_1
    instance-of v4, p1, Ljava/net/SocketException;

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ECONNRESET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e:Z

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v3

    goto :goto_2

    :cond_3
    move-object p1, v1

    .line 20
    :goto_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 21
    :try_start_2
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    if-eqz v3, :cond_4

    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_4

    .line 22
    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_4

    const/16 v4, 0xca

    if-eq v3, v4, :cond_4

    const/16 v4, 0x130

    if-eq v3, v4, :cond_4

    .line 23
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_4
    :goto_3
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->c:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->f:Ljava/net/URLConnection;

    if-eqz v3, :cond_5

    .line 26
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "content-Length"

    .line 27
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 28
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 29
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 30
    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/i;->n(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->c:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    if-eqz p1, :cond_b

    const/16 v3, 0x2000

    :try_start_4
    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 32
    :cond_6
    :goto_5
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_7

    goto :goto_6

    .line 33
    :cond_7
    :try_start_5
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_8

    add-int/2addr v4, v5

    .line 34
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v3, v2, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 35
    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->c:I

    if-eqz v5, :cond_6

    int-to-float v6, v4

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 36
    invoke-direct {p0, v6}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e(F)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :cond_8
    const/4 v3, -0x1

    if-ne v5, v3, :cond_9

    .line 37
    :try_start_6
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->c:I

    if-eqz v2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e(F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x1

    goto :goto_9

    :catch_2
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v0, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    .line 39
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v0, v2

    :cond_a
    :goto_8
    move v2, v0

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 40
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_b
    :goto_a
    :try_start_8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 43
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->b:Ljava/io/RandomAccessFile;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_b
    if-eqz p1, :cond_d

    .line 45
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_c
    if-eqz v2, :cond_e

    .line 47
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->h:Ljava/io/File;

    if-eqz v0, :cond_e

    .line 48
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 49
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->h:Ljava/io/File;

    iput-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    .line 50
    :cond_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->g:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->x(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->g:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->n(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/io/File;I)V

    .line 4
    :goto_1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;

    invoke-direct {v1, p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$m;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->c([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$m$c;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$m$c;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->d(Ljava/lang/Boolean;)V

    return-void
.end method
