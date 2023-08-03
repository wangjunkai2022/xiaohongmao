.class public final Lio/sentry/h0;
.super Ljava/lang/Object;
.source "Hub.java"

# interfaces
.implements Lio/sentry/n0;


# instance fields
.field private volatile a:Lio/sentry/protocol/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile c:Z

.field private final d:Lio/sentry/i5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/n5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Lio/sentry/util/m<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/sentry/v0;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lio/sentry/s5;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/sentry/h0;->j0(Lio/sentry/SentryOptions;)Lio/sentry/i5$a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/h0;-><init>(Lio/sentry/SentryOptions;Lio/sentry/i5$a;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/i5$a;)V
    .locals 2
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/i5$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 12
    new-instance v0, Lio/sentry/i5;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/sentry/i5;-><init>(Lio/sentry/o0;Lio/sentry/i5$a;)V

    invoke-direct {p0, p1, v0}, Lio/sentry/h0;-><init>(Lio/sentry/SentryOptions;Lio/sentry/i5;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/i5;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/i5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/h0;->f:Ljava/util/Map;

    .line 5
    invoke-static {p1}, Lio/sentry/h0;->n0(Lio/sentry/SentryOptions;)V

    .line 6
    iput-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 7
    new-instance v0, Lio/sentry/n5;

    invoke-direct {v0, p1}, Lio/sentry/n5;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/h0;->e:Lio/sentry/n5;

    .line 8
    iput-object p2, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    .line 9
    sget-object p2, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    iput-object p2, p0, Lio/sentry/h0;->a:Lio/sentry/protocol/n;

    .line 10
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransactionPerformanceCollector()Lio/sentry/s5;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/h0;->g:Lio/sentry/s5;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/sentry/h0;->c:Z

    return-void
.end method

.method public static synthetic d0(Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/h0;->m0(Lio/sentry/w0;Lio/sentry/r2;)V

    return-void
.end method

.method private e0(Lio/sentry/h4;)V
    .locals 3
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/e3;->S()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->f:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lio/sentry/e3;->S()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/util/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/m;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/f5;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/v0;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-interface {v1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/f5;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lio/sentry/util/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lio/sentry/h4;->F0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Lio/sentry/h4;->R0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f0(Lio/sentry/r2;Lio/sentry/s2;)Lio/sentry/r2;
    .locals 3
    .param p1    # Lio/sentry/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s2;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lio/sentry/r2;

    invoke-direct {v0, p1}, Lio/sentry/r2;-><init>(Lio/sentry/r2;)V

    .line 2
    invoke-interface {p2, v0}, Lio/sentry/s2;->a(Lio/sentry/r2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p2

    .line 3
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'ScopeCallback\' callback."

    invoke-interface {v0, v1, v2, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method private g0(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 4
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    .line 2
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureEvent\' call is a no-op."

    .line 5
    invoke-interface {p1, p2, v1, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "captureEvent called with null parameter."

    invoke-interface {p1, p2, v1, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/h0;->e0(Lio/sentry/h4;)V

    .line 8
    iget-object v1, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v1}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lio/sentry/h0;->f0(Lio/sentry/r2;Lio/sentry/s2;)Lio/sentry/r2;

    move-result-object p3

    .line 10
    invoke-virtual {v1}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v1

    invoke-interface {v1, p1, p3, p2}, Lio/sentry/s0;->c(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lio/sentry/h0;->a:Lio/sentry/protocol/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 12
    iget-object p3, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 13
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while capturing event with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {p3, v1, p1, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private h0(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    .line 2
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureException\' call is a no-op."

    .line 5
    invoke-interface {p1, p2, v1, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "captureException called with null parameter."

    invoke-interface {p1, p2, v1, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v1}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v1

    .line 8
    new-instance v2, Lio/sentry/h4;

    invoke-direct {v2, p1}, Lio/sentry/h4;-><init>(Ljava/lang/Throwable;)V

    .line 9
    invoke-direct {p0, v2}, Lio/sentry/h0;->e0(Lio/sentry/h4;)V

    .line 10
    invoke-virtual {v1}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lio/sentry/h0;->f0(Lio/sentry/r2;Lio/sentry/s2;)Lio/sentry/r2;

    move-result-object p3

    .line 11
    invoke-virtual {v1}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v1

    invoke-interface {v1, v2, p3, p2}, Lio/sentry/s0;->c(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 12
    iget-object p3, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 13
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while capturing exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {p3, v1, p1, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    iput-object v0, p0, Lio/sentry/h0;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method private i0(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    .line 2
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureMessage\' call is a no-op."

    .line 5
    invoke-interface {p1, p2, v1, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "captureMessage called with null parameter."

    invoke-interface {p1, p2, v1, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v1}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lio/sentry/h0;->f0(Lio/sentry/r2;Lio/sentry/s2;)Lio/sentry/r2;

    move-result-object p3

    .line 9
    invoke-virtual {v1}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lio/sentry/s0;->u(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 10
    iget-object p3, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while capturing message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    iput-object v0, p0, Lio/sentry/h0;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method private static j0(Lio/sentry/SentryOptions;)Lio/sentry/i5$a;
    .locals 3
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lio/sentry/h0;->n0(Lio/sentry/SentryOptions;)V

    .line 2
    new-instance v0, Lio/sentry/r2;

    invoke-direct {v0, p0}, Lio/sentry/r2;-><init>(Lio/sentry/SentryOptions;)V

    .line 3
    new-instance v1, Lio/sentry/h3;

    invoke-direct {v1, p0}, Lio/sentry/h3;-><init>(Lio/sentry/SentryOptions;)V

    .line 4
    new-instance v2, Lio/sentry/i5$a;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/i5$a;-><init>(Lio/sentry/SentryOptions;Lio/sentry/s0;Lio/sentry/r2;)V

    return-object v2
.end method

.method private k0(Lio/sentry/p5;Lio/sentry/j;ZLio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;)Lio/sentry/w0;
    .locals 12
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lio/sentry/q5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    move-object v9, p0

    move-object v1, p1

    const-string v0, "transactionContext is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, v9, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'startTransaction\' returns a no-op."

    .line 5
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lio/sentry/c2;->K()Lio/sentry/c2;

    move-result-object v0

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, v9, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/p5;->v()Lio/sentry/Instrumenter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, v9, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lio/sentry/p5;->v()Lio/sentry/Instrumenter;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x1

    iget-object v2, v9, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 11
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s"

    .line 12
    invoke-interface {v0, v3, v1, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lio/sentry/c2;->K()Lio/sentry/c2;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, v9, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, v9, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 16
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Tracing is disabled and this \'startTransaction\' returns a no-op."

    .line 17
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lio/sentry/c2;->K()Lio/sentry/c2;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Lio/sentry/q2;

    move-object v2, p2

    invoke-direct {v0, p1, p2}, Lio/sentry/q2;-><init>(Lio/sentry/p5;Lio/sentry/j;)V

    .line 20
    iget-object v2, v9, Lio/sentry/h0;->e:Lio/sentry/n5;

    invoke-virtual {v2, v0}, Lio/sentry/n5;->a(Lio/sentry/q2;)Lio/sentry/o5;

    move-result-object v10

    .line 21
    invoke-virtual {p1, v10}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    .line 22
    new-instance v11, Lio/sentry/a5;

    iget-object v8, v9, Lio/sentry/h0;->g:Lio/sentry/s5;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lio/sentry/a5;-><init>(Lio/sentry/p5;Lio/sentry/n0;Lio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;Lio/sentry/s5;)V

    .line 23
    invoke-virtual {v10}, Lio/sentry/o5;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Lio/sentry/o5;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, v9, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/x0;

    move-result-object v0

    .line 25
    invoke-interface {v0, v11}, Lio/sentry/x0;->b(Lio/sentry/w0;)V

    :cond_3
    move-object v0, v11

    :goto_0
    if-eqz p3, :cond_4

    .line 26
    new-instance v1, Lio/sentry/g0;

    invoke-direct {v1, v0}, Lio/sentry/g0;-><init>(Lio/sentry/w0;)V

    invoke-virtual {p0, v1}, Lio/sentry/h0;->t(Lio/sentry/s2;)V

    :cond_4
    return-object v0
.end method

.method private static synthetic m0(Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-virtual {p1, p0}, Lio/sentry/r2;->O(Lio/sentry/w0;)V

    return-void
.end method

.method private static n0(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "SentryOptions is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hub requires a DSN to be instantiated. Considering using the NoOpHub if no DSN is available."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()Lio/sentry/SentryOptions;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->b()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method

.method public B()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'clearBreadcrumbs\' call is a no-op."

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/r2;->g()V

    :goto_0
    return-void
.end method

.method public synthetic C(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->b(Lio/sentry/n0;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic D(Ljava/lang/String;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->j(Lio/sentry/n0;Ljava/lang/String;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public E()Lio/sentry/v4;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'traceHeaders\' call is a no-op."

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/r2;->u()Lio/sentry/v0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lio/sentry/v0;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-interface {v0}, Lio/sentry/v0;->d()Lio/sentry/v4;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public synthetic F(Ljava/lang/String;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->i(Lio/sentry/n0;Ljava/lang/String;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic G(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/m0;->r(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public H()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'endSession\' call is a no-op."

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/r2;->j()Lio/sentry/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v2, Lio/sentry/hints/j;

    invoke-direct {v2}, Lio/sentry/hints/j;-><init>()V

    invoke-static {v2}, Lio/sentry/util/h;->e(Ljava/lang/Object;)Lio/sentry/b0;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lio/sentry/s0;->r(Lio/sentry/Session;Lio/sentry/b0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public I(Lio/sentry/SentryLevel;)V
    .locals 3
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setLevel\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/r2;->L(Lio/sentry/SentryLevel;)V

    :goto_0
    return-void
.end method

.method public J()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/h0;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method public synthetic K(Lio/sentry/h4;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->f(Lio/sentry/n0;Lio/sentry/h4;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic L(Lio/sentry/p5;)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->n(Lio/sentry/n0;Lio/sentry/p5;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic M(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->q(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public N(Lio/sentry/p5;Lio/sentry/r5;)Lio/sentry/w0;
    .locals 9
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/sentry/r5;->a()Lio/sentry/j;

    move-result-object v2

    .line 2
    invoke-virtual {p2}, Lio/sentry/r5;->e()Z

    move-result v3

    .line 3
    invoke-virtual {p2}, Lio/sentry/r5;->c()Lio/sentry/j3;

    move-result-object v4

    .line 4
    invoke-virtual {p2}, Lio/sentry/r5;->g()Z

    move-result v5

    .line 5
    invoke-virtual {p2}, Lio/sentry/r5;->b()Ljava/lang/Long;

    move-result-object v6

    .line 6
    invoke-virtual {p2}, Lio/sentry/r5;->f()Z

    move-result v7

    .line 7
    invoke-virtual {p2}, Lio/sentry/r5;->d()Lio/sentry/q5;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-direct/range {v0 .. v8}, Lio/sentry/h0;->k0(Lio/sentry/p5;Lio/sentry/j;ZLio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic O(Ljava/lang/Throwable;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->h(Lio/sentry/n0;Ljava/lang/Throwable;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public P(Lio/sentry/s0;)V
    .locals 5
    .param p1    # Lio/sentry/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'bindClient\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 6
    iget-object v2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "New client bound to scope."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, p1}, Lio/sentry/i5$a;->d(Lio/sentry/s0;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "NoOp client bound to scope."

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lio/sentry/v1;->v()Lio/sentry/v1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/i5$a;->d(Lio/sentry/s0;)V

    :goto_0
    return-void
.end method

.method public Q()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/i3;->a()Lio/sentry/i3;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 2
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/sentry/i3;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R(Lio/sentry/p5;Z)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->p(Lio/sentry/n0;Lio/sentry/p5;Z)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public S(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/h0;->g0(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic T(Lio/sentry/p5;Lio/sentry/j;)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->o(Lio/sentry/n0;Lio/sentry/p5;Lio/sentry/j;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic U(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->k(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public V(Lio/sentry/s2;)V
    .locals 3
    .param p1    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'withScope\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/sentry/h0;->w()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/s2;->a(Lio/sentry/r2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'withScope\' callback."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lio/sentry/h0;->z()V

    :goto_1
    return-void
.end method

.method public W(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/h0;->i0(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public X(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setTransaction\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/r2;->P(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transaction cannot be null"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic Y(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/m0;->s(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic Z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->c(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'setTag\' call is a no-op."

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/r2;->N(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "setTag called with null parameter."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a0(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;
    .locals 8
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/m5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/m2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "transaction is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    .line 3
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string p4, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    .line 6
    invoke-interface {p1, p2, p4, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lio/sentry/protocol/u;->C0()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 8
    iget-object p2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 9
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p4, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    aput-object p1, p4, v2

    const-string p1, "Transaction: %s is not finished and this \'captureTransaction\' call is a no-op."

    .line 11
    invoke-interface {p2, p3, p1, p4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/sentry/protocol/u;->D0()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    iget-object p2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 14
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array p4, v3, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    aput-object p1, p4, v2

    const-string p1, "Transaction %s was dropped due to sampling decision."

    .line 16
    invoke-interface {p2, p3, p1, p4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 18
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object p3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 19
    invoke-interface {p1, p2, p3}, Lio/sentry/clientreport/f;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_0

    .line 20
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v1}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v2

    .line 22
    invoke-virtual {v1}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 23
    invoke-interface/range {v2 .. v7}, Lio/sentry/s0;->t(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 24
    iget-object p3, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 25
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    sget-object p4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while capturing transaction with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-interface {p3, p4, p1, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'removeExtra\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeExtra called with null parameter."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/r2;->A(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'startSession\' call is a no-op."

    .line 4
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/r2;->R()Lio/sentry/r2$c;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lio/sentry/r2$c;->b()Lio/sentry/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Lio/sentry/hints/j;

    invoke-direct {v1}, Lio/sentry/hints/j;-><init>()V

    invoke-static {v1}, Lio/sentry/util/h;->e(Ljava/lang/Object;)Lio/sentry/b0;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v3

    invoke-virtual {v2}, Lio/sentry/r2$c;->b()Lio/sentry/Session;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lio/sentry/s0;->r(Lio/sentry/Session;Lio/sentry/b0;)V

    .line 10
    :cond_1
    new-instance v1, Lio/sentry/hints/l;

    invoke-direct {v1}, Lio/sentry/hints/l;-><init>()V

    invoke-static {v1}, Lio/sentry/util/h;->e(Ljava/lang/Object;)Lio/sentry/b0;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v0

    invoke-virtual {v2}, Lio/sentry/r2$c;->a()Lio/sentry/Session;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lio/sentry/s0;->r(Lio/sentry/Session;Lio/sentry/b0;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Session could not be started."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'removeTag\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeTag called with null parameter."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/r2;->B(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic c0(Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/m0;->t(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lio/sentry/n0;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Disabled Hub cloned."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance v0, Lio/sentry/h0;

    iget-object v1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    new-instance v2, Lio/sentry/i5;

    iget-object v3, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-direct {v2, v3}, Lio/sentry/i5;-><init>(Lio/sentry/i5;)V

    invoke-direct {v0, v1, v2}, Lio/sentry/h0;-><init>(Lio/sentry/SentryOptions;Lio/sentry/i5;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->clone()Lio/sentry/n0;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'close\' call is a no-op."

    .line 4
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/z0;

    .line 6
    instance-of v3, v2, Ljava/io/Closeable;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/sentry/t0;->a(J)V

    .line 9
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/s0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    iget-object v2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error while closing the Hub."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_1
    iput-boolean v1, p0, Lio/sentry/h0;->c:Z

    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'setExtra\' call is a no-op."

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/r2;->J(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "setExtra called with null parameter."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public e(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'flush\' call is a no-op."

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/s0;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error in the \'client.flush\'."

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public f(Lio/sentry/protocol/w;)V
    .locals 3
    .param p1    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setUser\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/r2;->Q(Lio/sentry/protocol/w;)V

    :goto_0
    return-void
.end method

.method public synthetic g(Lio/sentry/f;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->a(Lio/sentry/n0;Lio/sentry/f;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/h0;->i0(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Lio/sentry/l3;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->d(Lio/sentry/n0;Lio/sentry/l3;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/h0;->c:Z

    return v0
.end method

.method public j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/h0;->g0(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Lio/sentry/h4;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->e(Lio/sentry/n0;Lio/sentry/h4;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->l(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method l0(Ljava/lang/Throwable;)Lio/sentry/f5;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "throwable is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/sentry/util/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/sentry/h0;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/util/m;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/v0;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic m(Ljava/lang/Throwable;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->g(Lio/sentry/n0;Ljava/lang/Throwable;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/h0;->h0(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 3
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "SentryEnvelope is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    .line 3
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'captureEnvelope\' call is a no-op."

    .line 6
    invoke-interface {p1, p2, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    .line 8
    invoke-virtual {v1}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lio/sentry/s0;->o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error while capturing envelope."

    invoke-interface {p2, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public p(Lio/sentry/w5;)V
    .locals 5
    .param p1    # Lio/sentry/w5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'captureUserFeedback\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/s0;->p(Lio/sentry/w5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 8
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing captureUserFeedback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lio/sentry/w5;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {v1, v2, p1, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/h0;->h0(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic r(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/m0;->m(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public s(Lio/sentry/f;Lio/sentry/b0;)V
    .locals 2
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'addBreadcrumb\' call is a no-op."

    .line 4
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "addBreadcrumb called with null parameter."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/r2;->c(Lio/sentry/f;Lio/sentry/b0;)V

    :goto_0
    return-void
.end method

.method public t(Lio/sentry/s2;)V
    .locals 3
    .param p1    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/s2;->a(Lio/sentry/r2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'configureScope\' callback."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public u()Lio/sentry/v0;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'getSpan\' call is a no-op."

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/r2;->u()Lio/sentry/v0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public v(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;
    .locals 9
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lio/sentry/h0;->k0(Lio/sentry/p5;Lio/sentry/j;ZLio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public w()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'pushScope\' call is a no-op."

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    .line 6
    new-instance v1, Lio/sentry/i5$a;

    iget-object v2, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 7
    invoke-virtual {v0}, Lio/sentry/i5$a;->a()Lio/sentry/s0;

    move-result-object v3

    new-instance v4, Lio/sentry/r2;

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-direct {v4, v0}, Lio/sentry/r2;-><init>(Lio/sentry/r2;)V

    invoke-direct {v1, v2, v3, v4}, Lio/sentry/i5$a;-><init>(Lio/sentry/SentryOptions;Lio/sentry/s0;Lio/sentry/r2;)V

    .line 8
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0, v1}, Lio/sentry/i5;->c(Lio/sentry/i5$a;)V

    :goto_0
    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setFingerprint\' call is a no-op."

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setFingerprint called with null parameter."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->a()Lio/sentry/i5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i5$a;->c()Lio/sentry/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/r2;->K(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public y(Ljava/lang/Throwable;Lio/sentry/v0;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/v0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "throwable is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "span is required"

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "transactionName is required"

    .line 3
    invoke-static {p3, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lio/sentry/util/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/sentry/h0;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/sentry/h0;->f:Ljava/util/Map;

    new-instance v1, Lio/sentry/util/m;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p3}, Lio/sentry/util/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public z()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/h0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/h0;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'popScope\' call is a no-op."

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h0;->d:Lio/sentry/i5;

    invoke-virtual {v0}, Lio/sentry/i5;->b()V

    :goto_0
    return-void
.end method
