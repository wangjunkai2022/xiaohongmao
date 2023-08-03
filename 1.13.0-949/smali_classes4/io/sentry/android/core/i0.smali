.class public final Lio/sentry/android/core/i0;
.super Ljava/lang/Object;
.source "AppStartState.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static e:Lio/sentry/android/core/i0; = null
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final f:I = 0xea60


# instance fields
.field private a:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Lio/sentry/j3;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/i0;

    invoke-direct {v0}, Lio/sentry/android/core/i0;-><init>()V

    sput-object v0, Lio/sentry/android/core/i0;->e:Lio/sentry/android/core/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/i0;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static d()Lio/sentry/android/core/i0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/android/core/i0;->e:Lio/sentry/android/core/i0;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Long;
    .locals 6
    .annotation build Lm8/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/i0;->a:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/i0;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lio/sentry/android/core/i0;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lio/sentry/android/core/i0;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/i0;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/i0;->d:Lio/sentry/j3;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/i0;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public declared-synchronized f()V
    .locals 1
    .annotation build Lm8/k;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lio/sentry/android/core/i0;->d:Lio/sentry/j3;

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/i0;->a:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Lio/sentry/android/core/i0;->b:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()V
    .locals 1
    .annotation build Lm8/k;
    .end annotation

    new-instance v0, Lio/sentry/android/core/i0;

    invoke-direct {v0}, Lio/sentry/android/core/i0;-><init>()V

    sput-object v0, Lio/sentry/android/core/i0;->e:Lio/sentry/android/core/i0;

    return-void
.end method

.method declared-synchronized h()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/i0;->i(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method i(J)V
    .locals 0
    .annotation build Lm8/k;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/i0;->b:Ljava/lang/Long;

    return-void
.end method

.method public declared-synchronized j(J)V
    .locals 0
    .annotation build Lm8/k;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/i0;->a:Ljava/lang/Long;
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

.method declared-synchronized k(JLio/sentry/j3;)V
    .locals 1
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/i0;->d:Lio/sentry/j3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/i0;->a:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput-object p3, p0, Lio/sentry/android/core/i0;->d:Lio/sentry/j3;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/i0;->a:Ljava/lang/Long;
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

.method declared-synchronized l(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/i0;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/i0;->c:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
