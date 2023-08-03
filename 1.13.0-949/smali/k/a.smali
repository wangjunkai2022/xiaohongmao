.class public Lk/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lk/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "utdid"

    const-string v3, "utdid"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tid"

    const-string v3, "tid"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    const-string v3, "userId"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lt/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/face/c;->g(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/c;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lcom/alipay/apmobilesecuritysdk/face/c;->i(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/c$a;)V

    invoke-static {}, Lh/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lh/a;->b(Landroid/content/Context;)Lh/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lh/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lh/b;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-static {p0}, Le/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt/a;->e(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-object p1

    :cond_2
    :try_start_3
    invoke-static {p0}, Li/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
