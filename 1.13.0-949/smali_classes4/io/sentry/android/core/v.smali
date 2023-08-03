.class final Lio/sentry/android/core/v;
.super Ljava/lang/Object;
.source "AndroidOptionsInitializer.java"


# static fields
.field static final a:Ljava/lang/String; = "io.sentry.compose.gestures.ComposeGestureTargetLocator"

.field static final b:Ljava/lang/String; = "androidx.compose.ui.node.Owner"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/sentry/android/core/v;->k(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/sentry/android/core/v;->j(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Lio/sentry/o0;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const-string v2, "sentry-debug-meta.properties"

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "io.sentry.ProguardUuids"

    .line 6
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Proguard UUID found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-interface {p1, v2, v3, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 10
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "sentry-debug-meta.properties file is malformed."

    invoke-interface {p1, v0, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 11
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting Proguard UUIDs."

    invoke-interface {p1, v0, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :catch_2
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "sentry-debug-meta.properties file was not found."

    invoke-interface {p1, p0, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "sentry"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setCacheDirPath(Ljava/lang/String;)V

    return-void
.end method

.method static f(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;)V
    .locals 6
    .param p0    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/k;
    .end annotation

    new-instance v2, Lio/sentry/android/core/m0;

    new-instance v0, Lio/sentry/android/core/r;

    invoke-direct {v0}, Lio/sentry/android/core/r;-><init>()V

    invoke-direct {v2, v0}, Lio/sentry/android/core/m0;-><init>(Lio/sentry/o0;)V

    new-instance v3, Lio/sentry/android/core/y0;

    invoke-direct {v3}, Lio/sentry/android/core/y0;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/sentry/android/core/v;->g(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/android/core/y0;ZZ)V

    return-void
.end method

.method static g(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/android/core/y0;ZZ)V
    .locals 8
    .param p0    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/y0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/f;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/transport/s;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/sentry/android/core/cache/a;

    invoke-direct {v0, p0}, Lio/sentry/android/core/cache/a;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvelopeDiskCache(Lio/sentry/cache/f;)V

    .line 4
    :cond_0
    new-instance v0, Lio/sentry/android/core/g;

    invoke-direct {v0, p3, p0}, Lio/sentry/android/core/g;-><init>(Lio/sentry/android/core/y0;Lio/sentry/android/core/SentryAndroidOptions;)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p4

    move v7, p5

    .line 5
    invoke-static/range {v1 .. v7}, Lio/sentry/android/core/v;->h(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/y0;Lio/sentry/android/core/g;ZZ)V

    .line 6
    new-instance p4, Lio/sentry/android/core/r0;

    invoke-direct {p4, p1, p2, p0}, Lio/sentry/android/core/r0;-><init>(Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/z;)V

    .line 7
    new-instance p4, Lio/sentry/android/core/d1;

    invoke-direct {p4, p0, v0}, Lio/sentry/android/core/d1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/g;)V

    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/z;)V

    .line 8
    new-instance p4, Lio/sentry/android/core/g1;

    invoke-direct {p4, p0, p2}, Lio/sentry/android/core/g1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;)V

    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/z;)V

    .line 9
    new-instance p4, Lio/sentry/android/core/s1;

    invoke-direct {p4, p0}, Lio/sentry/android/core/s1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/z;)V

    .line 10
    new-instance p4, Lio/sentry/android/core/b0;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p5

    invoke-direct {p4, p1, p5}, Lio/sentry/android/core/b0;-><init>(Landroid/content/Context;Lio/sentry/o0;)V

    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->setTransportGate(Lio/sentry/transport/r;)V

    .line 11
    new-instance p4, Lio/sentry/android/core/internal/util/n;

    invoke-direct {p4, p1, p0, p2}, Lio/sentry/android/core/internal/util/n;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/m0;)V

    .line 12
    new-instance p5, Lio/sentry/android/core/a0;

    invoke-direct {p5, p1, p0, p2, p4}, Lio/sentry/android/core/a0;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/n;)V

    invoke-virtual {p0, p5}, Lio/sentry/SentryOptions;->setTransactionProfiler(Lio/sentry/x0;)V

    .line 13
    new-instance p4, Lio/sentry/android/core/internal/modules/a;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p5

    invoke-direct {p4, p1, p5}, Lio/sentry/android/core/internal/modules/a;-><init>(Landroid/content/Context;Lio/sentry/o0;)V

    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/a;)V

    const-string p1, "androidx.core.view.ScrollingView"

    .line 14
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    .line 15
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getGestureTargetLocators()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 16
    new-instance p4, Ljava/util/ArrayList;

    const/4 p5, 0x2

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    new-instance p5, Lio/sentry/android/core/internal/gestures/a;

    invoke-direct {p5, p1}, Lio/sentry/android/core/internal/gestures/a;-><init>(Z)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "androidx.compose.ui.node.Owner"

    .line 18
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "io.sentry.compose.gestures.ComposeGestureTargetLocator"

    .line 19
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/y0;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 20
    new-instance p1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;

    invoke-direct {p1}, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;-><init>()V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->setGestureTargetLocators(Ljava/util/List;)V

    .line 22
    :cond_3
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->e()Lio/sentry/android/core/internal/util/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setMainThreadChecker(Lio/sentry/util/thread/b;)V

    .line 23
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCollectors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    new-instance p1, Lio/sentry/android/core/s;

    invoke-direct {p1}, Lio/sentry/android/core/s;-><init>()V

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->addCollector(Lio/sentry/j0;)V

    .line 25
    new-instance p1, Lio/sentry/android/core/p;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lio/sentry/android/core/p;-><init>(Lio/sentry/o0;Lio/sentry/android/core/m0;)V

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->addCollector(Lio/sentry/j0;)V

    :cond_4
    return-void
.end method

.method private static h(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;Lio/sentry/android/core/y0;Lio/sentry/android/core/g;ZZ)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/y0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/android/core/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/sentry/android/core/cache/a;->E(Lio/sentry/SentryOptions;)Z

    move-result v0

    .line 2
    new-instance v1, Lio/sentry/android/core/i1;

    new-instance v2, Lio/sentry/x2;

    new-instance v3, Lio/sentry/android/core/u;

    invoke-direct {v3, p1}, Lio/sentry/android/core/u;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/x2;-><init>(Lio/sentry/u2$b;)V

    invoke-direct {v1, v2, v0}, Lio/sentry/android/core/i1;-><init>(Lio/sentry/u2$c;Z)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 3
    invoke-static {p2}, Lio/sentry/android/core/v;->i(Lio/sentry/android/core/m0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    const-string v2, "io.sentry.android.ndk.SentryNdk"

    invoke-virtual {p3, v2, v1}, Lio/sentry/android/core/y0;->c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    new-instance v2, Lio/sentry/android/core/b1;

    invoke-direct {v2, v1}, Lio/sentry/android/core/b1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 6
    invoke-static {}, Lio/sentry/android/core/u0;->b()Lio/sentry/android/core/u0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 7
    new-instance v1, Lio/sentry/android/core/i1;

    new-instance v2, Lio/sentry/y2;

    new-instance v3, Lio/sentry/android/core/t;

    invoke-direct {v3, p1}, Lio/sentry/android/core/t;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/y2;-><init>(Lio/sentry/u2$b;)V

    invoke-direct {v1, v2, v0}, Lio/sentry/android/core/i1;-><init>(Lio/sentry/u2$c;Z)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 8
    new-instance v0, Lio/sentry/android/core/h0;

    invoke-direct {v0}, Lio/sentry/android/core/h0;-><init>()V

    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 9
    new-instance v0, Lio/sentry/android/core/d0;

    invoke-direct {v0, p0}, Lio/sentry/android/core/d0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 10
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lio/sentry/android/core/o;

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-direct {v0, v1, p2, p4}, Lio/sentry/android/core/o;-><init>(Landroid/app/Application;Lio/sentry/android/core/m0;Lio/sentry/android/core/g;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 12
    new-instance p2, Lio/sentry/android/core/p0;

    invoke-direct {p2, v1}, Lio/sentry/android/core/p0;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 13
    new-instance p2, Lio/sentry/android/core/r1;

    invoke-direct {p2, v1, p3}, Lio/sentry/android/core/r1;-><init>(Landroid/app/Application;Lio/sentry/android/core/y0;)V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    if-eqz p5, :cond_2

    .line 14
    new-instance p2, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    const/4 p3, 0x1

    invoke-direct {p2, v1, p3, p3}, Lio/sentry/android/fragment/FragmentLifecycleIntegration;-><init>(Landroid/app/Application;ZZ)V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed."

    .line 16
    invoke-interface {p2, p3, p5, p4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz p6, :cond_3

    .line 17
    new-instance p2, Lio/sentry/android/timber/SentryTimberIntegration;

    invoke-direct {p2}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>()V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 18
    :cond_3
    new-instance p2, Lio/sentry/android/core/e0;

    invoke-direct {p2, p0}, Lio/sentry/android/core/e0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 19
    new-instance p2, Lio/sentry/android/core/p1;

    invoke-direct {p2, p0}, Lio/sentry/android/core/p1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 20
    new-instance p2, Lio/sentry/android/core/q1;

    invoke-direct {p2, p0}, Lio/sentry/android/core/q1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    .line 21
    new-instance p2, Lio/sentry/android/core/e1;

    invoke-direct {p2, p0}, Lio/sentry/android/core/e1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    return-void
.end method

.method private static i(Lio/sentry/android/core/m0;)Z
    .locals 1
    .param p0    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/sentry/android/core/m0;->d()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic j(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic k(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static l(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;)V
    .locals 2
    .param p0    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/k;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/android/core/r;

    invoke-direct {v0}, Lio/sentry/android/core/r;-><init>()V

    .line 2
    new-instance v1, Lio/sentry/android/core/m0;

    invoke-direct {v1, v0}, Lio/sentry/android/core/m0;-><init>(Lio/sentry/o0;)V

    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/v;->m(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)V

    return-void
.end method

.method static m(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)V
    .locals 1
    .param p0    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "The context is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    const-string v0, "The options object is required."

    .line 4
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The ILogger object is required."

    .line 5
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p2}, Lio/sentry/SentryOptions;->setLogger(Lio/sentry/o0;)V

    .line 7
    new-instance p2, Lio/sentry/android/core/m1;

    invoke-direct {p2}, Lio/sentry/android/core/m1;-><init>()V

    invoke-virtual {p0, p2}, Lio/sentry/SentryOptions;->setDateProvider(Lio/sentry/k3;)V

    .line 8
    invoke-static {p1, p0, p3}, Lio/sentry/android/core/a1;->a(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;)V

    .line 9
    invoke-static {p1, p0}, Lio/sentry/android/core/v;->e(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 10
    invoke-static {p0, p1, p3}, Lio/sentry/android/core/v;->n(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/m0;)V

    return-void
.end method

.method private static n(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/m0;)V
    .locals 3
    .param p0    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lio/sentry/android/core/n0;->c(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0, p2}, Lio/sentry/android/core/n0;->d(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/m0;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {v0, p2}, Lio/sentry/android/core/v;->d(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v0, "android."

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, p2}, Lio/sentry/SentryOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 10
    :try_start_0
    invoke-static {p1}, Lio/sentry/android/core/w0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/SentryOptions;->setDistinctId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Could not generate distinct Id."

    invoke-interface {v0, v1, v2, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 13
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    invoke-static {p1, p2}, Lio/sentry/android/core/v;->c(Landroid/content/Context;Lio/sentry/o0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
