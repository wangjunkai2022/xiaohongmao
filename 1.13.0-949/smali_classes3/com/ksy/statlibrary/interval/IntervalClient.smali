.class public Lcom/ksy/statlibrary/interval/IntervalClient;
.super Ljava/lang/Object;
.source "IntervalClient.java"


# static fields
.field private static _instance:Lcom/ksy/statlibrary/interval/IntervalClient;

.field private static mContenxt:Landroid/content/Context;


# instance fields
.field private mIntervalTask:Lcom/ksy/statlibrary/interval/IntervalTask;

.field private mListener:Lcom/ksy/statlibrary/interval/IntervalResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/interval/IntervalClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/interval/IntervalClient;->_instance:Lcom/ksy/statlibrary/interval/IntervalClient;

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lcom/ksy/statlibrary/interval/IntervalClient;->mContenxt:Landroid/content/Context;

    .line 3
    new-instance p0, Lcom/ksy/statlibrary/interval/IntervalClient;

    invoke-direct {p0}, Lcom/ksy/statlibrary/interval/IntervalClient;-><init>()V

    sput-object p0, Lcom/ksy/statlibrary/interval/IntervalClient;->_instance:Lcom/ksy/statlibrary/interval/IntervalClient;

    .line 4
    :cond_0
    sget-object p0, Lcom/ksy/statlibrary/interval/IntervalClient;->_instance:Lcom/ksy/statlibrary/interval/IntervalClient;

    return-object p0
.end method

.method private release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksy/statlibrary/interval/IntervalClient;->mIntervalTask:Lcom/ksy/statlibrary/interval/IntervalTask;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static unInstance()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ksy/statlibrary/interval/IntervalClient;->_instance:Lcom/ksy/statlibrary/interval/IntervalClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Lcom/ksy/statlibrary/interval/IntervalClient;->release()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ksy/statlibrary/interval/IntervalClient;->_instance:Lcom/ksy/statlibrary/interval/IntervalClient;

    :cond_0
    return-void
.end method


# virtual methods
.method public sendIntervalRequest(Ljava/lang/String;Lcom/ksy/statlibrary/interval/IntervalResultListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ksy/statlibrary/interval/IntervalTask;

    invoke-direct {v0, p2, p1}, Lcom/ksy/statlibrary/interval/IntervalTask;-><init>(Lcom/ksy/statlibrary/interval/IntervalResultListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksy/statlibrary/interval/IntervalClient;->mIntervalTask:Lcom/ksy/statlibrary/interval/IntervalTask;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
