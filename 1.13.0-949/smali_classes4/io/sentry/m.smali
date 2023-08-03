.class public final Lio/sentry/m;
.super Ljava/lang/Object;
.source "DefaultTransactionPerformanceCollector.java"

# interfaces
.implements Lio/sentry/s5;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final g:J = 0x64L

.field private static final h:J = 0x7530L


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile b:Ljava/util/Timer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/k2;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/j0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/m;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "The options object is required."

    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/m;->e:Lio/sentry/SentryOptions;

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCollectors()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/m;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Lio/sentry/m;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/m;->g(Lio/sentry/w0;)V

    return-void
.end method

.method static synthetic d(Lio/sentry/m;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/sentry/m;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lio/sentry/m;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/m;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lio/sentry/m;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic g(Lio/sentry/w0;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/m;->a(Lio/sentry/w0;)Lio/sentry/k2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/sentry/m;->c:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/w0;)Lio/sentry/k2;
    .locals 3
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/k2;

    .line 4
    iget-object v1, p0, Lio/sentry/m;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 8
    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lio/sentry/w0;)V
    .locals 10
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/m;->e:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "No collector found. Performance stats will not be captured during transactions."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/sentry/k2;

    invoke-direct {v2}, Lio/sentry/k2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lio/sentry/m;->e:Lio/sentry/SentryOptions;

    .line 8
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object v0

    new-instance v1, Lio/sentry/l;

    invoke-direct {v1, p0, p1}, Lio/sentry/l;-><init>(Lio/sentry/m;Lio/sentry/w0;)V

    const-wide/16 v2, 0x7530

    .line 9
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/t0;->b(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 10
    :cond_1
    iget-object p1, p0, Lio/sentry/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lio/sentry/m;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    if-nez v1, :cond_2

    .line 13
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 14
    :cond_2
    iget-object v0, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    new-instance v1, Lio/sentry/m$a;

    invoke-direct {v1, p0}, Lio/sentry/m$a;-><init>(Lio/sentry/m;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 15
    iget-object v4, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    new-instance v5, Lio/sentry/m$b;

    invoke-direct {v5, p0}, Lio/sentry/m$b;-><init>(Lio/sentry/m;)V

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x64

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 16
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method
