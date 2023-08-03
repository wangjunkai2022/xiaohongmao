.class public Lcom/alipay/apmobilesecuritysdk/face/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/c$b;,
        Lcom/alipay/apmobilesecuritysdk/face/c$a;,
        Lcom/alipay/apmobilesecuritysdk/face/c$c;
    }
.end annotation


# static fields
.field private static e:Lcom/alipay/apmobilesecuritysdk/face/c;

.field private static f:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Z

.field private c:Ljava/lang/Thread;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alipay/apmobilesecuritysdk/face/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/c;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->b:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->d:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/face/c;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->d:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic b(Lcom/alipay/apmobilesecuritysdk/face/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/apmobilesecuritysdk/face/c;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/alipay/apmobilesecuritysdk/face/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->b:Z

    return p0
.end method

.method public static g(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/c;
    .locals 2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/face/c;->e:Lcom/alipay/apmobilesecuritysdk/face/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/face/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/face/c;->e:Lcom/alipay/apmobilesecuritysdk/face/c;

    :cond_0
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/face/c;->e:Lcom/alipay/apmobilesecuritysdk/face/c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/alipay/apmobilesecuritysdk/face/c$c;
    .locals 6

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/c$c;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/face/c$c;-><init>(Lcom/alipay/apmobilesecuritysdk/face/c;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/c$c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocalApdidToken spend "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/c$c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lg/a;->a(Landroid/content/Context;)Lg/a;

    invoke-static {}, Lg/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/c$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->a:Landroid/content/Context;

    invoke-static {v1}, Li/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/c$c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public i(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/c$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/apmobilesecuritysdk/face/c$a;",
            ")V"
        }
    .end annotation

    const-string v0, "utdid"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "tid"

    invoke-static {p2, v0, v1}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "userId"

    invoke-static {p2, v0, v1}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    const-string v0, "https://mobilegw.alipay.com/mgw.htm"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "http://mobilegw-1-64.test.alipay.net/mgw.htm"

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lq/a;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "http://mobilegw.stable.alipay.net/mgw.htm"

    :goto_1
    invoke-static {p2}, Lq/a;->b(Ljava/lang/String;)V

    :goto_2
    iget-object p2, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->d:Ljava/util/LinkedList;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/c$b;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/alipay/apmobilesecuritysdk/face/c$b;-><init>(Lcom/alipay/apmobilesecuritysdk/face/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/c$a;)V

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->c:Ljava/lang/Thread;

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {p2, p0}, Lcom/alipay/apmobilesecuritysdk/face/a;-><init>(Lcom/alipay/apmobilesecuritysdk/face/c;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->c:Ljava/lang/Thread;

    new-instance p2, Lcom/alipay/apmobilesecuritysdk/face/b;

    invoke-direct {p2, p0}, Lcom/alipay/apmobilesecuritysdk/face/b;-><init>(Lcom/alipay/apmobilesecuritysdk/face/c;)V

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/c;->c:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method
