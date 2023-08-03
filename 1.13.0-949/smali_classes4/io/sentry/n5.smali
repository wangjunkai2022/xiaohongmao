.class final Lio/sentry/n5;
.super Ljava/lang/Object;
.source "TracesSampler.java"


# instance fields
.field private final a:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/security/SecureRandom;
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

    const-string v0, "options are required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/n5;-><init>(Lio/sentry/SentryOptions;Ljava/security/SecureRandom;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/security/SecureRandom;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/k;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    .line 4
    iput-object p2, p0, Lio/sentry/n5;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method private b(Ljava/lang/Double;)Z
    .locals 4
    .param p1    # Ljava/lang/Double;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lio/sentry/n5;->b:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method a(Lio/sentry/q2;)Lio/sentry/o5;
    .locals 7
    .param p1    # Lio/sentry/q2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/q2;->b()Lio/sentry/p5;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/f5;->f()Lio/sentry/o5;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/SentryOptions$d;->a(Lio/sentry/q2;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v2, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error in the \'ProfilesSamplerCallback\' callback."

    .line 6
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-direct {p0, v0}, Lio/sentry/n5;->b(Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$f;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10
    :try_start_1
    iget-object v3, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$f;

    move-result-object v3

    invoke-interface {v3, p1}, Lio/sentry/SentryOptions$f;->a(Lio/sentry/q2;)Ljava/lang/Double;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 11
    iget-object v4, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    .line 12
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Error in the \'TracesSamplerCallback\' callback."

    .line 13
    invoke-interface {v4, v5, v6, v3}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 14
    new-instance p1, Lio/sentry/o5;

    .line 15
    invoke-direct {p0, v3}, Lio/sentry/n5;->b(Ljava/lang/Double;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v1, v3, v2, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object p1

    .line 16
    :cond_4
    invoke-virtual {p1}, Lio/sentry/q2;->b()Lio/sentry/p5;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/p5;->y()Lio/sentry/o5;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 17
    :cond_5
    iget-object p1, p0, Lio/sentry/n5;->a:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 18
    new-instance v1, Lio/sentry/o5;

    .line 19
    invoke-direct {p0, p1}, Lio/sentry/n5;->b(Ljava/lang/Double;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3, p1, v2, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object v1

    .line 20
    :cond_6
    new-instance p1, Lio/sentry/o5;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v0, v1}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object p1
.end method
