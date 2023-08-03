.class Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;
.super Landroid/os/AsyncTask;
.source "StatsLogReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/logstats/StatsLogReport;
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
.field final synthetic this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;-><init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://trace-ldns.ksyun.com/getlocaldns"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1388

    .line 4
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 6
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v5, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v1, p1

    .line 16
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_2

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v1, p1

    .line 17
    :goto_3
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dns check result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsLogReport"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->m(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
.end method
