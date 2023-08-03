.class Lcom/ksyun/media/streamer/logstats/d$a;
.super Landroid/os/AsyncTask;
.source "StreamSucessCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/logstats/d;
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
.field final synthetic a:Lcom/ksyun/media/streamer/logstats/d;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/logstats/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/d$a;->a:Lcom/ksyun/media/streamer/logstats/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/logstats/d;Lcom/ksyun/media/streamer/logstats/d$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/logstats/d$a;-><init>(Lcom/ksyun/media/streamer/logstats/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/streamer/logstats/d$a;->a:Lcom/ksyun/media/streamer/logstats/d;

    invoke-static {p1}, Lcom/ksyun/media/streamer/logstats/d;->a(Lcom/ksyun/media/streamer/logstats/d;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/d$a;->a:Lcom/ksyun/media/streamer/logstats/d;

    invoke-static {v1}, Lcom/ksyun/media/streamer/logstats/d;->b(Lcom/ksyun/media/streamer/logstats/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "GET"

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    .line 5
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/d$a;->a:Lcom/ksyun/media/streamer/logstats/d;

    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/logstats/d;->a(Lcom/ksyun/media/streamer/logstats/d;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw p1

    :catch_1
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_2

    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/logstats/d$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
