.class public final Lcom/google/android/gms/internal/mlkit_common/kb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# static fields
.field private static k:Lcom/google/android/gms/internal/mlkit_common/zzan;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final l:Lcom/google/android/gms/internal/mlkit_common/zzap;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/mlkit_common/jb;

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/kb;->l:Lcom/google/android/gms/internal/mlkit_common/zzap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/p;Lcom/google/android/gms/internal/mlkit_common/jb;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->j:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->d:Lcom/google/mlkit/common/sdkinternal/p;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->c:Lcom/google/android/gms/internal/mlkit_common/jb;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/yb;->a()Lcom/google/android/gms/internal/mlkit_common/yb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->g:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->b()Lcom/google/mlkit/common/sdkinternal/i;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/fb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/fb;-><init>(Lcom/google/android/gms/internal/mlkit_common/kb;)V

    .line 7
    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/i;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->e:Lcom/google/android/gms/tasks/k;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->b()Lcom/google/mlkit/common/sdkinternal/i;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/gb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/gb;-><init>(Lcom/google/mlkit/common/sdkinternal/p;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/i;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->f:Lcom/google/android/gms/tasks/k;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/kb;->l:Lcom/google/android/gms/internal/mlkit_common/zzap;

    .line 9
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->h:I

    return-void
.end method

.method private static declared-synchronized h()Lcom/google/android/gms/internal/mlkit_common/zzan;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/kb;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/kb;->k:Lcom/google/android/gms/internal/mlkit_common/zzan;
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

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/k;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/k;-><init>()V

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

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_common/k;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/k;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/k;->d()Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/kb;->k:Lcom/google/android/gms/internal/mlkit_common/zzan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/w9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/w9;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/w9;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/w9;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/kb;->h()Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/w9;->h(Lcom/google/android/gms/internal/mlkit_common/zzan;)Lcom/google/android/gms/internal/mlkit_common/w9;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/w9;->g(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/w9;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/w9;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/w9;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->f:Lcom/google/android/gms/tasks/k;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->f:Lcom/google/android/gms/tasks/k;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->r()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->d:Lcom/google/mlkit/common/sdkinternal/p;

    .line 10
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/p;->i()Ljava/lang/String;

    move-result-object p1

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/w9;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;

    const/16 p1, 0xa

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/w9;->d(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/w9;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->h:I

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/w9;->k(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/w9;

    return-object v0
.end method

.method private final j()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->e:Lcom/google/android/gms/tasks/k;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->e:Lcom/google/android/gms/tasks/k;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/k;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/r;->a()Lcom/google/android/gms/common/internal/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->g:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/ab;->d(Lcom/google/android/gms/internal/mlkit_common/zziu;)Lcom/google/android/gms/internal/mlkit_common/ab;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_common/ab;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/kb;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/ab;->c(Lcom/google/android/gms/internal/mlkit_common/w9;)Lcom/google/android/gms/internal/mlkit_common/ab;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->c:Lcom/google/android/gms/internal/mlkit_common/jb;

    .line 3
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/jb;->a(Lcom/google/android/gms/internal/mlkit_common/ab;)V

    return-void
.end method

.method final synthetic c(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/mb;Lcom/google/mlkit/common/model/d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziu;->zzaV:Lcom/google/android/gms/internal/mlkit_common/zziu;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/ab;->d(Lcom/google/android/gms/internal/mlkit_common/zziu;)Lcom/google/android/gms/internal/mlkit_common/ab;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/mb;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/kb;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/kb;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/w9;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/ab;->c(Lcom/google/android/gms/internal/mlkit_common/w9;)Lcom/google/android/gms/internal/mlkit_common/ab;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->d:Lcom/google/mlkit/common/sdkinternal/p;

    .line 5
    invoke-static {p3, v0, p2}, Lcom/google/android/gms/internal/mlkit_common/wb;->a(Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/p;Lcom/google/android/gms/internal/mlkit_common/mb;)Lcom/google/android/gms/internal/mlkit_common/c8;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/ab;->e(Lcom/google/android/gms/internal/mlkit_common/c8;)Lcom/google/android/gms/internal/mlkit_common/ab;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/kb;->c:Lcom/google/android/gms/internal/mlkit_common/jb;

    .line 7
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/jb;->a(Lcom/google/android/gms/internal/mlkit_common/ab;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/kb;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/hb;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_common/hb;-><init>(Lcom/google/android/gms/internal/mlkit_common/kb;Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;ZI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/mb;->h()Lcom/google/android/gms/internal/mlkit_common/lb;

    move-result-object p3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/lb;->f(Z)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 3
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/d;->e()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/lb;->d(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/lb;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziz;->zzi:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 4
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/lb;->a(Lcom/google/android/gms/internal/mlkit_common/zziz;)Lcom/google/android/gms/internal/mlkit_common/lb;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzit;->zzo:Lcom/google/android/gms/internal/mlkit_common/zzit;

    .line 5
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/lb;->b(Lcom/google/android/gms/internal/mlkit_common/zzit;)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 6
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_common/lb;->c(I)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_common/lb;->g()Lcom/google/android/gms/internal/mlkit_common/mb;

    move-result-object p3

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/kb;->g(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/mb;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/zzit;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/mb;->h()Lcom/google/android/gms/internal/mlkit_common/lb;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_common/lb;->f(Z)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 3
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_common/lb;->d(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_common/lb;->b(Lcom/google/android/gms/internal/mlkit_common/zzit;)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 5
    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/mlkit_common/lb;->a(Lcom/google/android/gms/internal/mlkit_common/zziz;)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/lb;->g()Lcom/google/android/gms/internal/mlkit_common/mb;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/kb;->g(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/mb;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/mlkit/common/model/d;Lcom/google/android/gms/internal/mlkit_common/mb;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/ib;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_common/ib;-><init>(Lcom/google/android/gms/internal/mlkit_common/kb;Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/mb;Lcom/google/mlkit/common/model/d;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
