.class public final Lio/sentry/transport/d;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Lio/sentry/transport/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/d$c;,
        Lio/sentry/transport/d$b;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/transport/w;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/cache/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/transport/z;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/transport/r;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lio/sentry/transport/n;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/transport/z;Lio/sentry/transport/r;Lio/sentry/o2;)V
    .locals 9
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/transport/z;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/transport/r;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/o2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxQueueSize()I

    move-result v0

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/f;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lio/sentry/transport/d;->p(ILio/sentry/cache/f;Lio/sentry/o0;)Lio/sentry/transport/w;

    move-result-object v4

    new-instance v8, Lio/sentry/transport/n;

    invoke-direct {v8, p1, p4, p2}, Lio/sentry/transport/n;-><init>(Lio/sentry/SentryOptions;Lio/sentry/o2;Lio/sentry/transport/z;)V

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 3
    invoke-direct/range {v3 .. v8}, Lio/sentry/transport/d;-><init>(Lio/sentry/transport/w;Lio/sentry/SentryOptions;Lio/sentry/transport/z;Lio/sentry/transport/r;Lio/sentry/transport/n;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/w;Lio/sentry/SentryOptions;Lio/sentry/transport/z;Lio/sentry/transport/r;Lio/sentry/transport/n;)V
    .locals 1
    .param p1    # Lio/sentry/transport/w;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/transport/z;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/transport/r;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lio/sentry/transport/n;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "executor is required"

    .line 5
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/w;

    iput-object p1, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/w;

    .line 6
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/f;

    move-result-object p1

    const-string v0, "envelopeCache is required"

    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/f;

    iput-object p1, p0, Lio/sentry/transport/d;->b:Lio/sentry/cache/f;

    const-string p1, "options is required"

    .line 7
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    const-string p1, "rateLimiter is required"

    .line 8
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/z;

    iput-object p1, p0, Lio/sentry/transport/d;->d:Lio/sentry/transport/z;

    const-string p1, "transportGate is required"

    .line 9
    invoke-static {p4, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/r;

    iput-object p1, p0, Lio/sentry/transport/d;->e:Lio/sentry/transport/r;

    const-string p1, "httpConnection is required"

    .line 10
    invoke-static {p5, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/n;

    iput-object p1, p0, Lio/sentry/transport/d;->f:Lio/sentry/transport/n;

    return-void
.end method

.method public static synthetic a(Lio/sentry/cache/f;Lio/sentry/o0;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/transport/d;->q(Lio/sentry/cache/f;Lio/sentry/o0;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/hints/m;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/transport/d;->r(Lio/sentry/hints/m;)V

    return-void
.end method

.method public static synthetic d(ZLio/sentry/hints/h;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/transport/d;->s(ZLio/sentry/hints/h;)V

    return-void
.end method

.method static synthetic h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    return-object p0
.end method

.method static synthetic i(Lio/sentry/transport/d;)Lio/sentry/transport/r;
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/d;->e:Lio/sentry/transport/r;

    return-object p0
.end method

.method static synthetic k(Lio/sentry/transport/d;)Lio/sentry/transport/n;
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/d;->f:Lio/sentry/transport/n;

    return-object p0
.end method

.method private static p(ILio/sentry/cache/f;Lio/sentry/o0;)Lio/sentry/transport/w;
    .locals 6
    .param p1    # Lio/sentry/cache/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v4, Lio/sentry/transport/c;

    invoke-direct {v4, p1, p2}, Lio/sentry/transport/c;-><init>(Lio/sentry/cache/f;Lio/sentry/o0;)V

    .line 2
    new-instance p1, Lio/sentry/transport/w;

    new-instance v3, Lio/sentry/transport/d$b;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lio/sentry/transport/d$b;-><init>(Lio/sentry/transport/d$a;)V

    const/4 v1, 0x1

    move-object v0, p1

    move v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/sentry/transport/w;-><init>(IILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lio/sentry/o0;)V

    return-object p1
.end method

.method private static synthetic q(Lio/sentry/cache/f;Lio/sentry/o0;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 1
    instance-of p3, p2, Lio/sentry/transport/d$c;

    if-eqz p3, :cond_1

    .line 2
    check-cast p2, Lio/sentry/transport/d$c;

    .line 3
    invoke-static {p2}, Lio/sentry/transport/d$c;->h(Lio/sentry/transport/d$c;)Lio/sentry/b0;

    move-result-object p3

    const-class v0, Lio/sentry/hints/d;

    invoke-static {p3, v0}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    invoke-static {p2}, Lio/sentry/transport/d$c;->i(Lio/sentry/transport/d$c;)Lio/sentry/l3;

    move-result-object p3

    invoke-static {p2}, Lio/sentry/transport/d$c;->h(Lio/sentry/transport/d$c;)Lio/sentry/b0;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/cache/f;->y(Lio/sentry/l3;Lio/sentry/b0;)V

    .line 5
    :cond_0
    invoke-static {p2}, Lio/sentry/transport/d$c;->h(Lio/sentry/transport/d$c;)Lio/sentry/b0;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lio/sentry/transport/d;->y(Lio/sentry/b0;Z)V

    .line 6
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Envelope rejected"

    invoke-interface {p1, p0, p3, p2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic r(Lio/sentry/hints/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/sentry/hints/m;->b(Z)V

    return-void
.end method

.method private static synthetic s(ZLio/sentry/hints/h;)V
    .locals 0

    invoke-interface {p1, p0}, Lio/sentry/hints/h;->c(Z)V

    return-void
.end method

.method private static y(Lio/sentry/b0;Z)V
    .locals 2
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    const-class v0, Lio/sentry/hints/m;

    sget-object v1, Lio/sentry/transport/b;->a:Lio/sentry/transport/b;

    invoke-static {p0, v0, v1}, Lio/sentry/util/h;->n(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;)V

    .line 2
    const-class v0, Lio/sentry/hints/h;

    new-instance v1, Lio/sentry/transport/a;

    invoke-direct {v1, p1}, Lio/sentry/transport/a;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lio/sentry/util/h;->n(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/w;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 2
    iget-object v0, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Shutting down"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/w;

    const-wide/16 v3, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Failed to shutdown the async connection async sender within 1 minute. Trying to force it now."

    new-array v4, v2, [Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/w;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object v0, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    .line 9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Thread interrupted while closing the connection."

    .line 10
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public e(J)V
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/w;

    invoke-virtual {v0, p1, p2}, Lio/sentry/transport/w;->b(J)V

    return-void
.end method

.method public synthetic j0(Lio/sentry/l3;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/transport/p;->a(Lio/sentry/transport/q;Lio/sentry/l3;)V

    return-void
.end method

.method public w(Lio/sentry/l3;Lio/sentry/b0;)V
    .locals 6
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/transport/d;->b:Lio/sentry/cache/f;

    .line 2
    const-class v1, Lio/sentry/hints/d;

    invoke-static {p2, v1}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lio/sentry/transport/s;->a()Lio/sentry/transport/s;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v3, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Captured Envelope is already cached"

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/sentry/transport/d;->d:Lio/sentry/transport/z;

    invoke-virtual {v1, p1, p2}, Lio/sentry/transport/z;->d(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/l3;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    .line 6
    iget-object p2, p0, Lio/sentry/transport/d;->b:Lio/sentry/cache/f;

    invoke-interface {p2, p1}, Lio/sentry/cache/f;->i(Lio/sentry/l3;)V

    goto :goto_0

    .line 7
    :cond_1
    const-class p1, Lio/sentry/hints/e;

    invoke-static {p2, p1}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    .line 9
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/sentry/clientreport/f;->d(Lio/sentry/l3;)Lio/sentry/l3;

    move-result-object v1

    .line 10
    :cond_2
    iget-object p1, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/w;

    new-instance v2, Lio/sentry/transport/d$c;

    invoke-direct {v2, p0, v1, p2, v0}, Lio/sentry/transport/d$c;-><init>(Lio/sentry/transport/d;Lio/sentry/l3;Lio/sentry/b0;Lio/sentry/cache/f;)V

    .line 11
    invoke-virtual {p1, v2}, Lio/sentry/transport/w;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lio/sentry/transport/d;->c:Lio/sentry/SentryOptions;

    .line 14
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 15
    invoke-interface {p1, p2, v1}, Lio/sentry/clientreport/f;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/l3;)V

    :cond_3
    :goto_0
    return-void
.end method
