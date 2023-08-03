.class public Lcom/google/mlkit/common/sdkinternal/model/i;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field private static final h:Lcom/google/android/gms/common/internal/k;

.field private static final i:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RemoteModelLoader.class"
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/mlkit/common/sdkinternal/k;

.field private final b:Lcom/google/mlkit/common/model/d;

.field private final c:Lcom/google/mlkit/common/sdkinternal/model/f;

.field private final d:Lcom/google/mlkit/common/sdkinternal/model/g;

.field private final e:Lcom/google/mlkit/common/sdkinternal/model/j;

.field private final f:Lcom/google/android/gms/internal/mlkit_common/kb;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/k;

    const-string v1, "RemoteModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/i;->h:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/i;->i:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/j;Lcom/google/mlkit/common/sdkinternal/model/h;)V
    .locals 7
    .param p1    # Lcom/google/mlkit/common/sdkinternal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/mlkit/common/sdkinternal/model/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/mlkit/common/sdkinternal/model/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/mlkit/common/sdkinternal/model/g;

    new-instance v4, Lcom/google/mlkit/common/sdkinternal/model/d;

    invoke-direct {v4, p1}, Lcom/google/mlkit/common/sdkinternal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/model/g;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/h;)V

    iput-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->d:Lcom/google/mlkit/common/sdkinternal/model/g;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->g:Z

    new-instance p3, Lcom/google/mlkit/common/sdkinternal/model/d;

    invoke-direct {p3, p1}, Lcom/google/mlkit/common/sdkinternal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    const-class p5, Lcom/google/mlkit/common/sdkinternal/model/e;

    .line 2
    invoke-virtual {p1, p5}, Lcom/google/mlkit/common/sdkinternal/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/mlkit/common/sdkinternal/model/e;

    .line 3
    invoke-static {p1, p2, p3, v6, p5}, Lcom/google/mlkit/common/sdkinternal/model/f;->g(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/g;Lcom/google/mlkit/common/sdkinternal/model/e;)Lcom/google/mlkit/common/sdkinternal/model/f;

    move-result-object p3

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->e:Lcom/google/mlkit/common/sdkinternal/model/j;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->a:Lcom/google/mlkit/common/sdkinternal/k;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->b:Lcom/google/mlkit/common/model/d;

    const-string p1, "common"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/vb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/kb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->f:Lcom/google/android/gms/internal/mlkit_common/kb;

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/j;Lcom/google/mlkit/common/sdkinternal/model/h;)Lcom/google/mlkit/common/sdkinternal/model/i;
    .locals 10
    .param p0    # Lcom/google/mlkit/common/sdkinternal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/mlkit/common/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/common/sdkinternal/model/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/mlkit/common/sdkinternal/model/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/i;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/d;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/model/i;->i:Ljava/util/Map;

    .line 2
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/mlkit/common/sdkinternal/model/i;

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 3
    invoke-direct/range {v4 .. v9}, Lcom/google/mlkit/common/sdkinternal/model/i;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/j;Lcom/google/mlkit/common/sdkinternal/model/h;)V

    .line 4
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/model/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final d(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->e:Lcom/google/mlkit/common/sdkinternal/model/j;

    invoke-interface {v0, p1}, Lcom/google/mlkit/common/sdkinternal/model/j;->a(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private final e(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/mlkit/common/sdkinternal/model/i;->d(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->d:Lcom/google/mlkit/common/sdkinternal/model/g;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/mlkit/common/sdkinternal/model/g;->e(Ljava/io/File;)V

    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const/16 v1, 0xe

    const-string v2, "Failed to load newly downloaded model."

    .line 3
    invoke-direct {p1, v2, v1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public b()Lcom/google/mlkit/common/model/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->b:Lcom/google/mlkit/common/model/d;

    return-object v0
.end method

.method public declared-synchronized c()Ljava/nio/MappedByteBuffer;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
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
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/i;->h:Lcom/google/android/gms/common/internal/k;

    const-string v1, "RemoteModelLoader"

    const-string v2, "Try to load newly downloaded model file."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->g:Z

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 2
    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/model/f;->c()Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 3
    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/model/f;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 5
    invoke-virtual {v6}, Lcom/google/mlkit/common/sdkinternal/model/f;->e()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 6
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    goto/16 :goto_1

    :cond_1
    const-string v7, "Download Status code: "

    const-string v8, "RemoteModelLoader"

    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0, v8, v7}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/mlkit/common/sdkinternal/model/f;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/mlkit/common/sdkinternal/model/i;->e(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    const-string v7, "RemoteModelLoader"

    const-string v8, "Moved the downloaded model to private folder successfully: "

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 14
    invoke-virtual {v7, v3}, Lcom/google/mlkit/common/sdkinternal/model/f;->l(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->d:Lcom/google/mlkit/common/sdkinternal/model/g;

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/g;->f(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "RemoteModelLoader"

    const-string v3, "All old models are deleted."

    .line 16
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->d:Lcom/google/mlkit/common/sdkinternal/model/g;

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/g;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 18
    invoke-direct {p0, v1}, Lcom/google/mlkit/common/sdkinternal/model/i;->e(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->f:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v3

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->b:Lcom/google/mlkit/common/model/d;

    iget-object v7, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 21
    invoke-virtual {v7, v2}, Lcom/google/mlkit/common/sdkinternal/model/f;->f(Ljava/lang/Long;)I

    move-result v2

    .line 22
    invoke-virtual {v1, v3, v6, v4, v2}, Lcom/google/android/gms/internal/mlkit_common/kb;->e(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;ZI)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 23
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "RemoteModelLoader"

    const-string v2, "No new model is downloading."

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->c:Lcom/google/mlkit/common/sdkinternal/model/f;

    .line 25
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    :cond_5
    :goto_1
    move-object v6, v5

    :cond_6
    :goto_2
    if-nez v6, :cond_8

    const-string v1, "RemoteModelLoader"

    const-string v2, "Loading existing model file."

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->d:Lcom/google/mlkit/common/sdkinternal/model/g;

    .line 27
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/model/g;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "RemoteModelLoader"

    const-string v2, "No existing model file"

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 29
    :cond_7
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/mlkit/common/sdkinternal/model/i;->d(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->d:Lcom/google/mlkit/common/sdkinternal/model/g;

    new-instance v3, Ljava/io/File;

    .line 31
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/mlkit/common/sdkinternal/model/g;->e(Ljava/io/File;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->a:Lcom/google/mlkit/common/sdkinternal/k;

    .line 32
    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/p;->g(Lcom/google/mlkit/common/sdkinternal/k;)Lcom/google/mlkit/common/sdkinternal/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->b:Lcom/google/mlkit/common/model/d;

    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/p;->c(Lcom/google/mlkit/common/model/d;)V

    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v2, "Failed to load an already downloaded model."

    const/16 v3, 0xe

    .line 33
    invoke-direct {v1, v2, v3, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 34
    :cond_8
    iput-boolean v4, p0, Lcom/google/mlkit/common/sdkinternal/model/i;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    .line 35
    :goto_3
    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
