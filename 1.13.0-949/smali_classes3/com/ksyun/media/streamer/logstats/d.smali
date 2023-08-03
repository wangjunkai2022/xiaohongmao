.class public Lcom/ksyun/media/streamer/logstats/d;
.super Ljava/lang/Object;
.source "StreamSucessCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/logstats/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "StreamSucessCount"

.field private static final b:Z = false

.field private static final c:I = 0x1388

.field private static final d:I = 0x1388

.field private static final e:Ljava/lang/String; = "http://videodev.ksyun.com:8980/univ/clientcounter"


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lcom/ksyun/media/streamer/util/StringWrapper;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ksyun/media/streamer/util/StringWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/d;->f:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/ksyun/media/streamer/logstats/d;->g:Lcom/ksyun/media/streamer/util/StringWrapper;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/logstats/d;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/logstats/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 8
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/logstats/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/d;->c()V

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/logstats/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/logstats/d;->k:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/d;->d()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/d;->e()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://videodev.ksyun.com:8980/univ/clientcounter"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?accesskey="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/d;->g:Lcom/ksyun/media/streamer/util/StringWrapper;

    sget v2, Lcom/ksyun/media/streamer/util/StringWrapper;->COUNT_ACCESS_KEY:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/StringWrapper;->getStringInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&expire="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&cont="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&uniqname="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&signature="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->k:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/a;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->h:Ljava/lang/String;

    .line 5
    :try_start_0
    sget-object v1, Lcom/ksyun/media/streamer/logstats/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cont="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&method=clientcounter&uniqname="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/d;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/d;->g:Lcom/ksyun/media/streamer/util/StringWrapper;

    sget v2, Lcom/ksyun/media/streamer/util/StringWrapper;->COUNT_SECRET_KEY:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/StringWrapper;->getStringInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ksyun/media/streamer/logstats/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->i:Ljava/lang/String;

    return-void
.end method

.method private f()J
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 3
    div-long/2addr v0, v2

    const-wide/16 v4, 0x258

    add-long/2addr v0, v4

    .line 4
    new-instance v4, Ljava/util/Date;

    mul-long v2, v2, v0

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/d;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->j:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/logstats/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/logstats/d$a;-><init>(Lcom/ksyun/media/streamer/logstats/d;Lcom/ksyun/media/streamer/logstats/d$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/d;->f:Landroid/content/Context;

    return-object v0
.end method
