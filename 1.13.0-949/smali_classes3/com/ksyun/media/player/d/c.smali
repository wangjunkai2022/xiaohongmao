.class public Lcom/ksyun/media/player/d/c;
.super Ljava/lang/Object;
.source "KSYStatRecord.java"


# static fields
.field private static a:Lcom/ksyun/media/player/d/c;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/d/c;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/player/d/c;->d:Z

    return-void
.end method

.method public static a()Lcom/ksyun/media/player/d/c;
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/player/d/c;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ksyun/media/player/d/c;->a:Lcom/ksyun/media/player/d/c;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/ksyun/media/player/d/c;

    invoke-direct {v1}, Lcom/ksyun/media/player/d/c;-><init>()V

    sput-object v1, Lcom/ksyun/media/player/d/c;->a:Lcom/ksyun/media/player/d/c;

    .line 4
    :cond_0
    sget-object v1, Lcom/ksyun/media/player/d/c;->a:Lcom/ksyun/media/player/d/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\."

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "ksyplayer_android_"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 5
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/ksyun/media/player/d/c;->d:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksy/statlibrary/log/LogClient;->start()V

    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/ksyun/media/player/d/c;->c:Landroid/content/Context;

    .line 9
    invoke-direct {p0, p3}, Lcom/ksyun/media/player/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/d/c;->e:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/player/d/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/ksyun/media/player/d/a;

    iget-object v0, p0, Lcom/ksyun/media/player/d/c;->c:Landroid/content/Context;

    invoke-direct {p3, p2, v0}, Lcom/ksyun/media/player/d/a;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/ksyun/media/player/d/c;->d:Z

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/player/d/c;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lcom/ksyun/media/player/d/b;

    invoke-direct {v1, p1}, Lcom/ksyun/media/player/d/b;-><init>(Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ksy/statlibrary/log/LogClient;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ksyun/media/player/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ksy/statlibrary/log/LogClient;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->getInstance()Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ksyun/media/player/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/ksy/statlibrary/log/LogClient;->put(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
