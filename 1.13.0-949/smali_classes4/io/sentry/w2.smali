.class public final synthetic Lio/sentry/w2;
.super Ljava/lang/Object;
.source "SendCachedEnvelopeFireAndForgetIntegration.java"


# direct methods
.method public static a(Lio/sentry/u2$c;Ljava/lang/String;Lio/sentry/o0;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "No cached dir path is defined in options."

    invoke-interface {p2, p0, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lio/sentry/u2$c;Lio/sentry/p;Ljava/lang/String;Lio/sentry/o0;)Lio/sentry/u2$a;
    .locals 1
    .param p1    # Lio/sentry/p;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/sentry/v2;

    invoke-direct {v0, p3, p2, p1, p0}, Lio/sentry/v2;-><init>(Lio/sentry/o0;Ljava/lang/String;Lio/sentry/p;Ljava/io/File;)V

    return-object v0
.end method

.method public static synthetic c(Lio/sentry/o0;Ljava/lang/String;Lio/sentry/p;Ljava/io/File;)V
    .locals 5

    .line 1
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Started processing cached files from %s"

    invoke-interface {p0, v0, v4, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2, p3}, Lio/sentry/p;->e(Ljava/io/File;)V

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "Finished processing cached files from %s"

    .line 3
    invoke-interface {p0, v0, p1, p2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
