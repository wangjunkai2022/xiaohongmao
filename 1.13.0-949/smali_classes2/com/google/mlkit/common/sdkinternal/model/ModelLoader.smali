.class public Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;,
        Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;,
        Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# static fields
.field private static final e:Lcom/google/android/gms/common/internal/k;


# instance fields
.field public final a:Lcom/google/mlkit/common/sdkinternal/model/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end field

.field public final b:Lcom/google/mlkit/common/sdkinternal/model/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end field

.field protected c:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end field

.field private final d:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/k;

    const-string v1, "ModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->e:Lcom/google/android/gms/common/internal/k;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/model/i;Lcom/google/mlkit/common/sdkinternal/model/c;Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;)V
    .locals 2
    .param p1    # Lcom/google/mlkit/common/sdkinternal/model/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/sdkinternal/model/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->NO_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "At least one of RemoteModelLoader or LocalModelLoader must be non-null."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->a:Lcom/google/mlkit/common/sdkinternal/model/i;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->d:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;

    return-void
.end method

.method private final c()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/c;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    .line 2
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/c;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    .line 4
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/c;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    .line 5
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/c;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    .line 6
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/c;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c;->c()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    .line 7
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/c;->a()Lcom/google/mlkit/common/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/c;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->a:Lcom/google/mlkit/common/sdkinternal/model/i;

    if-nez v0, :cond_3

    const-string v0, "unspecified"

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/i;->b()Lcom/google/mlkit/common/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/model/d;->f()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "Local model path: %s. Remote model name: %s. "

    .line 10
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized d(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->b:Lcom/google/mlkit/common/sdkinternal/model/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/c;->b()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;->a(Ljava/nio/MappedByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->e:Lcom/google/android/gms/common/internal/k;

    const-string p2, "ModelLoader"

    const-string v0, "Local model source is loaded successfully"

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    const/16 v0, 0x12

    .line 4
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized e(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->a:Lcom/google/mlkit/common/sdkinternal/model/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/model/i;->c()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_2
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;->a(Ljava/nio/MappedByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->e:Lcom/google/android/gms/common/internal/k;

    const-string p2, "ModelLoader"

    const-string v0, "Remote model source is loaded successfully"

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    const/16 v0, 0x13

    .line 4
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    throw p1

    .line 6
    :cond_0
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->e:Lcom/google/android/gms/common/internal/k;

    const-string v0, "ModelLoader"

    const-string v1, "Remote model source can NOT be loaded, try local model."

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x15

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->e:Lcom/google/android/gms/common/internal/k;

    const-string v1, "ModelLoader"

    const-string v2, "Remote model source can NOT be loaded, try local model."

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->REMOTE_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;)V
    .locals 5
    .param p1    # Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->e(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;Ljava/util/List;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v4, v3

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->d:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;->a(Ljava/util/List;)V

    .line 4
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->REMOTE_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->d(Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$a;Ljava/util/List;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->d:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;

    .line 6
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;->a(Ljava/util/List;)V

    .line 7
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->LOCAL_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/16 p1, 0x11

    .line 8
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->d:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;

    .line 9
    invoke-interface {p1, v0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$b;->a(Ljava/util/List;)V

    .line 10
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;->NO_MODEL_LOADED:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c:Lcom/google/mlkit/common/sdkinternal/model/ModelLoader$ModelLoadingState;

    const/16 p1, 0xe

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    .line 11
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v2, "Local model load failed with the model options: "

    .line 12
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 13
    :cond_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Cannot load any model with the model options: "

    .line 14
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Remote model load failed with the model options: "

    .line 16
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/model/ModelLoader;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v4}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
