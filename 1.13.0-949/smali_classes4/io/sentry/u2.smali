.class public final Lio/sentry/u2;
.super Ljava/lang/Object;
.source "SendCachedEnvelopeFireAndForgetIntegration.java"

# interfaces
.implements Lio/sentry/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/u2$c;,
        Lio/sentry/u2$a;,
        Lio/sentry/u2$b;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/u2$c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/u2$c;)V
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

    iput-object p1, p0, Lio/sentry/u2;->a:Lio/sentry/u2$c;

    return-void
.end method

.method public static synthetic b(Lio/sentry/u2$a;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/u2;->c(Lio/sentry/u2$a;Lio/sentry/SentryOptions;)V

    return-void
.end method

.method private static synthetic c(Lio/sentry/u2$a;Lio/sentry/SentryOptions;)V
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
.method public final a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 3
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
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/sentry/u2;->a:Lio/sentry/u2$c;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/sentry/u2$c;->c(Ljava/lang/String;Lio/sentry/o0;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "No cache dir path is defined in options."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/sentry/u2;->a:Lio/sentry/u2$c;

    invoke-interface {v0, p1, p2}, Lio/sentry/u2$c;->b(Lio/sentry/n0;Lio/sentry/SentryOptions;)Lio/sentry/u2$a;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SendFireAndForget factory is null."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object v0

    new-instance v2, Lio/sentry/t2;

    invoke-direct {v2, p1, p2}, Lio/sentry/t2;-><init>(Lio/sentry/u2$a;Lio/sentry/SentryOptions;)V

    .line 9
    invoke-interface {v0, v2}, Lio/sentry/t0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 10
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "SendCachedEventFireAndForgetIntegration installed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to call the executor. Cached events will not be sent"

    .line 13
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
