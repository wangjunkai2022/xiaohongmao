.class public final Lcom/alipay/apmobilesecuritysdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Z = false


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lh/f;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lh/a;->b(Landroid/content/Context;)Lh/b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lh/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lh/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lh/f;->b(Lh/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    const-string v0, ""

    :catchall_1
    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic c(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/d;->a(Landroid/content/Context;)Ls/a;

    move-result-object v1

    const-string v2, "android"

    invoke-interface {v1, v2, p1, p2, p3}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr/a;

    move-result-object p1

    iget-boolean p2, p1, Lr/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->d(Z)V

    return-void

    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    iget-object p2, p1, Lr/a;->d:Ljava/lang/String;

    iget-object p1, p1, Lr/a;->c:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lh/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->d(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lt/d;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->d(Z)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->d(Z)V

    throw p0
.end method

.method private static declared-synchronized d(Z)V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized e()Z
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lh/f;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lh/a;->b(Landroid/content/Context;)Lh/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lh/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lh/f;->b(Lh/b;)V

    invoke-virtual {v1}, Lh/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Le/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Li/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/a;->e(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_3

    return-object v0

    :catchall_0
    const-string v0, ""

    :catchall_1
    :cond_3
    return-object v0
.end method

.method private g(Ljava/util/Map;)Lr/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lr/c;"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    new-instance v2, Lr/d;

    invoke-direct {v2}, Lr/d;-><init>()V

    const-string v3, "3"

    const-string v4, "umid"

    invoke-static {p1, v4, v0}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lh/a;->d(Landroid/content/Context;)Lh/b;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lh/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lh/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lh/b;->d()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    :goto_0
    invoke-static {}, Lh/a;->a()Lh/b;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lh/b;->a()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v7}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v0}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v1}, Le/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Le/a;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v8, "android"

    invoke-virtual {v2, v8}, Lr/d;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lr/d;->g(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lr/d;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lr/d;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lr/d;->k(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lr/d;->o(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lr/d;->m(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lf/e;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Lr/d;->c(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/d;->a(Landroid/content/Context;)Ls/a;

    move-result-object p1

    invoke-interface {p1, v2}, Ls/a;->c(Lr/d;)Lr/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lt/d;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final b(Ljava/util/Map;)Ljava/lang/String;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "vkeyid_settings"

    const-string v3, "1"

    const-string v4, ""

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/log/ap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v9, "security-sdk-token"

    const-string v10, "3.0.2.20151027"

    const-string v6, "tid"

    invoke-static {v0, v6, v4}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "utdid"

    invoke-static {v0, v6, v4}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v6, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v6}, Lh/a;->b(Landroid/content/Context;)Lh/b;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lh/b;->a()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto :goto_0

    :cond_1
    move-object v13, v4

    :goto_0
    new-instance v14, Lcom/alipay/apmobilesecuritysdk/b/a;

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/alipay/apmobilesecuritysdk/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".log"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/alipay/apmobilesecuritysdk/b/a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lt/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "userId"

    invoke-static {v0, v6, v4}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v15, Ljava/util/Date;

    const/16 v9, 0x73

    const/16 v10, 0xa

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Ljava/util/Date;-><init>(IIIIII)V

    new-instance v8, Ljava/util/Date;

    const/16 v17, 0x73

    const/16 v18, 0xa

    const/16 v19, 0xb

    const/16 v20, 0x17

    const/16 v21, 0x3b

    const/16 v22, 0x3b

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v15}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    new-instance v8, Ljava/util/Date;

    const/16 v13, 0x73

    const/16 v14, 0xb

    const/16 v15, 0xb

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v18}, Ljava/util/Date;-><init>(IIIIII)V

    new-instance v9, Ljava/util/Date;

    const/16 v20, 0x73

    const/16 v21, 0xb

    const/16 v22, 0xc

    const/16 v23, 0x17

    const/16 v24, 0x3b

    const/16 v25, 0x3b

    move-object/from16 v19, v9

    invoke-direct/range {v19 .. v25}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v7}, Lh/a;->b(Landroid/content/Context;)Lh/b;

    move-result-object v7

    if-nez v7, :cond_5

    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v7}, Lh/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    invoke-static {}, Lf/e;->c()V

    iget-object v7, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v7, v0}, Lf/e;->d(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[*]currentDeviceInfoHash = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lt/b;->b(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v8}, Lh/a;->b(Landroid/content/Context;)Lh/b;

    move-result-object v8

    if-nez v8, :cond_8

    const-string v7, "[*] LocalData = null"

    :goto_5
    invoke-static {v7}, Lt/b;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Lh/b;->b()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[*]storedDeviceInfoHash = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lt/b;->b(Ljava/lang/String;)V

    invoke-static {v7, v9}, Lt/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v11

    if-eqz v7, :cond_9

    const-string v7, "[*]DeviceInfo Changed."

    goto :goto_5

    :cond_9
    iget-object v7, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v7}, Lh/f;->c(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "[*]Token is out of date."

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Lh/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "[*]Token is empty."

    goto :goto_5

    :goto_6
    if-eqz v7, :cond_12

    invoke-direct/range {p0 .. p1}, Lcom/alipay/apmobilesecuritysdk/a/a;->g(Ljava/util/Map;)Lr/c;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v8, v7, Lr/c;->c:Ljava/lang/String;

    invoke-static {v8}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-boolean v8, v7, Lr/b;->a:Z

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_10

    iget-object v8, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    iget-object v9, v7, Lr/c;->h:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v8, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v12, "log_switch"

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_c
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->e()Ljava/lang/String;

    move-result-object v3

    const-string v9, "0"

    invoke-static {v3, v9}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-interface {v8, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_d
    :try_start_2
    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lh/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v7, Lr/c;->i:Ljava/lang/String;

    invoke-static {v8}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v7, Lr/c;->i:Ljava/lang/String;

    invoke-static {v3, v8}, Lt/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v7, Lr/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a;->e()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {v11}, Lcom/alipay/apmobilesecuritysdk/a/a;->d(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v8, Lcom/alipay/apmobilesecuritysdk/a/b;

    invoke-direct {v8, v1, v6, v3, v4}, Lcom/alipay/apmobilesecuritysdk/a/b;-><init>(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_e
    :try_start_4
    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lf/e;->d(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lh/b;

    invoke-direct {v3, v7, v0}, Lh/b;-><init>(Lr/c;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lh/a;->c(Landroid/content/Context;Lh/b;)V

    invoke-static {v3}, Lh/f;->b(Lh/b;)V

    invoke-static {v3}, Le/a;->c(Lh/b;)V

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vkey_valid"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_f
    :try_start_6
    iget-object v0, v7, Lr/c;->d:Ljava/lang/String;

    goto :goto_b

    :cond_10
    if-eqz v7, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Server error, result:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lr/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lt/d;->d(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    const-string v0, "Server error, response is null"

    goto :goto_9

    :cond_12
    :goto_a
    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    move-object v4, v0

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/d;->a(Landroid/content/Context;)Ls/a;

    move-result-object v0

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/b/b;

    invoke-direct {v2, v5, v0}, Lcom/alipay/apmobilesecuritysdk/b/b;-><init>(Ljava/lang/String;Ls/a;)V

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/alipay/apmobilesecuritysdk/b/b;->c(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lt/d;->c(Ljava/lang/Throwable;)V

    :goto_c
    return-object v4
.end method
