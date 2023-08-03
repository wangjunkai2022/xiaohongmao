.class final Lio/sentry/transport/d$c;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/sentry/l3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/b0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/cache/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/transport/c0;

.field final synthetic e:Lio/sentry/transport/d;


# direct methods
.method constructor <init>(Lio/sentry/transport/d;Lio/sentry/l3;Lio/sentry/b0;Lio/sentry/cache/f;)V
    .locals 0
    .param p1    # Lio/sentry/transport/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/sentry/transport/c0;->a()Lio/sentry/transport/c0;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/transport/d$c;->d:Lio/sentry/transport/c0;

    const-string p1, "Envelope is required."

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/l3;

    iput-object p1, p0, Lio/sentry/transport/d$c;->a:Lio/sentry/l3;

    .line 4
    iput-object p3, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    const-string p1, "EnvelopeCache is required."

    .line 5
    invoke-static {p4, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/f;

    iput-object p1, p0, Lio/sentry/transport/d$c;->c:Lio/sentry/cache/f;

    return-void
.end method

.method public static synthetic a(Lio/sentry/transport/d$c;Lio/sentry/l3;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/transport/d$c;->n(Lio/sentry/l3;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/transport/d$c;Lio/sentry/l3;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/transport/d$c;->l(Lio/sentry/l3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/transport/d$c;Lio/sentry/hints/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/transport/d$c;->k(Lio/sentry/hints/e;)V

    return-void
.end method

.method public static synthetic d(Lio/sentry/transport/d$c;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/transport/d$c;->p(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic e(Lio/sentry/hints/h;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/transport/d$c;->m(Lio/sentry/hints/h;)V

    return-void
.end method

.method public static synthetic f(Lio/sentry/hints/h;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/transport/d$c;->o(Lio/sentry/hints/h;)V

    return-void
.end method

.method public static synthetic g(Lio/sentry/transport/d$c;Lio/sentry/transport/c0;Lio/sentry/hints/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/transport/d$c;->q(Lio/sentry/transport/c0;Lio/sentry/hints/m;)V

    return-void
.end method

.method static synthetic h(Lio/sentry/transport/d$c;)Lio/sentry/b0;
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    return-object p0
.end method

.method static synthetic i(Lio/sentry/transport/d$c;)Lio/sentry/l3;
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/d$c;->a:Lio/sentry/l3;

    return-object p0
.end method

.method private j()Lio/sentry/transport/c0;
    .locals 7
    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lio/sentry/hints/h;

    iget-object v1, p0, Lio/sentry/transport/d$c;->d:Lio/sentry/transport/c0;

    .line 2
    iget-object v2, p0, Lio/sentry/transport/d$c;->c:Lio/sentry/cache/f;

    iget-object v3, p0, Lio/sentry/transport/d$c;->a:Lio/sentry/l3;

    iget-object v4, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    invoke-interface {v2, v3, v4}, Lio/sentry/cache/f;->y(Lio/sentry/l3;Lio/sentry/b0;)V

    .line 3
    iget-object v2, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    const-class v3, Lio/sentry/hints/e;

    new-instance v4, Lio/sentry/transport/e;

    invoke-direct {v4, p0}, Lio/sentry/transport/e;-><init>(Lio/sentry/transport/d$c;)V

    invoke-static {v2, v3, v4}, Lio/sentry/util/h;->n(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;)V

    .line 4
    iget-object v2, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v2}, Lio/sentry/transport/d;->i(Lio/sentry/transport/d;)Lio/sentry/transport/r;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/transport/r;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    .line 6
    invoke-static {v1}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/transport/d$c;->a:Lio/sentry/l3;

    invoke-interface {v1, v2}, Lio/sentry/clientreport/f;->d(Lio/sentry/l3;)Lio/sentry/l3;

    move-result-object v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v2}, Lio/sentry/transport/d;->k(Lio/sentry/transport/d;)Lio/sentry/transport/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/transport/n;->i(Lio/sentry/l3;)Lio/sentry/transport/c0;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lio/sentry/transport/c0;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, p0, Lio/sentry/transport/d$c;->c:Lio/sentry/cache/f;

    iget-object v4, p0, Lio/sentry/transport/d$c;->a:Lio/sentry/l3;

    invoke-interface {v3, v4}, Lio/sentry/cache/f;->i(Lio/sentry/l3;)V

    move-object v1, v2

    goto :goto_0

    .line 10
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The transport failed to send the envelope with response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v2}, Lio/sentry/transport/c0;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v4}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3, v6}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Lio/sentry/transport/c0;->c()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_1

    invoke-virtual {v2}, Lio/sentry/transport/c0;->c()I

    move-result v2

    const/16 v4, 0x1ad

    if-eq v2, v4, :cond_1

    .line 14
    iget-object v2, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    new-instance v4, Lio/sentry/transport/k;

    invoke-direct {v4, p0, v1}, Lio/sentry/transport/k;-><init>(Lio/sentry/transport/d$c;Lio/sentry/l3;)V

    invoke-static {v2, v0, v4}, Lio/sentry/util/h;->m(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$c;)V

    .line 15
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 16
    iget-object v3, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    sget-object v4, Lio/sentry/transport/g;->a:Lio/sentry/transport/g;

    new-instance v5, Lio/sentry/transport/j;

    invoke-direct {v5, p0, v1}, Lio/sentry/transport/j;-><init>(Lio/sentry/transport/d$c;Lio/sentry/l3;)V

    invoke-static {v3, v0, v4, v5}, Lio/sentry/util/h;->o(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;Lio/sentry/util/h$b;)V

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sending the event failed."

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18
    :cond_2
    iget-object v2, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    sget-object v3, Lio/sentry/transport/h;->a:Lio/sentry/transport/h;

    new-instance v4, Lio/sentry/transport/i;

    invoke-direct {v4, p0}, Lio/sentry/transport/i;-><init>(Lio/sentry/transport/d$c;)V

    invoke-static {v2, v0, v3, v4}, Lio/sentry/util/h;->o(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;Lio/sentry/util/h$b;)V

    :goto_0
    return-object v1
.end method

.method private synthetic k(Lio/sentry/hints/e;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/hints/e;->a()V

    .line 2
    iget-object p1, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {p1}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Disk flush envelope fired"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic l(Lio/sentry/l3;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {p2}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p2

    sget-object v0, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 3
    invoke-interface {p2, v0, p1}, Lio/sentry/clientreport/f;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/l3;)V

    return-void
.end method

.method private static synthetic m(Lio/sentry/hints/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lio/sentry/hints/h;->c(Z)V

    return-void
.end method

.method private synthetic n(Lio/sentry/l3;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v0}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lio/sentry/util/k;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/o0;)V

    .line 2
    iget-object p2, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {p2}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p2

    sget-object p3, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 4
    invoke-interface {p2, p3, p1}, Lio/sentry/clientreport/f;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/l3;)V

    return-void
.end method

.method private static synthetic o(Lio/sentry/hints/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lio/sentry/hints/h;->c(Z)V

    return-void
.end method

.method private synthetic p(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v0}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lio/sentry/util/k;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/o0;)V

    .line 2
    iget-object p1, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {p1}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    iget-object v0, p0, Lio/sentry/transport/d$c;->a:Lio/sentry/l3;

    .line 4
    invoke-interface {p1, p2, v0}, Lio/sentry/clientreport/f;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/l3;)V

    return-void
.end method

.method private synthetic q(Lio/sentry/transport/c0;Lio/sentry/hints/m;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v0}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lio/sentry/transport/c0;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Marking envelope submission result: %s"

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lio/sentry/transport/c0;->d()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/sentry/hints/m;->b(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-class v0, Lio/sentry/hints/m;

    iget-object v1, p0, Lio/sentry/transport/d$c;->d:Lio/sentry/transport/c0;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/sentry/transport/d$c;->j()Lio/sentry/transport/c0;

    move-result-object v1

    .line 3
    iget-object v3, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v3}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Envelope flushed"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v2, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    new-instance v3, Lio/sentry/transport/f;

    invoke-direct {v3, p0, v1}, Lio/sentry/transport/f;-><init>(Lio/sentry/transport/d$c;Lio/sentry/transport/c0;)V

    invoke-static {v2, v0, v3}, Lio/sentry/util/h;->n(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;)V

    return-void

    :catchall_0
    move-exception v3

    .line 5
    :try_start_1
    iget-object v4, p0, Lio/sentry/transport/d$c;->e:Lio/sentry/transport/d;

    invoke-static {v4}, Lio/sentry/transport/d;->h(Lio/sentry/transport/d;)Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Envelope submission failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3, v6, v2}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 7
    iget-object v3, p0, Lio/sentry/transport/d$c;->b:Lio/sentry/b0;

    new-instance v4, Lio/sentry/transport/f;

    invoke-direct {v4, p0, v1}, Lio/sentry/transport/f;-><init>(Lio/sentry/transport/d$c;Lio/sentry/transport/c0;)V

    invoke-static {v3, v0, v4}, Lio/sentry/util/h;->n(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;)V

    .line 8
    throw v2
.end method
