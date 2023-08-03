.class public Lcom/ksyun/media/streamer/util/TimeDeltaUtil;
.super Ljava/lang/Object;
.source "TimeDeltaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;
    }
.end annotation


# static fields
.field public static final NTP_QUIT:I = 0x4

.field public static final NTP_SERVER_REQUEST:I = 0x2

.field public static final NTP_SERVER_RETRY:I = 0x3

.field public static final URL_PARSE:I = 0x1

.field private static final a:Ljava/lang/String; = "TimeDeltaUtil"

.field private static final b:Ljava/lang/String; = "http://centertime.ksyun.com/time"

.field private static final c:Ljava/lang/String; = "http://"

.field private static final m:I = 0x40

.field private static u:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:J

.field private volatile j:I

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->d:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e:I

    const/16 v1, 0x1388

    .line 4
    iput v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->f:I

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->g:I

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->h:I

    const-wide v0, 0x7fffffffffffffffL

    .line 7
    iput-wide v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->i:J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->j:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->b(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TimeDeltaUtil"

    const-string v1, "host or port parse failed"

    .line 11
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 13
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->o:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->t:J

    return-wide p1
.end method

.method private a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->k:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, 0x5

    const-string v2, "ksy_sync_time_thread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->k:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;-><init>(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 9

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x7

    if-ge v3, v1, :cond_7

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    const/16 v6, 0x40

    const/16 v7, 0x3a

    const/4 v8, 0x0

    if-ne v4, v5, :cond_1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v0, 0x5d

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v3, :cond_0

    add-int/lit8 v4, v0, -0x7

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 24
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->p:J

    goto :goto_2

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x7

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ge v2, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ne v4, v7, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->p:J

    .line 29
    :cond_5
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    :cond_6
    :goto_2
    return v8

    :cond_7
    return v2
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->i:J

    return-wide p1
.end method

.method private b()V
    .locals 5

    const-string v0, "http://centertime.ksyun.com/time"

    .line 3
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->a(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "TimeDeltaUtil"

    const-string v1, "url parse failed"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->o:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-ge v2, v4, :cond_2

    add-int/2addr v2, v1

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->q:Ljava/lang/String;

    .line 13
    iget-wide v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 14
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->p:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->r:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->r:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->q:Ljava/lang/String;

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->c()V

    return-void
.end method

.method private c()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->e()V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->d()V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x2

    const/16 v5, 0x2e

    const/4 v6, 0x4

    if-ge v1, v6, :cond_7

    move v6, v2

    const/4 v7, 0x0

    .line 5
    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v8, :cond_4

    sub-int v8, v6, v2

    if-gt v8, v4, :cond_3

    .line 6
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x39

    if-le v8, v10, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v7, v7, 0xa

    .line 7
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v0

    :cond_4
    if-eq v6, v2, :cond_6

    const/16 v2, 0xff

    if-le v7, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v0

    :cond_7
    if-ne v1, v6, :cond_8

    add-int/lit8 v1, v2, -0x1

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_8

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v5, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_4
    return v0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->k:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->j:I

    .line 3
    iget v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->j:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x64

    .line 4
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRetry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeDeltaUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;-><init>()V

    const/16 v1, 0xbb8

    .line 3
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->setTimeout(I)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->setConnectTimetout(I)V

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->r:Ljava/lang/String;

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$a;-><init>(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->setListener(Lcom/ksyun/media/streamer/util/https/HttpResponseListener;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->s:J

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->performHttpRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->t:J

    return-wide v0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->s:J

    return-wide v0
.end method

.method public static getInstance()Lcom/ksyun/media/streamer/util/TimeDeltaUtil;
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->u:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    if-nez v1, :cond_1

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object v1, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->u:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;-><init>()V

    sput-object v1, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->u:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    sget-object v0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->u:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    return-object v0

    :catchall_1
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public getTimeDelta()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->i:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->a()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->i:J

    return-wide v0
.end method
