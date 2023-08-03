.class public Lcom/google/mlkit/common/sdkinternal/model/a;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/model/a$a;
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# static fields
.field private static final h:Lcom/google/android/gms/common/internal/k;

.field private static final i:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "CustomModelLoader.class"
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/mlkit/common/sdkinternal/k;

.field private final b:Lcom/google/mlkit/common/model/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/mlkit/common/model/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/mlkit/common/sdkinternal/model/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/google/mlkit/common/sdkinternal/model/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/mlkit_common/kb;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/k;

    const-string v1, "CustomModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/a;->h:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/a;->i:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/c;Lcom/google/mlkit/common/model/a;)V
    .locals 7
    .param p1    # Lcom/google/mlkit/common/sdkinternal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/model/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/common/model/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    new-instance v6, Lcom/google/mlkit/common/sdkinternal/model/g;

    new-instance v4, Lcom/google/mlkit/common/sdkinternal/model/d;

    invoke-direct {v4, p1}, Lcom/google/mlkit/common/sdkinternal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    new-instance v5, Lcom/google/mlkit/common/internal/model/d;

    .line 2
    invoke-virtual {p3}, Lcom/google/mlkit/common/model/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p1, v0}, Lcom/google/mlkit/common/internal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/model/g;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/h;)V

    iput-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->e:Lcom/google/mlkit/common/sdkinternal/model/g;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/d;

    invoke-direct {v0, p1}, Lcom/google/mlkit/common/sdkinternal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    const-class v1, Lcom/google/mlkit/common/sdkinternal/model/e;

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/mlkit/common/sdkinternal/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/model/e;

    .line 4
    invoke-static {p1, p3, v0, v6, v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->g(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/g;Lcom/google/mlkit/common/sdkinternal/model/e;)Lcom/google/mlkit/common/sdkinternal/model/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->g:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->e:Lcom/google/mlkit/common/sdkinternal/model/g;

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->a:Lcom/google/mlkit/common/sdkinternal/k;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->b:Lcom/google/mlkit/common/model/c;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->c:Lcom/google/mlkit/common/model/a;

    const-string p1, "common"

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/vb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/kb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->f:Lcom/google/android/gms/internal/mlkit_common/kb;

    return-void
.end method

.method public static declared-synchronized e(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/c;Lcom/google/mlkit/common/model/a;)Lcom/google/mlkit/common/sdkinternal/model/a;
    .locals 4
    .param p0    # Lcom/google/mlkit/common/sdkinternal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/mlkit/common/model/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/model/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/a;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/model/c;

    invoke-virtual {v1}, Lcom/google/mlkit/common/model/c;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/d;->f()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    sget-object v2, Lcom/google/mlkit/common/sdkinternal/model/a;->i:Ljava/util/Map;

    .line 4
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/mlkit/common/sdkinternal/model/a;

    .line 5
    invoke-direct {v3, p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/a;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/c;Lcom/google/mlkit/common/model/a;)V

    .line 6
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final g()Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->e:Lcom/google/mlkit/common/sdkinternal/model/g;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/model/g;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/g;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/a;->h:Lcom/google/android/gms/common/internal/k;

    const-string v1, "CustomModelLoader"

    const-string v2, "No existing model file"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    .line 3
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private final h()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/model/f;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    return-void
.end method

.method private static final i(Ljava/io/File;)Lcom/google/mlkit/common/model/c;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/mlkit/common/model/c$a;

    invoke-direct {v0}, Lcom/google/mlkit/common/model/c$a;-><init>()V

    new-instance v1, Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v2, "manifest.json"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/mlkit/common/model/c$a;->c(Ljava/lang/String;)Lcom/google/mlkit/common/model/c$a;

    .line 5
    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c$a;->a()Lcom/google/mlkit/common/model/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/mlkit/common/model/c$a;

    invoke-direct {v0}, Lcom/google/mlkit/common/model/c$a;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/mlkit/common/model/c$a;->b(Ljava/lang/String;)Lcom/google/mlkit/common/model/c$a;

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c$a;->a()Lcom/google/mlkit/common/model/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/mlkit/common/model/c;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/a;->h:Lcom/google/android/gms/common/internal/k;

    const-string v1, "CustomModelLoader"

    const-string v2, "Try to get the latest existing model file."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->g()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/model/a;->i(Ljava/io/File;)Lcom/google/mlkit/common/model/c;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/google/mlkit/common/model/c;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/a;->h:Lcom/google/android/gms/common/internal/k;

    const-string v1, "CustomModelLoader"

    const-string v2, "Try to get newly downloaded model file."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/model/f;

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->c()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 3
    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/model/f;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 5
    invoke-virtual {v4}, Lcom/google/mlkit/common/sdkinternal/model/f;->e()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->h()V

    goto :goto_1

    :cond_1
    const-string v5, "Download Status code: "

    const-string v6, "CustomModelLoader"

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/f;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "CustomModelLoader"

    const-string v5, "Moved the downloaded model to private folder successfully: "

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/mlkit/common/sdkinternal/model/f;->l(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->f:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v2

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->c:Lcom/google/mlkit/common/model/a;

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/common/model/d;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->d:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 17
    invoke-virtual {v6, v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->f(Ljava/lang/Long;)I

    move-result v1

    .line 18
    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_common/kb;->e(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;ZI)V

    .line 19
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->h()V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "CustomModelLoader"

    const-string v2, "No new model is downloading."

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_6

    monitor-exit p0

    return-object v3

    .line 22
    :cond_6
    :try_start_1
    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/model/a;->i(Ljava/io/File;)Lcom/google/mlkit/common/model/c;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->g()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->e:Lcom/google/mlkit/common/sdkinternal/model/g;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/model/g;

    invoke-virtual {v1, v0}, Lcom/google/mlkit/common/sdkinternal/model/g;->e(Ljava/io/File;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->a:Lcom/google/mlkit/common/sdkinternal/k;

    .line 3
    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/p;->g(Lcom/google/mlkit/common/sdkinternal/k;)Lcom/google/mlkit/common/sdkinternal/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->c:Lcom/google/mlkit/common/model/a;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/model/d;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/p;->c(Lcom/google/mlkit/common/model/d;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/google/mlkit/common/model/c;)V
    .locals 3
    .param p1    # Lcom/google/mlkit/common/model/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/mlkit/common/model/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->e:Lcom/google/mlkit/common/sdkinternal/model/g;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/model/g;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/g;->f(Ljava/io/File;)Z

    move-result v0

    const-string v1, "CustomModelLoader"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/a;->h:Lcom/google/android/gms/common/internal/k;

    const-string v2, "All old models are deleted."

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->e:Lcom/google/mlkit/common/sdkinternal/model/g;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/mlkit/common/sdkinternal/model/g;->c(Ljava/io/File;)Ljava/io/File;

    return-void

    :cond_0
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/a;->h:Lcom/google/android/gms/common/internal/k;

    const-string v0, "Failed to delete old models"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/internal/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized f(Lcom/google/mlkit/common/sdkinternal/model/a$a;)V
    .locals 2
    .param p1    # Lcom/google/mlkit/common/sdkinternal/model/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->b:Lcom/google/mlkit/common/model/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->b()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_6

    .line 3
    :cond_2
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/a$a;->a(Lcom/google/mlkit/common/model/c;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->c:Lcom/google/mlkit/common/model/a;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->c()V

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/a;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/mlkit/common/sdkinternal/model/a$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->c:Lcom/google/mlkit/common/model/a;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->g:Z

    if-eqz v1, :cond_5

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/model/c;

    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/model/a;->d(Lcom/google/mlkit/common/model/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/common/sdkinternal/model/a;->g:Z

    .line 8
    :cond_5
    invoke-interface {p1}, Lcom/google/mlkit/common/sdkinternal/model/a$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Model is not available."

    const/16 v1, 0xe

    .line 9
    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
