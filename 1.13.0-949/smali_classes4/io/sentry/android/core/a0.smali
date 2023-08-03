.class final Lio/sentry/android/core/a0;
.super Ljava/lang/Object;
.source "AndroidTransactionProfiler.java"

# interfaces
.implements Lio/sentry/x0;


# static fields
.field private static final u:I = 0x2dc6c0

.field private static final v:I = 0x7530


# instance fields
.field private a:I

.field private b:Ljava/io/File;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/io/File;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private volatile e:Lio/sentry/m2;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lio/sentry/android/core/m0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private j:J

.field private k:J

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final o:Lio/sentry/android/core/internal/util/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private p:Lio/sentry/n2;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final s:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/n;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/android/core/internal/util/n;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/a0;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/n;Lio/sentry/n0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/n;Lio/sentry/n0;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/android/core/internal/util/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    .line 6
    iput-object v0, p0, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    .line 7
    iput-object v0, p0, Lio/sentry/android/core/a0;->e:Lio/sentry/m2;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lio/sentry/android/core/a0;->j:J

    .line 9
    iput-wide v0, p0, Lio/sentry/android/core/a0;->k:J

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lio/sentry/android/core/a0;->l:Z

    .line 11
    iput v0, p0, Lio/sentry/android/core/a0;->m:I

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    .line 13
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    .line 14
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    const-string v0, "The application context is required"

    .line 16
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/a0;->f:Landroid/content/Context;

    const-string p1, "SentryAndroidOptions is required"

    .line 17
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p1, "Hub is required"

    .line 18
    invoke-static {p5, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/android/core/a0;->h:Lio/sentry/n0;

    const-string p1, "SentryFrameMetricsCollector is required"

    .line 19
    invoke-static {p4, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/internal/util/n;

    iput-object p1, p0, Lio/sentry/android/core/a0;->o:Lio/sentry/android/core/internal/util/n;

    const-string p1, "The BuildInfoProvider is required."

    .line 20
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/m0;

    iput-object p1, p0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    return-void
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    invoke-static {}, Lio/sentry/android/core/a0;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lio/sentry/android/core/a0;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->m(Lio/sentry/w0;)V

    return-void
.end method

.method public static synthetic e(Lio/sentry/android/core/a0;Lio/sentry/w0;Lio/sentry/k2;)Lio/sentry/m2;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a0;->n(Lio/sentry/w0;Lio/sentry/k2;)Lio/sentry/m2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lio/sentry/android/core/a0;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->p(Lio/sentry/w0;)V

    return-void
.end method

.method static synthetic g(Lio/sentry/android/core/a0;)J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/a0;->j:J

    return-wide v0
.end method

.method static synthetic h(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic i(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic j(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private k()Landroid/app/ActivityManager$MemoryInfo;
    .locals 5
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "Error getting MemoryInfo."

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/a0;->f:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v3

    .line 4
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v2

    .line 5
    iget-object v3, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v3, v4, v0, v2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private l()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/a0;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/a0;->l:Z

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Profiling is disabled in options."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    .line 8
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesHz()I

    move-result v2

    if-gtz v2, :cond_3

    .line 10
    iget-object v1, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Disabling profiling because trace rate is set to %d"

    .line 13
    invoke-interface {v1, v4, v2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    long-to-int v0, v3

    div-int/2addr v0, v2

    iput v0, p0, Lio/sentry/android/core/a0;->a:I

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    return-void
.end method

.method private synthetic m(Lio/sentry/w0;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/sentry/android/core/a0;->r(Lio/sentry/w0;ZLio/sentry/k2;)Lio/sentry/m2;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/a0;->e:Lio/sentry/m2;

    return-void
.end method

.method private synthetic n(Lio/sentry/w0;Lio/sentry/k2;)Lio/sentry/m2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/a0;->r(Lio/sentry/w0;ZLio/sentry/k2;)Lio/sentry/m2;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lio/sentry/android/core/internal/util/e;->b()Lio/sentry/android/core/internal/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/e;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic p(Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->s(Lio/sentry/w0;)V

    return-void
.end method

.method private q(Lio/sentry/w0;)V
    .locals 4
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".trace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/a0;->o:Lio/sentry/android/core/internal/util/n;

    new-instance v1, Lio/sentry/android/core/a0$a;

    invoke-direct {v1, p0}, Lio/sentry/android/core/a0$a;-><init>(Lio/sentry/android/core/a0;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/util/n;->f(Lio/sentry/android/core/internal/util/n$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/a0;->n:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/w;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/w;-><init>(Lio/sentry/android/core/a0;Lio/sentry/w0;)V

    const-wide/16 v2, 0x7530

    .line 10
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/t0;->b(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/a0;->j:J

    .line 12
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/a0;->k:J

    .line 13
    new-instance v0, Lio/sentry/n2;

    iget-wide v1, p0, Lio/sentry/android/core/a0;->j:J

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lio/sentry/android/core/a0;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/sentry/n2;-><init>(Lio/sentry/w0;Ljava/lang/Long;Ljava/lang/Long;)V

    iput-object v0, p0, Lio/sentry/android/core/a0;->p:Lio/sentry/n2;

    .line 15
    iget-object p1, p0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lio/sentry/android/core/a0;->a:I

    const v1, 0x2dc6c0

    invoke-static {p1, v1, v0}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V

    return-void
.end method

.method private r(Lio/sentry/w0;ZLio/sentry/k2;)Lio/sentry/m2;
    .locals 29
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/k2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    invoke-virtual {v1}, Lio/sentry/android/core/m0;->d()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ge v1, v3, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v1, v0, Lio/sentry/android/core/a0;->e:Lio/sentry/m2;

    .line 3
    iget-object v3, v0, Lio/sentry/android/core/a0;->p:Lio/sentry/n2;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    .line 4
    invoke-virtual {v3}, Lio/sentry/n2;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    iget v1, v0, Lio/sentry/android/core/a0;->m:I

    if-lez v1, :cond_2

    sub-int/2addr v1, v5

    .line 6
    iput v1, v0, Lio/sentry/android/core/a0;->m:I

    .line 7
    :cond_2
    iget-object v1, v0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 8
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    invoke-interface/range {p1 .. p1}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 10
    invoke-interface/range {p1 .. p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v7, "Transaction %s (%s) finished."

    .line 11
    invoke-interface {v1, v3, v7, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget v1, v0, Lio/sentry/android/core/a0;->m:I

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 13
    iget-object v1, v0, Lio/sentry/android/core/a0;->p:Lio/sentry/n2;

    if-eqz v1, :cond_3

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lio/sentry/android/core/a0;->j:J

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 16
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v0, Lio/sentry/android/core/a0;->k:J

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 18
    invoke-virtual {v1, v3, v4, v5, v6}, Lio/sentry/n2;->o(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_3
    return-object v2

    .line 19
    :cond_4
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 20
    iget-object v1, v0, Lio/sentry/android/core/a0;->o:Lio/sentry/android/core/internal/util/n;

    iget-object v3, v0, Lio/sentry/android/core/a0;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lio/sentry/android/core/internal/util/n;->g(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 22
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    .line 23
    iget-wide v9, v0, Lio/sentry/android/core/a0;->j:J

    sub-long v9, v3, v9

    .line 24
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    iget-object v1, v0, Lio/sentry/android/core/a0;->p:Lio/sentry/n2;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iput-object v2, v0, Lio/sentry/android/core/a0;->p:Lio/sentry/n2;

    .line 27
    iput v6, v0, Lio/sentry/android/core/a0;->m:I

    .line 28
    iget-object v1, v0, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_5

    .line 29
    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 30
    iput-object v2, v0, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    .line 31
    :cond_5
    iget-object v1, v0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    if-nez v1, :cond_6

    .line 32
    iget-object v1, v0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Trace file does not exists"

    invoke-interface {v1, v3, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 33
    :cond_6
    invoke-direct/range {p0 .. p0}, Lio/sentry/android/core/a0;->k()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 34
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const-string v1, "0"

    :goto_0
    move-object/from16 v23, v1

    .line 35
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 36
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/n2;

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v14, v0, Lio/sentry/android/core/a0;->j:J

    .line 38
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 39
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-wide v15, v7

    iget-wide v6, v0, Lio/sentry/android/core/a0;->k:J

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 41
    invoke-virtual {v5, v11, v12, v14, v6}, Lio/sentry/n2;->o(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    move-wide v7, v15

    const/4 v6, 0x0

    goto :goto_1

    .line 42
    :cond_8
    iget-object v2, v0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const-string v3, "nanosecond"

    if-nez v2, :cond_9

    .line 43
    iget-object v2, v0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v4, Lio/sentry/profilemeasurements/a;

    iget-object v5, v0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    invoke-direct {v4, v3, v5}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v5, "slow_frame_renders"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_9
    iget-object v2, v0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 45
    iget-object v2, v0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v4, Lio/sentry/profilemeasurements/a;

    iget-object v5, v0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    invoke-direct {v4, v3, v5}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v3, "frozen_frame_renders"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_a
    iget-object v2, v0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 47
    iget-object v2, v0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v3, Lio/sentry/profilemeasurements/a;

    iget-object v4, v0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    const-string v5, "hz"

    invoke-direct {v3, v5, v4}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v4, "screen_frame_rates"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v2, p3

    .line 48
    invoke-direct {v0, v2}, Lio/sentry/android/core/a0;->t(Lio/sentry/k2;)V

    .line 49
    new-instance v2, Lio/sentry/m2;

    iget-object v12, v0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    .line 50
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    iget-object v3, v0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    .line 51
    invoke-virtual {v3}, Lio/sentry/android/core/m0;->d()I

    move-result v16

    if-eqz v1, :cond_c

    .line 52
    array-length v3, v1

    if-lez v3, :cond_c

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_2

    :cond_c
    const-string v1, ""

    :goto_2
    move-object/from16 v17, v1

    sget-object v18, Lio/sentry/android/core/z;->a:Lio/sentry/android/core/z;

    iget-object v1, v0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    .line 53
    invoke-virtual {v1}, Lio/sentry/android/core/m0;->b()Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    .line 54
    invoke-virtual {v1}, Lio/sentry/android/core/m0;->c()Ljava/lang/String;

    move-result-object v20

    iget-object v1, v0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    .line 55
    invoke-virtual {v1}, Lio/sentry/android/core/m0;->e()Ljava/lang/String;

    move-result-object v21

    iget-object v1, v0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    .line 56
    invoke-virtual {v1}, Lio/sentry/android/core/m0;->f()Ljava/lang/Boolean;

    move-result-object v22

    iget-object v1, v0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v24

    iget-object v1, v0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 58
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v25

    iget-object v1, v0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 59
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v26

    if-eqz p2, :cond_d

    const-string v1, "timeout"

    goto :goto_3

    :cond_d
    const-string v1, "normal"

    :goto_3
    move-object/from16 v27, v1

    .line 60
    iget-object v1, v0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    move-object/from16 v28, v1

    move-object v11, v2

    move-object/from16 v14, p1

    invoke-direct/range {v11 .. v28}, Lio/sentry/m2;-><init>(Ljava/io/File;Ljava/util/List;Lio/sentry/w0;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    :cond_e
    :goto_4
    if-eqz v1, :cond_10

    .line 61
    invoke-virtual {v1}, Lio/sentry/m2;->U()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 62
    iput-object v2, v0, Lio/sentry/android/core/a0;->e:Lio/sentry/m2;

    return-object v1

    .line 63
    :cond_f
    iget-object v1, v0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 64
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    invoke-interface/range {p1 .. p1}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 66
    invoke-interface/range {p1 .. p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "A timed out profiling data exists, but the finishing transaction %s (%s) is not part of it"

    .line 67
    invoke-interface {v1, v3, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 68
    :cond_10
    iget-object v1, v0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 69
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v4, v4, [Ljava/lang/Object;

    .line 70
    invoke-interface/range {p1 .. p1}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 71
    invoke-interface/range {p1 .. p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Transaction %s (%s) finished, but was not currently being profiled. Skipping"

    .line 72
    invoke-interface {v1, v3, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private s(Lio/sentry/w0;)V
    .locals 6
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/a0;->i:Lio/sentry/android/core/m0;

    invoke-virtual {v0}, Lio/sentry/android/core/m0;->d()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/a0;->l()V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    if-eqz v0, :cond_3

    iget v1, p0, Lio/sentry/android/core/a0;->a:I

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lio/sentry/android/core/a0;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/sentry/android/core/a0;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->q(Lio/sentry/w0;)V

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 9
    invoke-interface {p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Transaction %s (%s) started and being profiled."

    .line 10
    invoke-interface {v0, v4, p1, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    .line 11
    iput v0, p0, Lio/sentry/android/core/a0;->m:I

    .line 12
    iget-object v0, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 13
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 15
    invoke-interface {p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "A transaction is already being profiled. Transaction %s (%s) will be ignored."

    .line 16
    invoke-interface {v0, v4, p1, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private t(Lio/sentry/k2;)V
    .locals 12
    .param p1    # Lio/sentry/k2;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    invoke-virtual {p1}, Lio/sentry/k2;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/i;

    .line 5
    new-instance v5, Lio/sentry/profilemeasurements/b;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v4}, Lio/sentry/i;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    iget-wide v8, p0, Lio/sentry/android/core/a0;->j:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 7
    invoke-virtual {v4}, Lio/sentry/i;->a()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 8
    invoke-virtual {v2, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/sentry/k2;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/r1;

    .line 10
    invoke-virtual {v3}, Lio/sentry/r1;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 11
    new-instance v4, Lio/sentry/profilemeasurements/b;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-virtual {v3}, Lio/sentry/r1;->a()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    iget-wide v10, p0, Lio/sentry/android/core/a0;->j:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 13
    invoke-virtual {v3}, Lio/sentry/r1;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    invoke-virtual {v3}, Lio/sentry/r1;->c()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 16
    new-instance v4, Lio/sentry/profilemeasurements/b;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-virtual {v3}, Lio/sentry/r1;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget-wide v7, p0, Lio/sentry/android/core/a0;->j:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 18
    invoke-virtual {v3}, Lio/sentry/r1;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 19
    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    iget-object p1, p0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v3, Lio/sentry/profilemeasurements/a;

    const-string v4, "percent"

    invoke-direct {v3, v4, v2}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v2, "cpu_usage"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    const-string v2, "byte"

    if-nez p1, :cond_5

    .line 23
    iget-object p1, p0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v3, Lio/sentry/profilemeasurements/a;

    invoke-direct {v3, v2, v0}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v0, "memory_footprint"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 25
    iget-object p1, p0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v0, Lio/sentry/profilemeasurements/a;

    invoke-direct {v0, v2, v1}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v1, "memory_native_footprint"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lio/sentry/w0;Lio/sentry/k2;)Lio/sentry/m2;
    .locals 2
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/k2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/y;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/y;-><init>(Lio/sentry/android/core/a0;Lio/sentry/w0;Lio/sentry/k2;)V

    .line 3
    invoke-interface {v0, v1}, Lio/sentry/t0;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/m2;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    iget-object p2, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error finishing profiling: "

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    iget-object p2, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error finishing profiling: "

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lio/sentry/w0;)V
    .locals 2
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/x;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/x;-><init>(Lio/sentry/android/core/a0;Lio/sentry/w0;)V

    invoke-interface {v0, v1}, Lio/sentry/t0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
