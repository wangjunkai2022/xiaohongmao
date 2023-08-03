.class public final Lio/sentry/android/core/d0;
.super Ljava/lang/Object;
.source "AnrIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/d0$a;
    }
.end annotation


# static fields
.field private static c:Lio/sentry/android/core/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lio/sentry/SentryOptions;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/android/core/d0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/android/core/d0;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/d0;Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/d0;->i(Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)V

    return-void
.end method

.method private d(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)Ljava/lang/Throwable;
    .locals 3
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/k0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANR for at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Background "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    new-instance p1, Lio/sentry/android/core/k0;

    invoke-virtual {p3}, Lio/sentry/android/core/k0;->a()Ljava/lang/Thread;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lio/sentry/android/core/k0;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 4
    new-instance p2, Lio/sentry/protocol/f;

    invoke-direct {p2}, Lio/sentry/protocol/f;-><init>()V

    const-string p3, "ANR"

    .line 5
    invoke-virtual {p2, p3}, Lio/sentry/protocol/f;->v(Ljava/lang/String;)V

    .line 6
    new-instance p3, Lio/sentry/exception/ExceptionMechanismException;

    invoke-virtual {p1}, Lio/sentry/android/core/k0;->a()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, p2, p1, v0, v1}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/f;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-object p3
.end method

.method private synthetic i(Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/core/d0;->p(Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)V

    return-void
.end method

.method private k(Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 15
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object v1, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AnrIntegration enabled: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v0, v2, v3, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v3, Lio/sentry/android/core/d0;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 5
    :try_start_0
    sget-object v0, Lio/sentry/android/core/d0;->c:Lio/sentry/android/core/b;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual/range {p2 .. p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    const-string v5, "ANR timeout in milliseconds: %d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v7

    .line 8
    invoke-interface {v0, v2, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lio/sentry/android/core/b;

    .line 10
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v9

    .line 11
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v11

    new-instance v12, Lio/sentry/android/core/c0;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct {v12, p0, v4, v5}, Lio/sentry/android/core/c0;-><init>(Lio/sentry/android/core/d0;Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 12
    invoke-virtual/range {p2 .. p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v13

    iget-object v14, v1, Lio/sentry/android/core/d0;->a:Landroid/content/Context;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/sentry/android/core/b;-><init>(JZLio/sentry/android/core/b$a;Lio/sentry/o0;Landroid/content/Context;)V

    sput-object v0, Lio/sentry/android/core/d0;->c:Lio/sentry/android/core/b;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    invoke-virtual/range {p2 .. p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    const-string v4, "AnrIntegration installed."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "SentryOptions is required"

    .line 1
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/SentryOptions;

    .line 2
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/d0;->k(Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/android/core/d0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lio/sentry/android/core/d0;->c:Lio/sentry/android/core/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lio/sentry/android/core/d0;->c:Lio/sentry/android/core/b;

    .line 5
    iget-object v1, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AnrIntegration removed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method h()Lio/sentry/android/core/b;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    sget-object v0, Lio/sentry/android/core/d0;->c:Lio/sentry/android/core/b;

    return-object v0
.end method

.method p(Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)V
    .locals 5
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/k0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/k;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ANR triggered with message: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lio/sentry/android/core/j0;->a()Lio/sentry/android/core/j0;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/j0;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3
    invoke-direct {p0, v0, p2, p3}, Lio/sentry/android/core/d0;->d(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)Ljava/lang/Throwable;

    move-result-object p2

    .line 4
    new-instance p3, Lio/sentry/h4;

    invoke-direct {p3, p2}, Lio/sentry/h4;-><init>(Ljava/lang/Throwable;)V

    .line 5
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p3, p2}, Lio/sentry/h4;->L0(Lio/sentry/SentryLevel;)V

    .line 6
    new-instance p2, Lio/sentry/android/core/d0$a;

    invoke-direct {p2, v0}, Lio/sentry/android/core/d0$a;-><init>(Z)V

    .line 7
    invoke-static {p2}, Lio/sentry/util/h;->e(Ljava/lang/Object;)Lio/sentry/b0;

    move-result-object p2

    .line 8
    invoke-interface {p1, p3, p2}, Lio/sentry/n0;->j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    return-void
.end method
