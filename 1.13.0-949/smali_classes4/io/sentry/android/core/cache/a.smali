.class public final Lio/sentry/android/core/cache/a;
.super Lio/sentry/cache/d;
.source "AndroidEnvelopeCache.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final m:Lio/sentry/transport/o;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/sentry/android/core/internal/util/a;->b()Lio/sentry/transport/o;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/cache/a;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/o;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/o;)V
    .locals 2
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/transport/o;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cacheDirPath must not be null"

    invoke-static {v0, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxCacheItems()I

    move-result v1

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/cache/d;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    .line 5
    iput-object p2, p0, Lio/sentry/android/core/cache/a;->m:Lio/sentry/transport/o;

    return-void
.end method

.method public static E(Lio/sentry/SentryOptions;)Z
    .locals 7
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Outbox path is null, the startup crash marker file does not exist"

    .line 3
    invoke-interface {p0, v0, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startup_crash"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to delete the startup crash marker file. %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 9
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v2

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error reading/deleting the startup crash marker file on the disk"

    .line 11
    invoke-interface {p0, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/cache/a;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/cache/a;->a:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Outbox path is null, the startup crash marker file will not be written"

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/android/core/cache/a;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startup_crash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lio/sentry/android/core/cache/a;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error writing the startup crash marker file to the disk"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public D()Ljava/io/File;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/cache/a;->c:Ljava/io/File;

    return-object v0
.end method

.method public y(Lio/sentry/l3;Lio/sentry/b0;)V
    .locals 5
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lio/sentry/cache/d;->y(Lio/sentry/l3;Lio/sentry/b0;)V

    .line 2
    iget-object p1, p0, Lio/sentry/android/core/cache/a;->a:Lio/sentry/SentryOptions;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/i0;->b()Ljava/lang/Long;

    move-result-object v0

    .line 4
    const-class v1, Lio/sentry/hints/e;

    invoke-static {p2, v1}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p0, Lio/sentry/android/core/cache/a;->m:Lio/sentry/transport/o;

    invoke-interface {p2}, Lio/sentry/transport/o;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 6
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashDurationThresholdMillis()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-gtz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk."

    .line 9
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lio/sentry/android/core/cache/a;->F()V

    :cond_0
    return-void
.end method
