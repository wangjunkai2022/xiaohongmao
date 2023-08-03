.class public abstract Lio/sentry/android/core/u0;
.super Ljava/lang/Object;
.source "EnvelopeFileObserverIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/u0$b;
    }
.end annotation


# instance fields
.field private a:Lio/sentry/android/core/t0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lio/sentry/o0;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/android/core/u0;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/android/core/u0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/core/u0$b;-><init>(Lio/sentry/android/core/u0$a;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 12
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

    const-string v0, "SentryOptions is required"

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/u0;->b:Lio/sentry/o0;

    .line 4
    invoke-virtual {p0, p2}, Lio/sentry/android/core/u0;->d(Lio/sentry/SentryOptions;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/u0;->b:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "Null given as a path to EnvelopeFileObserverIntegration. Nothing will be registered."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/u0;->b:Lio/sentry/o0;

    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    const-string v5, "Registering EnvelopeFileObserverIntegration for path: %s"

    invoke-interface {v2, v10, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance v11, Lio/sentry/j2;

    .line 8
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/k0;

    move-result-object v4

    .line 9
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v5

    iget-object v6, p0, Lio/sentry/android/core/u0;->b:Lio/sentry/o0;

    .line 10
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v7

    move-object v2, v11

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lio/sentry/j2;-><init>(Lio/sentry/n0;Lio/sentry/k0;Lio/sentry/u0;Lio/sentry/o0;J)V

    .line 11
    new-instance v8, Lio/sentry/android/core/t0;

    iget-object v5, p0, Lio/sentry/android/core/u0;->b:Lio/sentry/o0;

    .line 12
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v6

    move-object v2, v8

    move-object v3, v0

    move-object v4, v11

    invoke-direct/range {v2 .. v7}, Lio/sentry/android/core/t0;-><init>(Ljava/lang/String;Lio/sentry/l0;Lio/sentry/o0;J)V

    iput-object v8, p0, Lio/sentry/android/core/u0;->a:Lio/sentry/android/core/t0;

    .line 13
    :try_start_0
    invoke-virtual {v8}, Landroid/os/FileObserver;->startWatching()V

    .line 14
    iget-object v0, p0, Lio/sentry/android/core/u0;->b:Lio/sentry/o0;

    const-string v2, "EnvelopeFileObserverIntegration installed."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v0, v10, v2, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to initialize EnvelopeFileObserverIntegration."

    .line 16
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/u0;->a:Lio/sentry/android/core/t0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/u0;->b:Lio/sentry/o0;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "EnvelopeFileObserverIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method abstract d(Lio/sentry/SentryOptions;)Ljava/lang/String;
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation
.end method
