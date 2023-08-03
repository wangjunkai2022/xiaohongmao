.class final Lio/sentry/android/core/r0;
.super Ljava/lang/Object;
.source "DefaultAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/z;


# static fields
.field static final f:Ljava/lang/String; = "rooted"
    .annotation build Lm8/k;
    .end annotation
.end field

.field static final g:Ljava/lang/String; = "kernelVersion"
    .annotation build Lm8/k;
    .end annotation
.end field

.field static final h:Ljava/lang/String; = "emulator"
    .annotation build Lm8/k;
    .end annotation
.end field

.field static final i:Ljava/lang/String; = "sideLoaded"
    .annotation build Lm8/k;
    .end annotation
.end field


# instance fields
.field final a:Landroid/content/Context;
    .annotation build Lm8/k;
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/k;
    .end annotation
.end field

.field private final c:Lio/sentry/android/core/m0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/android/core/internal/util/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/util/j;

    .line 2
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lio/sentry/android/core/internal/util/j;-><init>(Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/o0;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lio/sentry/android/core/r0;-><init>(Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/j;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/sentry/android/core/m0;Lio/sentry/android/core/internal/util/j;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/internal/util/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The application context is required."

    .line 5
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    const-string p1, "The BuildInfoProvider is required."

    .line 6
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/m0;

    iput-object p1, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    const-string p1, "The RootChecker is required."

    .line 7
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/internal/util/j;

    iput-object p1, p0, Lio/sentry/android/core/r0;->d:Lio/sentry/android/core/internal/util/j;

    const-string p1, "The options object is required."

    .line 8
    invoke-static {p4, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 10
    new-instance p2, Lio/sentry/android/core/q0;

    invoke-direct {p2, p0}, Lio/sentry/android/core/q0;-><init>(Lio/sentry/android/core/r0;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/android/core/r0;->b:Ljava/util/concurrent/Future;

    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private A()Landroid/app/ActivityManager$MemoryInfo;
    .locals 5
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "Error getting MemoryInfo."

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

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
    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

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
    iget-object v3, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v3, v4, v0, v2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private B(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;
    .locals 2
    .param p1    # Landroid/app/ActivityManager$MemoryInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private C()Lio/sentry/protocol/h;
    .locals 5
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/protocol/h;

    invoke-direct {v0}, Lio/sentry/protocol/h;-><init>()V

    const-string v1, "Android"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/protocol/h;->o(Ljava/lang/String;)V

    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/h;->r(Ljava/lang/String;)V

    .line 4
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/h;->m(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/r0;->b:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "kernelVersion"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/h;->n(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/r0;->b:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "rooted"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/h;->q(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error getting OperatingSystem."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private D()Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 7
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lio/sentry/android/core/internal/util/f;->a(I)Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 5
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 6
    :goto_0
    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error getting device orientation."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method private E()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    invoke-static {v1, v2, v3}, Lio/sentry/android/core/n0;->c(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "isSideLoaded"

    if-eqz v2, :cond_0

    :try_start_2
    const-string v5, "false"

    .line 7
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "installerStore"

    .line 8
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "true"

    .line 9
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v3

    :catch_0
    move-object v1, v0

    .line 10
    :catch_1
    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "%s package isn\'t installed."

    invoke-interface {v2, v3, v1, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private F()Ljava/util/TimeZone;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private G(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->o(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->m(Landroid/os/StatFs;)J

    move-result-wide v2

    mul-long v2, v2, v0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting total external storage amount."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private H(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->o(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->m(Landroid/os/StatFs;)J

    move-result-wide v2

    mul-long v2, v2, v0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting total internal storage amount."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private I(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->o(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->h(Landroid/os/StatFs;)J

    move-result-wide v2

    mul-long v2, v2, v0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting unused external storage amount."

    .line 6
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private J(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->o(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->h(Landroid/os/StatFs;)J

    move-result-wide v2

    mul-long v2, v2, v0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting unused internal storage amount."

    .line 6
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private K(Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    :try_start_0
    const-string v0, "plugged"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting device charging state."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private L()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic M()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lio/sentry/android/core/r0;->N()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private N()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/r0;->d:Lio/sentry/android/core/internal/util/j;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/j;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "rooted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lio/sentry/android/core/r0;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "kernelVersion"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    invoke-virtual {v1}, Lio/sentry/android/core/m0;->f()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "emulator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/sentry/android/core/r0;->E()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "sideLoaded"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private O(Lio/sentry/e3;)V
    .locals 4
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/h;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lio/sentry/android/core/r0;->C()Lio/sentry/protocol/h;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/h;)V

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/sentry/protocol/h;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "os_1"

    .line 7
    :goto_0
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private P(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->U()Lio/sentry/protocol/w;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/android/core/r0;->q()Lio/sentry/protocol/w;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->m0(Lio/sentry/protocol/w;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/w;->j()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lio/sentry/android/core/r0;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/w;->q(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Q(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/sentry/protocol/a;

    invoke-direct {v0}, Lio/sentry/protocol/a;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->R(Lio/sentry/protocol/a;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/r0;->Y(Lio/sentry/e3;Lio/sentry/protocol/a;)V

    .line 5
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/a;)V

    return-void
.end method

.method private R(Lio/sentry/protocol/a;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/r0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->s(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/i0;->c()Lio/sentry/j3;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/k;->n(Lio/sentry/j3;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->t(Ljava/util/Date;)V

    return-void
.end method

.method private S(Lio/sentry/protocol/a;Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p1    # Lio/sentry/protocol/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->r(Ljava/lang/String;)V

    .line 2
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->u(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    invoke-static {p2, v0}, Lio/sentry/android/core/n0;->d(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/m0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->q(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    invoke-virtual {v0}, Lio/sentry/android/core/m0;->d()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 7
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v1, :cond_2

    .line 8
    array-length v2, v1

    if-lez v2, :cond_2

    if-eqz p2, :cond_2

    array-length v2, p2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 10
    aget-object v4, v1, v3

    const/16 v5, 0x2e

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 12
    aget v5, p2, v3

    const/4 v7, 0x2

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    const-string v5, "granted"

    goto :goto_2

    :cond_1
    const-string v5, "not_granted"

    .line 13
    :goto_2
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->x(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private T(Lio/sentry/protocol/Device;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/Device;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->k0([Ljava/lang/String;)V

    return-void
.end method

.method private U(Lio/sentry/e3;ZZ)V
    .locals 0
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->P(Lio/sentry/e3;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/r0;->V(Lio/sentry/e3;ZZ)V

    .line 3
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->O(Lio/sentry/e3;)V

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->Z(Lio/sentry/e3;)V

    return-void
.end method

.method private V(Lio/sentry/e3;ZZ)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Lio/sentry/android/core/r0;->r(ZZ)Lio/sentry/protocol/Device;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    :cond_0
    return-void
.end method

.method private W(Lio/sentry/protocol/Device;Z)V
    .locals 5
    .param p1    # Lio/sentry/protocol/Device;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/r0;->i()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->j(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->l0(Ljava/lang/Float;)V

    .line 3
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->K(Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->p0(Ljava/lang/Boolean;)V

    .line 4
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->k(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->m0(Ljava/lang/Float;)V

    .line 5
    :cond_0
    sget-object v0, Lio/sentry/android/core/r0$a;->a:[I

    iget-object v1, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->b(Landroid/content/Context;Lio/sentry/o0;)Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->F0(Ljava/lang/Boolean;)V

    .line 9
    invoke-direct {p0}, Lio/sentry/android/core/r0;->A()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->B(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->B0(Ljava/lang/Long;)V

    if-eqz p2, :cond_3

    .line 11
    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/Device;->u0(Ljava/lang/Long;)V

    .line 12
    iget-boolean p2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/Device;->z0(Ljava/lang/Boolean;)V

    .line 13
    :cond_3
    iget-object p2, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->H(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->M0(Ljava/lang/Long;)V

    .line 16
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->J(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->v0(Ljava/lang/Long;)V

    .line 17
    :cond_4
    invoke-direct {p0, p2}, Lio/sentry/android/core/r0;->x(Ljava/io/File;)Landroid/os/StatFs;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 18
    invoke-direct {p0, p2}, Lio/sentry/android/core/r0;->G(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->s0(Ljava/lang/Long;)V

    .line 19
    invoke-direct {p0, p2}, Lio/sentry/android/core/r0;->I(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/Device;->r0(Ljava/lang/Long;)V

    .line 20
    :cond_5
    invoke-virtual {p1}, Lio/sentry/protocol/Device;->K()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 21
    iget-object p2, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 22
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    invoke-static {p2, v0, v1}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->c(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/m0;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lio/sentry/protocol/Device;->q0(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private X(Lio/sentry/e3;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->G()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lio/sentry/e3;->Z(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Y(Lio/sentry/e3;Lio/sentry/protocol/a;)V
    .locals 4
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    const/16 v3, 0x1000

    .line 3
    invoke-static {v0, v3, v1, v2}, Lio/sentry/android/core/n0;->b(Landroid/content/Context;ILio/sentry/o0;Lio/sentry/android/core/m0;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lio/sentry/android/core/r0;->c:Lio/sentry/android/core/m0;

    invoke-static {v0, v1}, Lio/sentry/android/core/n0;->d(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/m0;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/r0;->X(Lio/sentry/e3;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/r0;->S(Lio/sentry/protocol/a;Landroid/content/pm/PackageInfo;)V

    :cond_0
    return-void
.end method

.method private Z(Lio/sentry/e3;)V
    .locals 3
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/r0;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "sideLoaded"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/sentry/e3;->j0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting side loaded info."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a0(Lio/sentry/h4;)V
    .locals 2
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/h4;->D0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/sentry/h4;->D0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/t;

    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/t;->o()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->e()Lio/sentry/android/core/internal/util/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/android/core/internal/util/b;->c(Lio/sentry/protocol/t;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/t;->r(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b0(Lio/sentry/e3;Lio/sentry/b0;)Z
    .locals 3
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lio/sentry/util/h;->s(Lio/sentry/b0;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "Event was cached so not applying data relevant to the current app execution/version: %s"

    .line 5
    invoke-interface {p2, v1, p1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static synthetic c(Lio/sentry/android/core/r0;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/core/r0;->M()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting application name."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private g(Landroid/os/StatFs;)I
    .locals 0
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    return p1
.end method

.method private h(Landroid/os/StatFs;)J
    .locals 2
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()Landroid/content/Intent;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "level"

    const/4 v2, -0x1

    .line 1
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 2
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq v1, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    mul-float v1, v1, v2

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting device battery level."

    invoke-interface {v1, v2, v3, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private k(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    :try_start_0
    const-string v0, "temperature"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting battery temperature."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private l(Landroid/os/StatFs;)I
    .locals 0
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCount()I

    move-result p1

    return p1
.end method

.method private m(Landroid/os/StatFs;)J
    .locals 2
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private n(Landroid/os/StatFs;)I
    .locals 0
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    return p1
.end method

.method private o(Landroid/os/StatFs;)J
    .locals 2
    .param p1    # Landroid/os/StatFs;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private p()Ljava/util/Date;
    .locals 5
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/sentry/k;->d(J)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error getting the device\'s boot time."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private r(ZZ)Lio/sentry/protocol/Device;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/sentry/android/core/r0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->E0(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->A0(Ljava/lang/String;)V

    .line 5
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->o0(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lio/sentry/android/core/r0;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->t0(Ljava/lang/String;)V

    .line 7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->C0(Ljava/lang/String;)V

    .line 8
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->D0(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lio/sentry/android/core/r0;->T(Lio/sentry/protocol/Device;)V

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0, v0, p2}, Lio/sentry/android/core/r0;->W(Lio/sentry/protocol/Device;Z)V

    .line 12
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/r0;->D()Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Device;->G0(Lio/sentry/protocol/Device$DeviceOrientation;)V

    .line 13
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/core/r0;->b:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p2, "emulator"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Device;->L0(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting emulator."

    invoke-interface {p2, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/core/r0;->u()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/Device;->K0(Ljava/lang/Integer;)V

    .line 18
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/Device;->J0(Ljava/lang/Integer;)V

    .line 19
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/Device;->H0(Ljava/lang/Float;)V

    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Device;->I0(Ljava/lang/Integer;)V

    .line 21
    :cond_3
    invoke-direct {p0}, Lio/sentry/android/core/r0;->p()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Device;->n0(Ljava/util/Date;)V

    .line 22
    invoke-direct {p0}, Lio/sentry/android/core/r0;->F()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Device;->N0(Ljava/util/TimeZone;)V

    .line 23
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->Q()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 24
    invoke-direct {p0}, Lio/sentry/android/core/r0;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Device;->w0(Ljava/lang/String;)V

    .line 25
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 26
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->R()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 27
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/Device;->x0(Ljava/lang/String;)V

    .line 28
    :cond_5
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->S()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 29
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Device;->y0(Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private s()Ljava/lang/String;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/sentry/android/core/w0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting installationId."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private t()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private u()Landroid/util/DisplayMetrics;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting DisplayMetrics."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private v()[Ljava/io/File;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/r0;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private w(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/r0;->v()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 3
    :goto_0
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-object v4

    .line 6
    :cond_4
    iget-object p1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Not possible to read getExternalFilesDirs"

    invoke-interface {p1, v0, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v1
.end method

.method private x(Ljava/io/File;)Landroid/os/StatFs;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/r0;->L()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->w(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Not possible to read external files directory"

    invoke-interface {p1, v0, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "External storage is not mounted or emulated."

    invoke-interface {p1, v0, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private y()Ljava/lang/String;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting device family."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 5
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "os.version"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lio/sentry/android/core/r0;->e:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Exception while attempting to read kernel information"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/r0;->b0(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->Q(Lio/sentry/e3;)V

    .line 3
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->a0(Lio/sentry/h4;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/r0;->U(Lio/sentry/e3;ZZ)V

    return-object p1
.end method

.method public b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 1
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/r0;->b0(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/r0;->Q(Lio/sentry/e3;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/r0;->U(Lio/sentry/e3;ZZ)V

    return-object p1
.end method

.method public q()Lio/sentry/protocol/w;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/protocol/w;

    invoke-direct {v0}, Lio/sentry/protocol/w;-><init>()V

    .line 2
    invoke-direct {p0}, Lio/sentry/android/core/r0;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/w;->q(Ljava/lang/String;)V

    return-object v0
.end method
