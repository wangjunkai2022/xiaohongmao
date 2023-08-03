.class public final Lio/sentry/android/core/p;
.super Ljava/lang/Object;
.source "AndroidCpuCollector.java"

# interfaces
.implements Lio/sentry/j0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private final e:J

.field private f:D

.field private final g:Ljava/io/File;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lio/sentry/o0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lio/sentry/android/core/m0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Lio/sentry/o0;Lio/sentry/android/core/m0;)V
    .locals 4
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/sentry/android/core/p;->a:J

    .line 3
    iput-wide v0, p0, Lio/sentry/android/core/p;->b:J

    const-wide/16 v0, 0x1

    .line 4
    iput-wide v0, p0, Lio/sentry/android/core/p;->c:J

    .line 5
    iput-wide v0, p0, Lio/sentry/android/core/p;->d:J

    const-wide/32 v2, 0x3b9aca00

    .line 6
    iput-wide v2, p0, Lio/sentry/android/core/p;->e:J

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    .line 7
    iput-wide v2, p0, Lio/sentry/android/core/p;->f:D

    .line 8
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/stat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/p;->g:Ljava/io/File;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lio/sentry/android/core/p;->j:Z

    const-string v0, "Logger is required."

    .line 10
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/o0;

    iput-object p1, p0, Lio/sentry/android/core/p;->h:Lio/sentry/o0;

    const-string p1, "BuildInfoProvider is required."

    .line 11
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/m0;

    iput-object p1, p0, Lio/sentry/android/core/p;->i:Lio/sentry/android/core/m0;

    return-void
.end method

.method private c()J
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/p;->g:Ljava/io/File;

    invoke-static {v0}, Lio/sentry/util/c;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lio/sentry/android/core/p;->j:Z

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/p;->h:Lio/sentry/o0;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Unable to read /proc/self/stat file. Disabling cpu collection."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[\n\t\r ]"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    .line 6
    :try_start_1
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/16 v5, 0xe

    .line 7
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0xf

    .line 8
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/16 v9, 0x10

    .line 9
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    add-long/2addr v3, v9

    long-to-double v3, v3

    .line 10
    iget-wide v0, p0, Lio/sentry/android/core/p;->f:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    mul-double v3, v3, v0

    double-to-long v0, v3

    return-wide v0

    :catch_1
    move-exception v0

    .line 11
    iget-object v3, p0, Lio/sentry/android/core/p;->h:Lio/sentry/o0;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error parsing /proc/self/stat file."

    invoke-interface {v3, v4, v5, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide v1
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/p;->i:Lio/sentry/android/core/m0;

    invoke-virtual {v0}, Lio/sentry/android/core/m0;->d()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/p;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/sentry/android/core/p;->j:Z

    .line 4
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/p;->c:J

    .line 5
    sget v0, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/p;->d:J

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 6
    iget-wide v2, p0, Lio/sentry/android/core/p;->c:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/android/core/p;->f:D

    .line 7
    invoke-direct {p0}, Lio/sentry/android/core/p;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/p;->b:J

    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 7
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/sentry/k2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/p;->i:Lio/sentry/android/core/m0;

    invoke-virtual {v0}, Lio/sentry/android/core/m0;->d()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lio/sentry/android/core/p;->j:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lio/sentry/android/core/p;->a:J

    sub-long v2, v0, v2

    .line 4
    iput-wide v0, p0, Lio/sentry/android/core/p;->a:J

    .line 5
    invoke-direct {p0}, Lio/sentry/android/core/p;->c()J

    move-result-wide v0

    .line 6
    iget-wide v4, p0, Lio/sentry/android/core/p;->b:J

    sub-long v4, v0, v4

    .line 7
    iput-wide v0, p0, Lio/sentry/android/core/p;->b:J

    long-to-double v0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 8
    new-instance v2, Lio/sentry/i;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lio/sentry/android/core/p;->d:J

    long-to-double v5, v5

    div-double/2addr v0, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v5

    invoke-direct {v2, v3, v4, v0, v1}, Lio/sentry/i;-><init>(JD)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/k2;

    .line 11
    invoke-virtual {v0, v2}, Lio/sentry/k2;->a(Lio/sentry/i;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
