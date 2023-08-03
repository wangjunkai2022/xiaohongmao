.class public final Lio/sentry/android/core/l1;
.super Ljava/lang/Object;
.source "SentryAndroid.java"


# static fields
.field private static final a:Lio/sentry/j3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:J

.field static final c:Ljava/lang/String; = "io.sentry.android.fragment.FragmentLifecycleIntegration"

.field static final d:Ljava/lang/String; = "io.sentry.android.timber.SentryTimberIntegration"

.field private static final e:Ljava/lang/String; = "timber.log.Timber"

.field private static final f:Ljava/lang/String; = "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/sentry/android/core/q;->a()Lio/sentry/j3;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/l1;->a:Lio/sentry/j3;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/l1;->b:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/sentry/o0;Landroid/content/Context;Lio/sentry/c3$a;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/core/l1;->i(Lio/sentry/o0;Landroid/content/Context;Lio/sentry/c3$a;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/core/l1;->h(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method private static c(Lio/sentry/SentryOptions;ZZ)V
    .locals 5
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/z0;

    if-eqz p1, :cond_1

    .line 4
    instance-of v4, v3, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_0

    .line 6
    instance-of v4, v3, Lio/sentry/android/timber/SentryTimberIntegration;

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    const/4 p1, 0x1

    .line 9
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 10
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/z0;

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_4

    .line 13
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 14
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/z0;

    .line 15
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    new-instance v0, Lio/sentry/android/core/r;

    invoke-direct {v0}, Lio/sentry/android/core/r;-><init>()V

    invoke-static {p0, v0}, Lio/sentry/android/core/l1;->e(Landroid/content/Context;Lio/sentry/o0;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lio/sentry/o0;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    sget-object v0, Lio/sentry/android/core/k1;->a:Lio/sentry/android/core/k1;

    invoke-static {p0, p1, v0}, Lio/sentry/android/core/l1;->f(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/c3$a;)V

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/c3$a;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/c3$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/o0;",
            "Lio/sentry/c3$a<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lio/sentry/android/core/l1;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object v1

    sget-wide v2, Lio/sentry/android/core/l1;->b:J

    sget-object v4, Lio/sentry/android/core/l1;->a:Lio/sentry/j3;

    invoke-virtual {v1, v2, v3, v4}, Lio/sentry/android/core/i0;->k(JLio/sentry/j3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    const-class v1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-static {v1}, Lio/sentry/g2;->a(Ljava/lang/Class;)Lio/sentry/g2;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/j1;

    invoke-direct {v2, p1, p0, p2}, Lio/sentry/android/core/j1;-><init>(Lio/sentry/o0;Landroid/content/Context;Lio/sentry/c3$a;)V

    const/4 p0, 0x1

    .line 4
    invoke-static {v1, v2, p0}, Lio/sentry/c3;->G(Lio/sentry/g2;Lio/sentry/c3$a;Z)V

    .line 5
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "session.start"

    .line 7
    invoke-static {p2}, Lio/sentry/android/core/internal/util/c;->a(Ljava/lang/String;)Lio/sentry/f;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    .line 8
    invoke-interface {p0}, Lio/sentry/n0;->b0()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 10
    :try_start_2
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 12
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 14
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 16
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g(Landroid/content/Context;Lio/sentry/c3$a;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/c3$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/c3$a<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/sentry/android/core/r;

    invoke-direct {v0}, Lio/sentry/android/core/r;-><init>()V

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/l1;->f(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/c3$a;)V

    return-void
.end method

.method private static synthetic h(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    return-void
.end method

.method private static synthetic i(Lio/sentry/o0;Landroid/content/Context;Lio/sentry/c3$a;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 11

    .line 1
    new-instance v0, Lio/sentry/android/core/y0;

    invoke-direct {v0}, Lio/sentry/android/core/y0;-><init>()V

    const-string v1, "timber.log.Timber"

    .line 2
    invoke-virtual {v0, v1, p3}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v1

    const-string v2, "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

    .line 3
    invoke-virtual {v0, v2, p3}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "io.sentry.android.fragment.FragmentLifecycleIntegration"

    .line 4
    invoke-virtual {v0, v2, p3}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "io.sentry.android.timber.SentryTimberIntegration"

    .line 5
    invoke-virtual {v0, v1, p3}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_1
    new-instance v7, Lio/sentry/android/core/m0;

    invoke-direct {v7, p0}, Lio/sentry/android/core/m0;-><init>(Lio/sentry/o0;)V

    .line 7
    new-instance v8, Lio/sentry/android/core/y0;

    invoke-direct {v8}, Lio/sentry/android/core/y0;-><init>()V

    .line 8
    invoke-static {p3, p1, p0, v7}, Lio/sentry/android/core/v;->m(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)V

    .line 9
    invoke-interface {p2, p3}, Lio/sentry/c3$a;->a(Lio/sentry/SentryOptions;)V

    move-object v5, p3

    move-object v6, p1

    move v9, v2

    move v10, v3

    .line 10
    invoke-static/range {v5 .. v10}, Lio/sentry/android/core/v;->g(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/android/core/y0;ZZ)V

    .line 11
    invoke-static {p3, v2, v3}, Lio/sentry/android/core/l1;->c(Lio/sentry/SentryOptions;ZZ)V

    return-void
.end method
