.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# static fields
.field private static k:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final l:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/mlkit_language_id_common/ja;

.field private final d:Lcom/google/mlkit/common/sdkinternal/p;

.field private final e:Lcom/google/android/gms/tasks/k;

.field private final f:Lcom/google/android/gms/tasks/k;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->l:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/p;Lcom/google/android/gms/internal/mlkit_language_id_common/ja;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->j:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->d:Lcom/google/mlkit/common/sdkinternal/p;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ja;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/wa;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->g:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->b()Lcom/google/mlkit/common/sdkinternal/i;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/fa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/fa;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;)V

    .line 7
    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/i;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->e:Lcom/google/android/gms/tasks/k;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->b()Lcom/google/mlkit/common/sdkinternal/i;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/ga;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/ga;-><init>(Lcom/google/mlkit/common/sdkinternal/p;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/i;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->f:Lcom/google/android/gms/tasks/k;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->l:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    .line 9
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->h:I

    return-void
.end method

.method private static declared-synchronized f()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->k:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;-><init>()V

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {v1, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 4
    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/d;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->k:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final g()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->e:Lcom/google/android/gms/tasks/k;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->e:Lcom/google/android/gms/tasks/k;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/k;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/r;->a()Lcom/google/android/gms/common/internal/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final synthetic a()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/r;->a()Lcom/google/android/gms/common/internal/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/ba;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ba;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->f()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->h(Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->g(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    .line 8
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->f:Lcom/google/android/gms/tasks/k;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/k;->v()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->f:Lcom/google/android/gms/tasks/k;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/k;->r()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->d:Lcom/google/mlkit/common/sdkinternal/p;

    .line 12
    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/p;->i()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    const/16 p2, 0xa

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->d(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->h:I

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/c9;->k(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_language_id_common/c9;

    .line 16
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ba;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/c9;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ja;

    .line 17
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ja;->a(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lcom/google/mlkit/nl/languageid/internal/h;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->i:Ljava/util/Map;

    .line 2
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->i:Ljava/util/Map;

    .line 4
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->i:Ljava/util/Map;

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/google/mlkit/nl/languageid/internal/h;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    move-result-object p1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;Ljava/lang/String;)V

    return-void
.end method
