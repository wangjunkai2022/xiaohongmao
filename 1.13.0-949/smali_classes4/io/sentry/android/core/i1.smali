.class final Lio/sentry/android/core/i1;
.super Ljava/lang/Object;
.source "SendCachedEnvelopeIntegration.java"

# interfaces
.implements Lio/sentry/z0;


# instance fields
.field private final a:Lio/sentry/u2$c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Z


# direct methods
.method public constructor <init>(Lio/sentry/u2$c;Z)V
    .locals 1
    .param p1    # Lio/sentry/u2$c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SendFireAndForgetFactory is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/u2$c;

    iput-object p1, p0, Lio/sentry/android/core/i1;->a:Lio/sentry/u2$c;

    .line 3
    iput-boolean p2, p0, Lio/sentry/android/core/i1;->b:Z

    return-void
.end method

.method public static synthetic b(Lio/sentry/u2$a;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/core/i1;->c(Lio/sentry/u2$a;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method private static synthetic c(Lio/sentry/u2$a;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Lio/sentry/u2$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed trying to send cached events."

    .line 3
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 5
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "Hub is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 3
    invoke-static {v0, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lio/sentry/android/core/i1;->a:Lio/sentry/u2$c;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lio/sentry/u2$c;->c(Ljava/lang/String;Lio/sentry/o0;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "No cache dir path is defined in options."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object p2, p0, Lio/sentry/android/core/i1;->a:Lio/sentry/u2$c;

    .line 8
    invoke-interface {p2, p1, v0}, Lio/sentry/u2$c;->b(Lio/sentry/n0;Lio/sentry/SentryOptions;)Lio/sentry/u2$a;

    move-result-object p1

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "SendFireAndForget factory is null."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object p2

    new-instance v1, Lio/sentry/android/core/h1;

    invoke-direct {v1, p1, v0}, Lio/sentry/android/core/h1;-><init>(Lio/sentry/u2$a;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 11
    invoke-interface {p2, v1}, Lio/sentry/t0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 12
    iget-boolean p2, p0, Lio/sentry/android/core/i1;->b:Z

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Startup Crash marker exists, blocking flush."

    new-array v4, v2, [Ljava/lang/Object;

    .line 14
    invoke-interface {p2, v1, v3, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashFlushTimeoutMillis()J

    move-result-wide v3

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v3, v4, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 16
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Synchronous send timed out, continuing in the background."

    new-array v3, v2, [Ljava/lang/Object;

    .line 17
    invoke-interface {p1, p2, v1, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "SendCachedEnvelopeIntegration installed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to call the executor. Cached events will not be sent"

    .line 20
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
