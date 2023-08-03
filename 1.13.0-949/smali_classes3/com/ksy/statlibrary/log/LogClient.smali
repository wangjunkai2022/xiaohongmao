.class public Lcom/ksy/statlibrary/log/LogClient;
.super Ljava/lang/Object;
.source "LogClient.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x7530

.field private static final LOG_CLIENT_STARTED:I = 0x1

.field private static final LOG_CLIENT_UNINIT:I = 0x0

.field private static final SO_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "LogClient"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ksy/statlibrary/log/LogClient;

.field private static mLockObject:Ljava/lang/Object;


# instance fields
.field private LOG_ONCE_LIMIT:I

.field private LOG_SERVER_MONITOR_URL_FOR_TEST:Ljava/lang/String;

.field private TIMER_INTERVAL:J

.field private mEnableLog:Z

.field private mExec:Ljava/util/concurrent/ExecutorService;

.field private mExecTemp:Ljava/util/concurrent/ExecutorService;

.field private mExpire:Ljava/lang/String;

.field private mIsNeedloop:Z

.field private mReportParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ksy/statlibrary/log/LogParams;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCount:I

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ksy/statlibrary/log/LogClient;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 15
    iput v0, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_ONCE_LIMIT:I

    const-wide/32 v0, 0xea60

    .line 16
    iput-wide v0, p0, Lcom/ksy/statlibrary/log/LogClient;->TIMER_INTERVAL:J

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mExecTemp:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mExpire:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_SERVER_MONITOR_URL_FOR_TEST:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mReportParams:Ljava/util/HashMap;

    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    invoke-static {}, Lcom/ksy/statlibrary/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {v0}, Lcom/ksy/statlibrary/util/PreferenceUtil;->init(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mExpire:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_ONCE_LIMIT:I

    const-wide/32 v0, 0xea60

    .line 3
    iput-wide v0, p0, Lcom/ksy/statlibrary/log/LogClient;->TIMER_INTERVAL:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mExecTemp:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mExpire:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_SERVER_MONITOR_URL_FOR_TEST:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mReportParams:Ljava/util/HashMap;

    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    sput-object p1, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {p1}, Lcom/ksy/statlibrary/util/PreferenceUtil;->init(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksy/statlibrary/log/LogClient;->mExpire:Ljava/lang/String;

    return-void
.end method

.method public static StringToBt(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/ksy/statlibrary/log/LogClient;->StringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static StringToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ksy/statlibrary/log/LogClient;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ksy/statlibrary/log/LogClient;->mReportParams:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ksy/statlibrary/log/LogClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ksy/statlibrary/log/LogClient;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ksy/statlibrary/log/LogClient;->sendRecord(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ksy/statlibrary/log/LogClient;Lcom/ksy/statlibrary/db/RecordResult;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ksy/statlibrary/log/LogClient;->setHeaderJson(Lcom/ksy/statlibrary/db/RecordResult;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ksy/statlibrary/log/LogClient;Lcom/ksy/statlibrary/db/RecordResult;IIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ksy/statlibrary/log/LogClient;->sendRecordJson(Lcom/ksy/statlibrary/db/RecordResult;IIZZ)V

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 9
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :goto_3
    throw v0
.end method

.method public static getInstance()Lcom/ksy/statlibrary/log/LogClient;
    .locals 2

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ksy/statlibrary/log/LogClient;

    invoke-direct {v1}, Lcom/ksy/statlibrary/log/LogClient;-><init>()V

    sput-object v1, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

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
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/log/LogClient;
    .locals 2

    .line 7
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/ksy/statlibrary/log/LogClient;

    invoke-direct {v1, p0}, Lcom/ksy/statlibrary/log/LogClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    return-object p0
.end method

.method private getLogParams(Ljava/lang/String;)Lcom/ksy/statlibrary/log/LogParams;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "LogClient"

    if-eqz v0, :cond_0

    const-string p1, "your uniquename is null"

    .line 2
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/ksy/statlibrary/log/LogClient;->mReportParams:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ksy/statlibrary/log/LogClient;->mReportParams:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksy/statlibrary/log/LogParams;

    return-object p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do not have your uniquename:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private jsonCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-boolean p2, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonCheck  e =="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KSY_ANDROID_LOG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method private sendRecord(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_ONCE_LIMIT:I

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mIsNeedloop:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    .line 2
    :goto_1
    iput v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mSendCount:I

    .line 3
    new-instance v2, Lcom/ksy/statlibrary/db/RecordResult;

    invoke-direct {v2}, Lcom/ksy/statlibrary/db/RecordResult;-><init>()V

    .line 4
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksy/statlibrary/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/db/DBManager;

    move-result-object v0

    iget v1, p0, Lcom/ksy/statlibrary/log/LogClient;->mSendCount:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/ksy/statlibrary/db/DBManager;->getRecords(ILcom/ksy/statlibrary/db/RecordResult;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/ksy/statlibrary/db/RecordResult;->getUniqname()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Lcom/ksy/statlibrary/log/LogClient;->setHeaderJson(Lcom/ksy/statlibrary/db/RecordResult;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v2, Lcom/ksy/statlibrary/db/RecordResult;->idBuffer:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget v3, p0, Lcom/ksy/statlibrary/log/LogClient;->mSendCount:I

    iget-boolean v5, p0, Lcom/ksy/statlibrary/log/LogClient;->mIsNeedloop:Z

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/ksy/statlibrary/log/LogClient;->sendRecordJson(Lcom/ksy/statlibrary/db/RecordResult;IIZZ)V

    :cond_2
    return-void
.end method

.method private sendRecordJson(Lcom/ksy/statlibrary/db/RecordResult;IIZZ)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ksy/statlibrary/db/RecordResult;->getRecordValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSY_ANDROID_LOG"

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p1}, Lcom/ksy/statlibrary/db/RecordResult;->getUniqname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-boolean v2, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before jsonString ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/ksy/statlibrary/util/GzipUtil;->compress(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 6
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 8
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const/16 v5, 0x7530

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "http.connection.timeout"

    invoke-interface {v4, v6, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 9
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const/16 v5, 0x4e20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "http.socket.timeout"

    invoke-interface {v4, v6, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 10
    invoke-virtual {p1}, Lcom/ksy/statlibrary/db/RecordResult;->getUniqname()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ksy/statlibrary/log/LogClient;->getLogParams(Ljava/lang/String;)Lcom/ksy/statlibrary/log/LogParams;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 11
    iget-object v5, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_SERVER_MONITOR_URL_FOR_TEST:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_SERVER_MONITOR_URL_FOR_TEST:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/ksy/statlibrary/util/Constants;->LOG_SERVER_MONITOR_URL:Ljava/lang/String;

    .line 12
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/ksy/statlibrary/log/LogParams;->accesskey:Ljava/lang/String;

    iget-object v4, v4, Lcom/ksy/statlibrary/log/LogParams;->secretkey:Ljava/lang/String;

    iget-object v7, p0, Lcom/ksy/statlibrary/log/LogClient;->mExpire:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/ksy/statlibrary/db/RecordResult;->getUniqname()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v5, v4, v7, v0, v8}, Lcom/ksy/statlibrary/util/AuthUtils;->getAuthUrlSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v0, "accept-encoding"

    const-string v5, "deflate"

    .line 16
    invoke-virtual {v4, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content-encoding"

    const-string v5, "gzip"

    .line 17
    invoke-virtual {v4, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :try_start_2
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ksy/statlibrary/log/LogClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    if-eqz p5, :cond_5

    .line 23
    iget-boolean p1, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    if-eqz p1, :cond_4

    const-string p1, "send once successfully ,thread will be destroy~"

    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 25
    :cond_5
    sget-object p5, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/ksy/statlibrary/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/db/DBManager;

    move-result-object p5

    iget-object v0, p1, Lcom/ksy/statlibrary/db/RecordResult;->idBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/ksy/statlibrary/db/DBManager;->deleteLogs(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/ksy/statlibrary/db/RecordResult;->release()V

    if-eqz p4, :cond_6

    sub-int/2addr p3, p2

    if-lez p3, :cond_8

    .line 27
    invoke-virtual {p1}, Lcom/ksy/statlibrary/db/RecordResult;->getUniqname()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/ksy/statlibrary/log/LogClient;->sendRecord(ILjava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/ksy/statlibrary/db/RecordResult;->getUniqname()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/ksy/statlibrary/log/LogClient;->sendRecord(ILjava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_7
    iget-boolean p1, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    if-eqz p1, :cond_8

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "response.getStatusLine().getStatusCode()="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return-void

    :catch_2
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    iget-boolean p2, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    if-eqz p2, :cond_9

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "gzip is failed, send log exception e"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 36
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    if-eqz p1, :cond_b

    const-string p1, "sendRecordJson() invalid data,drop record "

    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method private setHeaderJson(Lcom/ksy/statlibrary/db/RecordResult;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/ksy/statlibrary/log/LogClient;->getLogParams(Ljava/lang/String;)Lcom/ksy/statlibrary/log/LogParams;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 2
    iget-object p2, v0, Lcom/ksy/statlibrary/log/LogParams;->header:Lorg/json/JSONObject;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/ksy/statlibrary/db/RecordResult;->putHeader(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    if-eqz p1, :cond_2

    const-string p1, "KSY_ANDROID_LOG"

    const-string p2, "setHeaderJson().. uniqname==null drop.."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static unInstance()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksy/statlibrary/log/LogClient;->release()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ksy/statlibrary/log/LogClient;->mInstance:Lcom/ksy/statlibrary/log/LogClient;

    :cond_0
    return-void
.end method


# virtual methods
.method public addReportParam(Lcom/ksy/statlibrary/log/LogParams;)V
    .locals 2

    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mReportParams:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/ksy/statlibrary/log/LogParams;->uniquename:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBuildVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.1"

    return-object v0
.end method

.method public getBuildVersionNumber()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public getLocalIntervalTime()I
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/ksy/statlibrary/util/PreferenceUtil;->init(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getIntervalTime()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x270f

    return v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isEnableLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ksy/statlibrary/log/LogClient;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ksy/statlibrary/log/LogClient;->jsonCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/ksy/statlibrary/log/LogClient;->mExec:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ksy/statlibrary/log/LogClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ksy/statlibrary/log/LogClient$2;-><init>(Lcom/ksy/statlibrary/log/LogClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/ksy/statlibrary/log/LogClient;->mExecTemp:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ksy/statlibrary/log/LogClient$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ksy/statlibrary/log/LogClient$3;-><init>(Lcom/ksy/statlibrary/log/LogClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "put() new log format is not correct, sdk will ignore it"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/ksy/statlibrary/db/DBManager;->unInstance()V

    .line 5
    invoke-static {}, Lcom/ksy/statlibrary/interval/IntervalClient;->unInstance()V

    return-void
.end method

.method public sendIntervalRequest(Lcom/ksy/statlibrary/interval/IntervalResultListener;Ljava/lang/String;)V
    .locals 3

    const-string v0, "KSY_ANDROID_LOG"

    if-eqz p1, :cond_3

    .line 1
    sget-object v1, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksy/statlibrary/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksy/statlibrary/util/PreferenceUtil;->init(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ksy/statlibrary/util/PreferenceUtil;->isAfterTwoWeek(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p2}, Lcom/ksy/statlibrary/log/LogClient;->getLogParams(Ljava/lang/String;)Lcom/ksy/statlibrary/log/LogParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/ksy/statlibrary/log/LogParams;->accesskey:Ljava/lang/String;

    iget-object v0, v0, Lcom/ksy/statlibrary/log/LogParams;->secretkey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksy/statlibrary/log/LogClient;->mExpire:Ljava/lang/String;

    invoke-static {v1, v0, v2, p2}, Lcom/ksy/statlibrary/util/AuthUtils;->getAuthUrlIntervalSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v0, Lcom/ksy/statlibrary/log/LogClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksy/statlibrary/interval/IntervalClient;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/interval/IntervalClient;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/ksy/statlibrary/interval/IntervalClient;->sendIntervalRequest(Ljava/lang/String;Lcom/ksy/statlibrary/interval/IntervalResultListener;)V

    goto :goto_0

    :cond_0
    const/16 p2, -0x64

    .line 7
    invoke-static {}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getIntervalTime()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/ksy/statlibrary/interval/IntervalResultListener;->onGetIntervalSuccess(II)V

    goto :goto_0

    :cond_1
    const/16 p2, -0x3e8

    .line 8
    invoke-static {}, Lcom/ksy/statlibrary/util/PreferenceUtil;->getIntervalTime()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/ksy/statlibrary/interval/IntervalResultListener;->onGetIntervalSuccess(II)V

    goto :goto_0

    :cond_2
    const-string p1, "Get log interval dismissed, please check your network"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "Get log interval result listener is null"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEnableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksy/statlibrary/log/LogClient;->mEnableLog:Z

    return-void
.end method

.method public setLOG_ONCE_LIMIT(I)Lcom/ksy/statlibrary/log/LogClient;
    .locals 0

    iput p1, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_ONCE_LIMIT:I

    return-object p0
.end method

.method public setTIMER_INTERVAL(J)Lcom/ksy/statlibrary/log/LogClient;
    .locals 0

    iput-wide p1, p0, Lcom/ksy/statlibrary/log/LogClient;->TIMER_INTERVAL:J

    return-object p0
.end method

.method public setTestServerMonitorURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksy/statlibrary/log/LogClient;->LOG_SERVER_MONITOR_URL_FOR_TEST:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/ksy/statlibrary/log/LogClient;->mTimer:Ljava/util/Timer;

    .line 4
    new-instance v3, Lcom/ksy/statlibrary/log/LogClient$1;

    invoke-direct {v3, p0}, Lcom/ksy/statlibrary/log/LogClient$1;-><init>(Lcom/ksy/statlibrary/log/LogClient;)V

    iget-wide v6, p0, Lcom/ksy/statlibrary/log/LogClient;->TIMER_INTERVAL:J

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogClient;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
