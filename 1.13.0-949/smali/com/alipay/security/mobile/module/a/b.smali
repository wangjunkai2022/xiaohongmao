.class public final Lcom/alipay/security/mobile/module/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/a/a;


# static fields
.field private static f:Lcom/alipay/security/mobile/module/a/b;

.field private static g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/android/phone/mrpc/core/a0;

.field private c:Lz/a;

.field private d:La0/b;

.field private e:La0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/a0;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->c:Lz/a;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->d:La0/b;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->e:La0/a;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->a:Landroid/content/Context;

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/b;-><init>()V

    invoke-static {}, Lq/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/b;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/l;

    invoke-direct {v1, p1}, Lcom/alipay/android/phone/mrpc/core/l;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/a0;

    const-class p1, Lz/a;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/phone/mrpc/core/a0;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/a;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->c:Lz/a;

    iget-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/a0;

    const-class v1, La0/b;

    invoke-virtual {p1, v1, v0}, Lcom/alipay/android/phone/mrpc/core/a0;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/b;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->d:La0/b;

    iget-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/a0;

    const-class v1, La0/a;

    invoke-virtual {p1, v1, v0}, Lcom/alipay/android/phone/mrpc/core/a0;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/a;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->e:La0/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lt/d;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/security/mobile/module/a/b;)La0/b;
    .locals 0

    iget-object p0, p0, Lcom/alipay/security/mobile/module/a/b;->d:La0/b;

    return-object p0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b;
    .locals 2

    const-class v0, Lcom/alipay/security/mobile/module/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/module/a/b;->f:Lcom/alipay/security/mobile/module/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/security/mobile/module/a/b;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/module/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/security/mobile/module/a/b;->f:Lcom/alipay/security/mobile/module/a/b;

    :cond_0
    sget-object p0, Lcom/alipay/security/mobile/module/a/b;->f:Lcom/alipay/security/mobile/module/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic f()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 0

    sput-object p0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;-><init>()V

    iput-object p1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->os:Ljava/lang/String;

    iput-object p4, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->apdid:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->userId:Ljava/lang/String;

    iput-object p3, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->token:Ljava/lang/String;

    iget-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->e:La0/a;

    invoke-interface {p1, v0}, La0/a;->a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListCmdResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->c:Lz/a;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lt/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lz/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {v2}, Lt/a;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lt/d;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v1
.end method

.method public final c(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->d:La0/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/module/a/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/a/c;-><init>(Lcom/alipay/security/mobile/module/a/b;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const p1, 0x493e0

    :goto_0
    sget-object v0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x32

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lt/d;->c(Ljava/lang/Throwable;)V

    :cond_0
    sget-object p1, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p1
.end method
