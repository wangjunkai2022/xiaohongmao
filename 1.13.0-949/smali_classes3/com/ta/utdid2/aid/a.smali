.class public Lcom/ta/utdid2/aid/a;
.super Ljava/lang/Object;
.source "AidManager.java"


# static fields
.field private static b:Lcom/ta/utdid2/aid/a; = null

.field private static final c:Ljava/lang/String; = "com.ta.utdid2.aid.a"

.field private static final d:I = 0x1


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/ta/utdid2/aid/a;->c:Ljava/lang/String;

    const-string p2, "no context!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v1, ""

    .line 4
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/aid/b;->f(Landroid/content/Context;)Lcom/ta/utdid2/aid/b;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ta/utdid2/aid/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ta/utdid2/aid/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {p3, p1, v1, p2}, Lcom/ta/utdid2/aid/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/ta/utdid2/aid/a;
    .locals 2

    const-class v0, Lcom/ta/utdid2/aid/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/aid/a;->b:Lcom/ta/utdid2/aid/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ta/utdid2/aid/a;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/aid/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/aid/a;->b:Lcom/ta/utdid2/aid/a;

    .line 3
    :cond_0
    sget-object p0, Lcom/ta/utdid2/aid/a;->b:Lcom/ta/utdid2/aid/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/aid/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/ta/utdid2/aid/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/ta/utdid2/android/utils/k;->a(JI)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/ta/utdid2/aid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 6
    :cond_3
    :goto_0
    sget-object p3, Lcom/ta/utdid2/aid/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; has appName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; has token:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly5/a;)V
    .locals 8

    if-nez p4, :cond_0

    .line 1
    sget-object p1, Lcom/ta/utdid2/aid/a;->c:Ljava/lang/String;

    const-string p2, "callback is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/aid/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v6}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/aid/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/ta/utdid2/android/utils/k;->a(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x3e9

    .line 5
    invoke-interface {p4, p1, v6}, Ly5/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/aid/b;->f(Landroid/content/Context;)Lcom/ta/utdid2/aid/b;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/ta/utdid2/aid/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly5/a;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x3eb

    .line 9
    invoke-interface {p4, p1, v6}, Ly5/a;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    .line 10
    :cond_4
    :goto_1
    sget-object p3, Lcom/ta/utdid2/aid/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ta/utdid2/aid/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; callback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; has appName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; has token:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3ea

    const-string p2, ""

    .line 11
    invoke-interface {p4, p1, p2}, Ly5/a;->a(ILjava/lang/String;)V

    return-void
.end method
