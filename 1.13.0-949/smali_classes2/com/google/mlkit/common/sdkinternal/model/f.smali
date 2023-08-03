.class public Lcom/google/mlkit/common/sdkinternal/model/f;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field private static final m:Lcom/google/android/gms/common/internal/k;

.field private static final n:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RemoteModelDownloadManager.class"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/util/LongSparseArray;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Landroid/util/LongSparseArray;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final c:Lcom/google/mlkit/common/sdkinternal/k;

.field private final d:Landroid/app/DownloadManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/google/mlkit/common/model/d;

.field private final f:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private final g:Lcom/google/android/gms/internal/mlkit_common/kb;

.field private final h:Lcom/google/mlkit/common/sdkinternal/p;

.field private final i:Lcom/google/mlkit/common/sdkinternal/model/d;

.field private final j:Lcom/google/mlkit/common/sdkinternal/model/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lcom/google/mlkit/common/sdkinternal/model/g;

.field private l:Lcom/google/mlkit/common/model/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/k;

    const-string v1, "ModelDownloadManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/f;->n:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/g;Lcom/google/mlkit/common/sdkinternal/model/e;Lcom/google/android/gms/internal/mlkit_common/kb;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/common/sdkinternal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/common/sdkinternal/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/mlkit/common/sdkinternal/model/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/mlkit/common/sdkinternal/model/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/mlkit_common/kb;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->a:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->b:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->c:Lcom/google/mlkit/common/sdkinternal/k;

    .line 3
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/d;->e()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->f:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/k;->b()Landroid/content/Context;

    move-result-object p2

    const-string v0, "download"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/DownloadManager;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;

    iput-object p6, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string p6, "ModelDownloadManager"

    const-string v0, "Download manager service is not available in the service."

    .line 5
    invoke-virtual {p2, p6, v0}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->i:Lcom/google/mlkit/common/sdkinternal/model/d;

    .line 6
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/p;->g(Lcom/google/mlkit/common/sdkinternal/k;)Lcom/google/mlkit/common/sdkinternal/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->j:Lcom/google/mlkit/common/sdkinternal/model/e;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->k:Lcom/google/mlkit/common/sdkinternal/model/g;

    return-void
.end method

.method private final declared-synchronized A(Lcom/google/mlkit/common/sdkinternal/m;Lcom/google/mlkit/common/model/b;)Ljava/lang/Long;
    .locals 11
    .param p1    # Lcom/google/mlkit/common/sdkinternal/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/model/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadConditions can not be null"

    .line 1
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/p;->d(Lcom/google/mlkit/common/model/d;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->e()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->e()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2}, Lcom/google/mlkit/common/model/d;->e()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzg:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_common/kb;->f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V

    :cond_1
    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string p2, "ModelDownloadManager"

    const-string v0, "New model is already in downloading, do nothing."

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v1, "ModelDownloadManager"

    const-string v2, "Need to download a new model."

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    .line 14
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/m;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->i:Lcom/google/mlkit/common/sdkinternal/model/d;

    .line 15
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/m;->c()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v3, v4}, Lcom/google/mlkit/common/sdkinternal/model/d;->i(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/ModelType;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ModelDownloadManager"

    const-string v3, "Model update is enabled and have a previous downloaded model, use download condition"

    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v5

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    const/4 v8, 0x0

    .line 19
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/m;->c()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzk:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 20
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/mlkit_common/kb;->f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_4

    .line 21
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/b;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setRequiresCharging(Z)Landroid/app/DownloadManager$Request;

    .line 22
    :cond_4
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/b;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    .line 23
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 24
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/google/mlkit/common/sdkinternal/model/f;->z(Landroid/app/DownloadManager$Request;Lcom/google/mlkit/common/sdkinternal/m;)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized g(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/g;Lcom/google/mlkit/common/sdkinternal/model/e;)Lcom/google/mlkit/common/sdkinternal/model/f;
    .locals 10
    .param p0    # Lcom/google/mlkit/common/sdkinternal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/mlkit/common/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/sdkinternal/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/common/sdkinternal/model/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/mlkit/common/sdkinternal/model/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/f;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/model/f;

    const-string v3, "common"

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_common/vb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/kb;

    move-result-object v9

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/mlkit/common/sdkinternal/model/f;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/g;Lcom/google/mlkit/common/sdkinternal/model/e;Lcom/google/android/gms/internal/mlkit_common/kb;)V

    .line 3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/model/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static bridge synthetic m(Lcom/google/mlkit/common/sdkinternal/model/f;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->a:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/google/mlkit/common/sdkinternal/model/f;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->b:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic o()Lcom/google/android/gms/common/internal/k;
    .locals 1

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    return-object v0
.end method

.method static bridge synthetic p(Lcom/google/mlkit/common/sdkinternal/model/f;Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/model/f;->x(Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic q(Lcom/google/mlkit/common/sdkinternal/model/f;)Lcom/google/mlkit/common/model/d;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/google/mlkit/common/sdkinternal/model/f;)Lcom/google/mlkit/common/sdkinternal/k;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->c:Lcom/google/mlkit/common/sdkinternal/k;

    return-object p0
.end method

.method static bridge synthetic t(Lcom/google/mlkit/common/sdkinternal/model/f;)Lcom/google/android/gms/internal/mlkit_common/kb;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    return-object p0
.end method

.method private final v(J)Lcom/google/android/gms/tasks/k;
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/f;->y(J)Lcom/google/mlkit/common/sdkinternal/model/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->c:Lcom/google/mlkit/common/sdkinternal/k;

    .line 2
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/k;->b()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 3
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->b()Lcom/google/mlkit/common/sdkinternal/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/i;->a()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/f;->w(J)Lcom/google/android/gms/tasks/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method private final declared-synchronized w(J)Lcom/google/android/gms/tasks/l;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/l;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/l;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->b:Landroid/util/LongSparseArray;

    .line 3
    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final x(Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;
    .locals 6
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    :cond_1
    :goto_0
    const/16 p1, 0xd

    const-string v0, "Model downloading failed"

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "reason"

    .line 4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x3ee

    if-ne v0, v1, :cond_2

    const/16 p1, 0x65

    const-string v0, "Model downloading failed due to insufficient space on the device."

    goto :goto_1

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model downloading failed due to error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from Android DownloadManager"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_3
    :goto_1
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    .line 8
    invoke-direct {v1, v0, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private final declared-synchronized y(J)Lcom/google/mlkit/common/sdkinternal/model/p;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/model/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/p;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/f;->w(J)Lcom/google/android/gms/tasks/l;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/common/sdkinternal/model/p;-><init>(Lcom/google/mlkit/common/sdkinternal/model/f;JLcom/google/android/gms/tasks/l;Lcom/google/mlkit/common/sdkinternal/model/o;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->a:Landroid/util/LongSparseArray;

    .line 3
    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized z(Landroid/app/DownloadManager$Request;Lcom/google/mlkit/common/sdkinternal/m;)Ljava/lang/Long;
    .locals 9
    .param p1    # Landroid/app/DownloadManager$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/sdkinternal/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    sget-object p1, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule a new downloading task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ModelDownloadManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/mlkit/common/sdkinternal/p;->m(JLcom/google/mlkit/common/sdkinternal/m;)V

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v3

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    const/4 v6, 0x0

    .line 5
    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/m;->c()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzf:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 6
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_common/kb;->f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/k;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    sget-object v5, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzb:Lcom/google/android/gms/internal/mlkit_common/zziz;

    const/4 v4, 0x0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_common/kb;->f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->s()Lcom/google/mlkit/common/sdkinternal/m;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_0
    const/16 v3, 0xd

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->e()Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->c()Ljava/lang/Long;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->i()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    .line 9
    invoke-direct {p0, v5}, Lcom/google/mlkit/common/sdkinternal/model/f;->x(Ljava/lang/Long;)Lcom/google/mlkit/common/MlKitException;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/tasks/n;->f(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    :cond_2
    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v7

    iget-object v8, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    const/4 v10, 0x0

    .line 17
    invoke-virtual {v8}, Lcom/google/mlkit/common/model/d;->e()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzg:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 18
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/mlkit_common/kb;->f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V

    .line 19
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->v(J)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->l:Lcom/google/mlkit/common/model/b;

    .line 21
    invoke-direct {p0, v1, v0}, Lcom/google/mlkit/common/sdkinternal/model/f;->A(Lcom/google/mlkit/common/sdkinternal/m;Lcom/google/mlkit/common/model/b;)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    .line 22
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to schedule the download task"

    .line 23
    invoke-direct {v0, v1, v3, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/n;->f(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0

    .line 24
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->v(J)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_2
    if-eqz v1, :cond_8

    .line 25
    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->l:Lcom/google/mlkit/common/model/b;

    .line 26
    invoke-direct {p0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/f;->A(Lcom/google/mlkit/common/sdkinternal/m;Lcom/google/mlkit/common/model/b;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/f;->v(J)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0

    :cond_7
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v2, "ModelDownloadManager"

    const-string v4, "Didn\'t schedule download for the updated model"

    .line 28
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/tasks/n;->g(Ljava/lang/Object;)Lcom/google/android/gms/tasks/k;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 30
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v2, "Failed to ensure the model is downloaded."

    .line 31
    invoke-direct {v1, v2, v3, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {v1}, Lcom/google/android/gms/tasks/n;->f(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->c()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v1, "ModelDownloadManager"

    const-string v3, "Downloaded file is not found"

    .line 3
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/p;->e(Lcom/google/mlkit/common/model/d;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/p;->d(Lcom/google/mlkit/common/model/d;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/Integer;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->c()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v0, 0x0

    aput-wide v6, v5, v0

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "status"

    .line 4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    .line 5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    monitor-exit p0

    return-object v2

    .line 6
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0x10

    if-eq v0, v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 11
    :goto_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v2

    .line 12
    :goto_2
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_6
    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v0

    const-class v5, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    .line 13
    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 14
    :catch_0
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 15
    :cond_5
    :goto_4
    monitor-exit p0

    return-object v2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Ljava/lang/Long;)I
    .locals 6
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "reason"

    .line 4
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 5
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public h()Z
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "ModelDownloadManager"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->i()Z

    move-result v2
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :catch_0
    sget-object v2, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v3, "Failed to check if the model exist locally."

    .line 3
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->c()Ljava/lang/Long;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->e()Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Download Status code: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    return v4

    :cond_2
    const/16 v0, 0x8

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, v3}, Lcom/google/mlkit/common/sdkinternal/model/f;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v4

    .line 11
    :cond_4
    :goto_1
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v2, "No new model is downloading."

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    return v4
.end method

.method public i()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->i:Lcom/google/mlkit/common/sdkinternal/model/d;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    invoke-virtual {v1}, Lcom/google/mlkit/common/model/d;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->f:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/d;->i(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/ModelType;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized j()V
    .locals 6
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
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->c()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v2, "Cancel or remove existing downloading task: "

    const-string v3, "ModelDownloadManager"

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->d:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->e()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->i:Lcom/google/mlkit/common/sdkinternal/model/d;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 6
    invoke-virtual {v1}, Lcom/google/mlkit/common/model/d;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    invoke-virtual {v2}, Lcom/google/mlkit/common/model/d;->e()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/d;->c(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/ModelType;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/p;->a(Lcom/google/mlkit/common/model/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k(Lcom/google/mlkit/common/model/b;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/common/model/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    const-string v0, "DownloadConditions can not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->l:Lcom/google/mlkit/common/model/b;

    return-void
.end method

.method public declared-synchronized l(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    invoke-virtual {v0, v1, p1}, Lcom/google/mlkit/common/sdkinternal/p;->o(Lcom/google/mlkit/common/model/d;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized s()Lcom/google/mlkit/common/sdkinternal/m;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v3}, Lcom/google/mlkit/common/model/d;->e()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzj:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_common/kb;->f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V

    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->j:Lcom/google/mlkit/common/sdkinternal/model/e;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 5
    invoke-interface {v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/e;->a(Lcom/google/mlkit/common/model/d;)Lcom/google/mlkit/common/sdkinternal/m;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->c:Lcom/google/mlkit/common/sdkinternal/k;

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 6
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/m;->a()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v3}, Lcom/google/mlkit/common/sdkinternal/p;->g(Lcom/google/mlkit/common/sdkinternal/k;)Lcom/google/mlkit/common/sdkinternal/p;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v4}, Lcom/google/mlkit/common/sdkinternal/p;->f(Lcom/google/mlkit/common/model/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/k;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/mlkit/common/sdkinternal/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v6}, Lcom/google/mlkit/common/sdkinternal/p;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v4, "ModelDownloadManager"

    const-string v6, "The model is incompatible with TFLite and the app is not upgraded, do not download"

    .line 11
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/common/internal/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->h:Lcom/google/mlkit/common/sdkinternal/p;

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 12
    invoke-virtual {v4, v6}, Lcom/google/mlkit/common/sdkinternal/p;->c(Lcom/google/mlkit/common/model/d;)V

    :cond_3
    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->c:Lcom/google/mlkit/common/sdkinternal/k;

    iget-object v6, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 13
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/m;->a()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/p;->g(Lcom/google/mlkit/common/sdkinternal/k;)Lcom/google/mlkit/common/sdkinternal/p;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/mlkit/common/sdkinternal/p;->h(Lcom/google/mlkit/common/model/d;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v4, v7

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v1

    :cond_5
    move v5, v4

    :goto_1
    if-eqz v0, :cond_6

    xor-int v0, v5, v3

    if-eqz v0, :cond_6

    monitor-exit p0

    return-object v2

    :cond_6
    :try_start_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 16
    invoke-virtual {v1}, Lcom/google/mlkit/common/model/d;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is incompatible with TFLite runtime"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Please include com.google.mlkit:linkfirebase sdk as your dependency when you try to download from Firebase."

    const/16 v2, 0xe

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/f;->m:Lcom/google/android/gms/common/internal/k;

    const-string v1, "ModelDownloadManager"

    const-string v2, "Model downloaded successfully"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->g:Lcom/google/android/gms/internal/mlkit_common/kb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/nb;->g()Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object v4

    iget-object v5, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    iget-object v8, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->f:Lcom/google/mlkit/common/sdkinternal/ModelType;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzh:Lcom/google/android/gms/internal/mlkit_common/zziz;

    const/4 v7, 0x1

    .line 3
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_common/kb;->f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v3, "moving downloaded model from external storage to private folder."

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->k:Lcom/google/mlkit/common/sdkinternal/model/g;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/model/f;->e:Lcom/google/mlkit/common/model/d;

    .line 7
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/mlkit/common/sdkinternal/model/g;->b(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lcom/google/mlkit/common/model/d;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/model/f;->j()V

    .line 9
    throw p1
.end method
