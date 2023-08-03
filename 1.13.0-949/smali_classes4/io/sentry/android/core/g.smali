.class public final Lio/sentry/android/core/g;
.super Ljava/lang/Object;
.source "ActivityFramesTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/g$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/core/app/FrameMetricsAggregator;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/protocol/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/g$b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/android/core/z0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/android/core/y0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1    # Lio/sentry/android/core/y0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 9
    new-instance v0, Lio/sentry/android/core/z0;

    invoke-direct {v0}, Lio/sentry/android/core/z0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/g;-><init>(Lio/sentry/android/core/y0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/z0;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/y0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/z0;)V
    .locals 2
    .param p1    # Lio/sentry/android/core/y0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/z0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/g;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/g;->d:Ljava/util/Map;

    .line 5
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    const-string v1, "androidx.core.app.FrameMetricsAggregator"

    invoke-virtual {p1, v1, v0}, Lio/sentry/android/core/y0;->a(Ljava/lang/String;Lio/sentry/o0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroidx/core/app/FrameMetricsAggregator;

    invoke-direct {p1}, Landroidx/core/app/FrameMetricsAggregator;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    .line 7
    :cond_0
    iput-object p2, p0, Lio/sentry/android/core/g;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 8
    iput-object p3, p0, Lio/sentry/android/core/g;->e:Lio/sentry/android/core/z0;

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/y0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/z0;Landroidx/core/app/FrameMetricsAggregator;)V
    .locals 0
    .param p1    # Lio/sentry/android/core/y0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/z0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Landroidx/core/app/FrameMetricsAggregator;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/k;
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/g;-><init>(Lio/sentry/android/core/y0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/z0;)V

    .line 11
    iput-object p4, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/g;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/g;->k(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/g;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/core/g;->l()V

    return-void
.end method

.method public static synthetic c(Lio/sentry/android/core/g;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/g;->j(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lio/sentry/android/core/g;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/g;->i(Landroid/app/Activity;)V

    return-void
.end method

.method private f()Lio/sentry/android/core/g$b;
    .locals 9
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/g;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4
    array-length v3, v0

    if-lez v3, :cond_5

    .line 5
    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 7
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 8
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/2addr v3, v7

    const/16 v8, 0x2bc

    if-le v6, v8, :cond_2

    add-int/2addr v5, v7

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    if-le v6, v8, :cond_3

    add-int/2addr v4, v7

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_2
    new-instance v0, Lio/sentry/android/core/g$b;

    invoke-direct {v0, v2, v4, v5, v1}, Lio/sentry/android/core/g$b;-><init>(IIILio/sentry/android/core/g$a;)V

    return-object v0
.end method

.method private g(Landroid/app/Activity;)Lio/sentry/android/core/g$b;
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/g$b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/g;->f()Lio/sentry/android/core/g$b;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {v1}, Lio/sentry/android/core/g$b;->a(Lio/sentry/android/core/g$b;)I

    move-result v2

    invoke-static {p1}, Lio/sentry/android/core/g$b;->a(Lio/sentry/android/core/g$b;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 4
    invoke-static {v1}, Lio/sentry/android/core/g$b;->b(Lio/sentry/android/core/g$b;)I

    move-result v3

    invoke-static {p1}, Lio/sentry/android/core/g$b;->b(Lio/sentry/android/core/g$b;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 5
    invoke-static {v1}, Lio/sentry/android/core/g$b;->c(Lio/sentry/android/core/g$b;)I

    move-result v1

    invoke-static {p1}, Lio/sentry/android/core/g$b;->c(Lio/sentry/android/core/g$b;)I

    move-result p1

    sub-int/2addr v1, p1

    .line 6
    new-instance p1, Lio/sentry/android/core/g$b;

    invoke-direct {p1, v2, v3, v1, v0}, Lio/sentry/android/core/g$b;-><init>(IIILio/sentry/android/core/g$a;)V

    return-object p1
.end method

.method private synthetic i(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0, p1}, Landroidx/core/app/FrameMetricsAggregator;->add(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic j(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/android/core/g;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, p2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic k(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0, p1}, Landroidx/core/app/FrameMetricsAggregator;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    return-void
.end method

.method private synthetic l()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->stop()[Landroid/util/SparseIntArray;

    return-void
.end method

.method private m(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->e()Lio/sentry/android/core/internal/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/g;->e:Lio/sentry/android/core/z0;

    new-instance v1, Lio/sentry/android/core/f;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/f;-><init>(Lio/sentry/android/core/g;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/core/z0;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lio/sentry/android/core/g;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, p2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private o(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/g;->f()Lio/sentry/android/core/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/g;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized e(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/g;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Lio/sentry/android/core/e;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/e;-><init>(Lio/sentry/android/core/g;Landroid/app/Activity;)V

    const-string v1, "FrameMetricsAggregator.add"

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/g;->m(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/android/core/g;->o(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h()Z
    .locals 1
    .annotation build Lm8/n;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/g;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized n(Landroid/app/Activity;Lio/sentry/protocol/n;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/g;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Lio/sentry/android/core/d;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/d;-><init>(Lio/sentry/android/core/g;Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/g;->m(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/android/core/g;->g(Landroid/app/Activity;)Lio/sentry/android/core/g$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1}, Lio/sentry/android/core/g$b;->a(Lio/sentry/android/core/g$b;)I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p1}, Lio/sentry/android/core/g$b;->b(Lio/sentry/android/core/g$b;)I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Lio/sentry/android/core/g$b;->c(Lio/sentry/android/core/g$b;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lio/sentry/protocol/e;

    .line 9
    invoke-static {p1}, Lio/sentry/android/core/g$b;->a(Lio/sentry/android/core/g$b;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "none"

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/e;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 10
    new-instance v1, Lio/sentry/protocol/e;

    .line 11
    invoke-static {p1}, Lio/sentry/android/core/g$b;->b(Lio/sentry/android/core/g$b;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "none"

    invoke-direct {v1, v2, v3}, Lio/sentry/protocol/e;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lio/sentry/protocol/e;

    .line 13
    invoke-static {p1}, Lio/sentry/android/core/g$b;->c(Lio/sentry/android/core/g$b;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "none"

    invoke-direct {v2, p1, v3}, Lio/sentry/protocol/e;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "frames_total"

    .line 15
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "frames_slow"

    .line 16
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "frames_frozen"

    .line 17
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lio/sentry/android/core/g;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/sentry/android/core/c;

    invoke-direct {v0, p0}, Lio/sentry/android/core/c;-><init>(Lio/sentry/android/core/g;)V

    const-string v1, "FrameMetricsAggregator.stop"

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/g;->m(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/g;->a:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->reset()[Landroid/util/SparseIntArray;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q(Lio/sentry/protocol/n;)Ljava/util/Map;
    .locals 2
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/n;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/e;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/g;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/g;->c:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5
    iget-object v1, p0, Lio/sentry/android/core/g;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
