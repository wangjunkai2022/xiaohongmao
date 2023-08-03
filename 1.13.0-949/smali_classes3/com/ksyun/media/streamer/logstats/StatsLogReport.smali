.class public Lcom/ksyun/media/streamer/logstats/StatsLogReport;
.super Ljava/lang/Object;
.source "StatsLogReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;,
        Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;
    }
.end annotation


# static fields
.field public static final ERROR_MODEL_TYPE_AUDIOCAPTURE:I = 0x1

.field public static final ERROR_MODEL_TYPE_CAMERACAPTURE:I = 0x2

.field public static final ERROR_MODEL_TYPE_ENCODE_AUDIO:I = 0x3

.field public static final ERROR_MODEL_TYPE_ENCODE_VIDEO:I = 0x4

.field public static final ERROR_MODEL_TYPE_PUBLISH:I = 0x5

.field private static aj:Lcom/ksyun/media/streamer/logstats/StatsLogReport; = null

.field private static final b:I = 0xac44

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private A:Z

.field private B:F

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:I

.field private O:Ljava/lang/String;

.field private P:I

.field private Q:Ljava/lang/String;

.field private R:I

.field private S:F

.field private T:Ljava/lang/String;

.field private U:I

.field private V:Ljava/lang/String;

.field private W:J

.field private X:I

.field private Y:I

.field private Z:I

.field a:Ljava/lang/Runnable;

.field private aa:I

.field private ab:F

.field private ac:I

.field private ad:J

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:Z

.field private ak:Lcom/ksy/statlibrary/interval/IntervalResultListener;

.field private final c:Ljava/lang/String;

.field private d:Lcom/ksyun/media/streamer/util/StringWrapper;

.field private e:Ljava/lang/Thread;

.field private volatile i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private volatile n:Z

.field private volatile o:Z

.field private p:Ljava/lang/StringBuffer;

.field private q:Lorg/json/JSONObject;

.field private r:Lcom/ksyun/media/streamer/logstats/d;

.field private s:Ljava/util/Timer;

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:Z

.field private w:Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatsLogReport"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->u:Z

    .line 6
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    .line 7
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->y:Z

    .line 8
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->A:Z

    const-string v1, "0x0"

    .line 9
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->I:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    .line 10
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->O:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Q:Ljava/lang/String;

    const/16 v1, 0x270f

    .line 14
    iput v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ac:I

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ad:J

    .line 16
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ae:I

    .line 17
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->af:I

    .line 18
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ag:I

    .line 19
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ah:I

    .line 20
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ai:Z

    .line 21
    new-instance v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;-><init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$2;-><init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ak:Lcom/ksy/statlibrary/interval/IntervalResultListener;

    .line 23
    invoke-static {}, Lcom/ksyun/media/streamer/util/StringWrapper;->getInstance()Lcom/ksyun/media/streamer/util/StringWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->d:Lcom/ksyun/media/streamer/util/StringWrapper;

    .line 24
    invoke-static {}, Lcom/ksyun/media/streamer/util/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    .line 26
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j()V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->w:Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->q:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    .line 8
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->b()V

    .line 9
    invoke-static {}, Lcom/ksyun/media/streamer/util/StringWrapper;->unInitInstance()V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "StatsLogReport"

    .line 11
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ClientIP"

    .line 12
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->l:Ljava/lang/String;

    const-string p1, "LocalDnsIP"

    .line 13
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->m:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dns check ClientIP:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dns check LocalDnsIp:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/ksy/statlibrary/log/LogClient;->put(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .line 17
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->w:Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->w:Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;

    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;->onLogEvent(Ljava/lang/StringBuilder;)V

    :cond_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/ksy/statlibrary/log/LogClient;->put(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->u:Z

    return-void
.end method

.method private a(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x1e

    if-lt p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/logstats/StatsLogReport;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ac:I

    return p1
.end method

.method private b()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksy/statlibrary/util/PreferenceUtil;->init(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getIntervalTime()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ac:I

    .line 7
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->e:Ljava/lang/Thread;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    const-string v1, "StatsLogReport"

    if-nez v0, :cond_1

    const-string v0, "the user did not set context"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLogClientInitState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 13
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->w:Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->p:Ljava/lang/StringBuffer;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->w:Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;

    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;->onLogEvent(Ljava/lang/StringBuilder;)V

    :cond_2
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ksy/statlibrary/log/LogClient;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lorg/json/JSONObject;Z)V

    .line 24
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    return p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Lcom/ksyun/media/streamer/util/StringWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->d:Lcom/ksyun/media/streamer/util/StringWrapper;

    return-object p0
.end method

.method private c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "audio_channels"

    .line 5
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->x:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "auto_adjust_bitrate"

    .line 6
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->y:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "is_landspace"

    .line 7
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->z:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "is_front_mirror"

    .line 8
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->A:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "iframe_interval"

    .line 9
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->B:F

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "max_video_bitrate"

    .line 10
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->D:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "min_video_bitrate"

    .line 11
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->E:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "video_bitrate"

    .line 12
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->C:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sample_audio_rate"

    .line 13
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->G:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "audio_bitrate"

    .line 14
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->H:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "resolution"

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "framerate"

    .line 16
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->S:F

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 17
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->g()V

    const-string v0, "video_encode_type"

    .line 18
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "audio_encode_type"

    .line 19
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "video_encode_perf"

    .line 20
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->O:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "live_scence"

    .line 21
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private c()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->s:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 3
    new-instance v1, Ljava/util/Timer;

    const-string v0, "NetworkStatusStat"

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->s:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;-><init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V

    const-wide/16 v3, 0x12c

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Lcom/ksy/statlibrary/interval/IntervalResultListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ak:Lcom/ksy/statlibrary/interval/IntervalResultListener;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->s:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->s:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "StatsLogReport"

    const-string v1, "begin dns check"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport$a;-><init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->n:Z

    return p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->U:I

    return p0
.end method

.method private f()V
    .locals 8

    .line 2
    iget v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Z:I

    .line 3
    iget v4, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aa:I

    .line 4
    invoke-direct {p0, v3, v4}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(II)Z

    move-result v7

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->m:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v5

    .line 7
    invoke-static/range {v0 .. v6}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0, v7}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->W:J

    return-wide v0
.end method

.method private g()V
    .locals 8

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->K:I

    const/16 v1, 0x1c

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_5

    goto :goto_2

    :cond_0
    const-string v6, "hard264"

    .line 3
    iput-object v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    .line 4
    iget v7, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->L:I

    if-ne v7, v5, :cond_1

    .line 5
    iput-object v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ne v7, v4, :cond_2

    const-string v6, "hard265"

    .line 6
    iput-object v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    .line 7
    :cond_2
    :goto_0
    iget v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->N:I

    if-ne v6, v2, :cond_3

    const-string v1, "at_aac_he"

    .line 8
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    goto :goto_2

    :cond_3
    if-ne v6, v1, :cond_4

    const-string v1, "at_aac_hev2"

    .line 9
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v6, v5, :cond_a

    const-string v1, "at_aac_lc"

    .line 10
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v6, "soft264"

    .line 11
    iput-object v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    .line 12
    iget v7, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->L:I

    if-ne v7, v5, :cond_6

    .line 13
    iput-object v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-ne v7, v4, :cond_7

    const-string v6, "soft265"

    .line 14
    iput-object v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->J:Ljava/lang/String;

    .line 15
    :cond_7
    :goto_1
    iget v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->N:I

    if-ne v6, v2, :cond_8

    const-string v1, "soft_aac_he"

    .line 16
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    goto :goto_2

    :cond_8
    if-ne v6, v1, :cond_9

    const-string v1, "soft_aac_hev2"

    .line 17
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    goto :goto_2

    :cond_9
    if-ne v6, v5, :cond_a

    const-string v1, "soft_aac_lc"

    .line 18
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->M:Ljava/lang/String;

    :cond_a
    :goto_2
    const-string v1, "Default"

    const-string v2, "UNKNOWN"

    if-eq v0, v4, :cond_e

    .line 19
    iget v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->P:I

    if-ne v6, v3, :cond_b

    const-string v3, "LowPower"

    .line 20
    iput-object v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->O:Ljava/lang/String;

    goto :goto_3

    :cond_b
    if-ne v6, v4, :cond_c

    const-string v3, "Balance"

    .line 21
    iput-object v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->O:Ljava/lang/String;

    goto :goto_3

    :cond_c
    if-ne v6, v5, :cond_d

    const-string v3, "HighPerformance"

    .line 22
    iput-object v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->O:Ljava/lang/String;

    goto :goto_3

    :cond_d
    if-nez v6, :cond_f

    .line 23
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->O:Ljava/lang/String;

    goto :goto_3

    .line 24
    :cond_e
    iput-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->O:Ljava/lang/String;

    :cond_f
    :goto_3
    if-eq v0, v4, :cond_12

    .line 25
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->R:I

    if-nez v0, :cond_10

    .line 26
    iput-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Q:Ljava/lang/String;

    goto :goto_4

    :cond_10
    if-ne v0, v4, :cond_11

    const-string v0, "Game"

    .line 27
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Q:Ljava/lang/String;

    goto :goto_4

    :cond_11
    if-ne v0, v5, :cond_13

    const-string v0, "Showself"

    .line 28
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Q:Ljava/lang/String;

    goto :goto_4

    .line 29
    :cond_12
    iput-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Q:Ljava/lang/String;

    :cond_13
    :goto_4
    return-void
.end method

.method public static getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;
    .locals 2

    .line 1
    sget-object v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aj:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aj:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;-><init>()V

    sput-object v1, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aj:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aj:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    return-object v0
.end method

.method private h()J
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->n:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getInstance()Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getTimeDelta()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    return-object p0
.end method

.method private i()J
    .locals 5

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getInstance()Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getTimeDelta()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method static synthetic i(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->X:I

    return p0
.end method

.method private j()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->r:Lcom/ksyun/media/streamer/logstats/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/d;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/logstats/d;

    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->d:Lcom/ksyun/media/streamer/util/StringWrapper;

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/logstats/d;-><init>(Landroid/content/Context;Lcom/ksyun/media/streamer/util/StringWrapper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->r:Lcom/ksyun/media/streamer/logstats/d;

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b()V

    return-void
.end method

.method static synthetic k(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Y:I

    return p0
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ab:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ae:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->af:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ad:J

    return-void
.end method

.method static synthetic l(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method private l()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->K:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic m(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->f()V

    return-void
.end method

.method public static uninitInstance()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aj:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aj:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    :cond_0
    return-void
.end method


# virtual methods
.method public estBitrateDrop(IJ)V
    .locals 14

    move-object v0, p0

    move v7, p1

    move-wide/from16 v8, p2

    .line 1
    iget v1, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const-string v13, "StatsLogReport"

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "the log client is not been init"

    .line 2
    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz v7, :cond_5

    const-wide/16 v1, 0x0

    cmp-long v3, v8, v1

    if-gez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->T:Ljava/lang/String;

    iget-object v2, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    iget-object v3, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    iget-object v5, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->V:Ljava/lang/String;

    const/4 v6, 0x0

    iget v10, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->F:I

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v11

    move v7, p1

    move-wide/from16 v8, p2

    .line 5
    invoke-static/range {v1 .. v12}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ZIJIJ)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    iget-boolean v2, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***estBitrateDrop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v1, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 10
    :cond_3
    iget-boolean v1, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz v1, :cond_4

    const-string v1, "***estBitrateDrop the wrong notify"

    .line 11
    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    .line 12
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "estBitrateRaise the input param is wrong. do not report. currentBitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; estimateBandWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public estBitrateRaise(IJ)V
    .locals 14

    move-object v0, p0

    move v7, p1

    move-wide/from16 v8, p2

    .line 1
    iget v1, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const-string v13, "StatsLogReport"

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "the log client is not been init"

    .line 2
    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz v7, :cond_5

    const-wide/16 v1, 0x0

    cmp-long v3, v8, v1

    if-gez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->T:Ljava/lang/String;

    iget-object v2, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    iget-object v3, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    iget-object v5, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->V:Ljava/lang/String;

    const/4 v6, 0x1

    iget v10, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->F:I

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v11

    move v7, p1

    move-wide/from16 v8, p2

    .line 5
    invoke-static/range {v1 .. v12}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ZIJIJ)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    iget-boolean v2, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***estBitrateRaise : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v1, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 10
    :cond_3
    iget-boolean v1, v0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz v1, :cond_4

    const-string v1, "***estBitrateRaise the wrong notify"

    .line 11
    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    .line 12
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " estBitrateRaise the input param is wrong, do not report. currentBitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; estimateBandWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public frameDataSendSlow()V
    .locals 1

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->h()V

    return-void
.end method

.method public getEnableDebugLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    return v0
.end method

.method public getLogInterval()J
    .locals 2

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ac:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public initLogReport(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j()V

    return-void
.end method

.method public isPermitLogReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->u:Z

    return v0
.end method

.method public reportError(II)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ai:Z

    .line 2
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    const/16 v1, -0x7d4

    const/16 v3, -0x7d2

    const/16 v4, -0x7d6

    const/16 v5, -0x7d3

    const/16 v6, -0x7d5

    if-eq p2, v0, :cond_9

    if-eq p2, v2, :cond_7

    const/4 v0, 0x3

    const/16 v2, -0x3ea

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, -0xbcc

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :goto_0
    move v4, p1

    goto :goto_2

    :pswitch_0
    const/16 p1, -0x3f1

    const/16 v4, -0x3f1

    goto :goto_2

    :pswitch_1
    const/16 p1, -0x3ee

    const/16 v4, -0x3ee

    goto :goto_2

    :pswitch_2
    const/16 p1, -0x3f2

    const/16 v4, -0x3f2

    goto :goto_2

    :cond_1
    const/16 v4, -0x7d4

    goto :goto_2

    :cond_2
    const/16 p1, -0x3ef

    const/16 v4, -0x3ef

    goto :goto_2

    :cond_3
    if-eq p1, v2, :cond_4

    const/16 p1, -0x3eb

    const/16 v4, -0x3eb

    goto :goto_2

    :cond_4
    const/16 p1, -0x3ec

    const/16 v4, -0x3ec

    goto :goto_2

    :cond_5
    if-eq p1, v2, :cond_6

    const/16 p1, -0x3f3

    const/16 v4, -0x3f3

    goto :goto_2

    :cond_6
    const/16 p1, -0x3f0

    const/16 v4, -0x3f0

    goto :goto_2

    :cond_7
    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_8

    const/16 p1, -0x7d1

    const/16 v4, -0x7d1

    goto :goto_2

    :cond_8
    const/16 v4, -0x7d2

    goto :goto_2

    :cond_9
    if-eq p1, v6, :cond_b

    if-eq p1, v5, :cond_a

    goto :goto_1

    :cond_a
    const/16 v4, -0x7d3

    goto :goto_2

    :cond_b
    :goto_1
    const/16 v4, -0x7d5

    .line 3
    :cond_c
    :goto_2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/logstats/b;->v()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->T:Ljava/lang/String;

    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    iget-object v5, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->V:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v6

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    iget-boolean p2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz p2, :cond_d

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***reportError : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StatsLogReport"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 p2, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch -0xbc4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAudioBitrate(I)V
    .locals 0

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->H:I

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->x:I

    return-void
.end method

.method public setAudioEncodeProfile(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->N:I

    return-void
.end method

.method public setAudioFrameNum(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ae:I

    return-void
.end method

.method public setAudioPts(J)V
    .locals 10

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ad:J

    .line 2
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->n:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->u:Z

    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getInstance()Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getTimeDelta()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/logstats/b;->s()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/logstats/b;->c(J)V

    .line 6
    :cond_1
    iget-wide p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ad:J

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->r()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ac:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 7
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->n:Z

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->l()Z

    move-result p1

    const-wide/32 v0, 0xac44

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ae:I

    int-to-long p1, p1

    const-wide/16 v4, 0x400

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ae:I

    int-to-long p1, p1

    const-wide/16 v4, 0x800

    :goto_0
    mul-long p1, p1, v4

    mul-long p1, p1, v2

    div-long/2addr p1, v0

    move-wide v3, p1

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    iget-wide v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ad:J

    iget v5, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->af:I

    iget v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ah:I

    iget v7, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ag:I

    .line 10
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v8

    .line 11
    invoke-static/range {v0 .. v9}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;JJIIIJ)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAudioSampleRateInHz(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->G:I

    return-void
.end method

.method public setAudioSendDelay(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ag:I

    return-void
.end method

.method public setAutoAdjustVideoBitrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->y:Z

    return-void
.end method

.method public setBwEstStrategy(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->F:I

    return-void
.end method

.method public setConnectTime(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aa:I

    return-void
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setCurrentBitrate(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ab:F

    return-void
.end method

.method public setDnsParseTime(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Z:I

    return-void
.end method

.method public setEnableDebugLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    return-void
.end method

.method public setEncodeDroppedFrameCount(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Y:I

    return-void
.end method

.method public setEncodeFormat(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->L:I

    return-void
.end method

.method public setEncodeMethod(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->K:I

    return-void
.end method

.method public setEncodedFrames(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->W:J

    return-void
.end method

.method public setFrameRate(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->S:F

    return-void
.end method

.method public setIFrameIntervalSec(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->B:F

    return-void
.end method

.method public setInitVideoBitrate(I)V
    .locals 0

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->C:I

    return-void
.end method

.method public setIsFrontCameraMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->A:Z

    return-void
.end method

.method public setIsLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->z:Z

    return-void
.end method

.method public setMaxVideoBitrate(I)V
    .locals 0

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->D:I

    return-void
.end method

.method public setMinVideoBitrate(I)V
    .locals 0

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->E:I

    return-void
.end method

.method public setOnLogEventListener(Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->w:Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;

    return-void
.end method

.method public setRtmpDroppedFrameCount(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->X:I

    return-void
.end method

.method public setRtmpHostIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->V:Ljava/lang/String;

    return-void
.end method

.method public setTargetResolution(II)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->I:Ljava/lang/String;

    return-void
.end method

.method public setUploadedKBytes(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->U:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->T:Ljava/lang/String;

    return-void
.end method

.method public setVideoEncodeDelay(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ah:I

    return-void
.end method

.method public setVideoEncodeProfile(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->P:I

    return-void
.end method

.method public setVideoEncodeScence(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->R:I

    return-void
.end method

.method public setVideoFrameNum(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->af:I

    return-void
.end method

.method public startRecordSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->o:Z

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "streamer_recorder"

    .line 3
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startStream(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getInstance()Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->getTimeDelta()J

    .line 2
    iput-object p2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->T:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->U:I

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->V:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->W:J

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->X:I

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Y:I

    .line 10
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Z:I

    .line 11
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->aa:I

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ab:F

    .line 13
    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ad:J

    .line 14
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ae:I

    .line 15
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->af:I

    .line 16
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ag:I

    .line 17
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ah:I

    .line 18
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ai:Z

    return-void
.end method

.method public startStreamSuccess()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const-string v1, "StatsLogReport"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string v0, "the log client is not been init or disable logreport"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->n:Z

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->r:Lcom/ksyun/media/streamer/logstats/d;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/d;->a()V

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->v()V

    .line 6
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    iget v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ab:F

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/logstats/b;->a(F)V

    .line 7
    iget-object v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->T:Ljava/lang/String;

    iget-object v4, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    iget-object v7, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->V:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v8

    .line 9
    invoke-static/range {v3 .. v9}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->q:Lorg/json/JSONObject;

    .line 12
    iget-boolean v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz v2, :cond_1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startStreamSuccess : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    .line 15
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->u:Z

    if-eqz v0, :cond_2

    .line 16
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c()V

    .line 17
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->e()V

    .line 18
    :cond_2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->o:Z

    if-eqz v0, :cond_3

    const-string v0, "streamer_recorder"

    .line 19
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public stopRecord()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->o:Z

    return-void
.end method

.method public stopStream()V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopStream :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ai:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsLogReport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->q:Lorg/json/JSONObject;

    .line 4
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ai:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    const/4 v6, 0x0

    iget v7, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->U:I

    iget-wide v8, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->W:J

    iget v10, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->X:I

    iget v11, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->Y:I

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h()J

    move-result-wide v12

    .line 7
    invoke-static/range {v3 .. v13}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIJIIJ)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    iget-boolean v3, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz v3, :cond_0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopStream : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->d()V

    .line 13
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->v()V

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k()V

    .line 15
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->n:Z

    .line 16
    :cond_2
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->ai:Z

    return-void
.end method

.method public varargs updateAudioFilterType([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const-string v1, "StatsLogReport"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p1, "the log client is not been init or disable logreport"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    invoke-static {v2, v3, v0, p1}, Lcom/ksyun/media/streamer/logstats/a;->b(JLandroid/content/Context;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz p1, :cond_2

    const-string p1, "***updateAudioFilterType report error"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs updateBeautyType([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const-string v1, "StatsLogReport"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p1, "the log client is not been init or disable logreport"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    invoke-static {v2, v3, v0, p1}, Lcom/ksyun/media/streamer/logstats/a;->a(JLandroid/content/Context;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz p1, :cond_2

    const-string p1, "***updateBeautyType report error"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public updateFunctionPoint(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i:I

    const-string v1, "StatsLogReport"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p1, "the log client is not been init or disable logreport"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->t:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->v:Z

    if-eqz p1, :cond_2

    const-string p1, "***updateFunctionPoint report error"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
