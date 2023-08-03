.class public Lcom/google/mlkit/common/sdkinternal/k;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/mlkit/common/sdkinternal/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Lcom/google/firebase/components/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/k;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/mlkit/common/sdkinternal/k;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MlKitContext has not been initialized"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/k;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Landroid/content/Context;Ljava/util/List;)Lcom/google/mlkit/common/sdkinternal/k;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/k;",
            ">;)",
            "Lcom/google/mlkit/common/sdkinternal/k;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "MlKitContext is already initialized"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/k;

    invoke-direct {v1}, Lcom/google/mlkit/common/sdkinternal/k;-><init>()V

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    .line 2
    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/k;->g(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 3
    new-instance v4, Lcom/google/firebase/components/q;

    sget-object v5, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/firebase/components/f;

    const-class v7, Landroid/content/Context;

    new-array v8, v3, [Ljava/lang/Class;

    .line 4
    invoke-static {p0, v7, v8}, Lcom/google/firebase/components/f;->q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object p0

    aput-object p0, v6, v3

    const-class p0, Lcom/google/mlkit/common/sdkinternal/k;

    new-array v3, v3, [Ljava/lang/Class;

    .line 5
    invoke-static {v1, p0, v3}, Lcom/google/firebase/components/f;->q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-direct {v4, v5, p1, v6}, Lcom/google/firebase/components/q;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/f;)V

    iput-object v4, v1, Lcom/google/mlkit/common/sdkinternal/k;->a:Lcom/google/firebase/components/q;

    .line 6
    invoke-virtual {v4, v2}, Lcom/google/firebase/components/q;->j(Z)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    .line 7
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/k;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/k;->f(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/k;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/k;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "MlKitContext is already initialized"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/k;

    invoke-direct {v1}, Lcom/google/mlkit/common/sdkinternal/k;-><init>()V

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    .line 2
    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/k;->g(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-class v4, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    .line 3
    invoke-static {p0, v4}, Lcom/google/firebase/components/i;->c(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/i;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lcom/google/firebase/components/i;->b()Ljava/util/List;

    move-result-object v4

    .line 5
    sget-object v5, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v5}, Lcom/google/firebase/components/q;->f(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/q$b;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v4}, Lcom/google/firebase/components/q$b;->c(Ljava/util/Collection;)Lcom/google/firebase/components/q$b;

    move-result-object v4

    const-class v5, Landroid/content/Context;

    new-array v6, v3, [Ljava/lang/Class;

    .line 8
    invoke-static {p0, v5, v6}, Lcom/google/firebase/components/f;->q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/google/firebase/components/q$b;->a(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/q$b;

    move-result-object p0

    const-class v4, Lcom/google/mlkit/common/sdkinternal/k;

    new-array v3, v3, [Ljava/lang/Class;

    .line 9
    invoke-static {v1, v4, v3}, Lcom/google/firebase/components/f;->q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/components/q$b;->a(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/q$b;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/components/q$b;->d()Lcom/google/firebase/components/q;

    move-result-object p0

    iput-object p0, v1, Lcom/google/mlkit/common/sdkinternal/k;->a:Lcom/google/firebase/components/q;

    .line 11
    invoke-virtual {p0, v2}, Lcom/google/firebase/components/q;->j(Z)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    .line 12
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static g(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/k;->c:Lcom/google/mlkit/common/sdkinternal/k;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MlKitContext has been deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/k;->a:Lcom/google/firebase/components/q;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/k;->a:Lcom/google/firebase/components/q;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/components/q;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
