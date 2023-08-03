.class public final synthetic Lio/sentry/r0;
.super Ljava/lang/Object;
.source "ISentryClient.java"


# direct methods
.method public static a(Lio/sentry/s0;Lio/sentry/l3;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lio/sentry/s0;->o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/sentry/s0;Lio/sentry/h4;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v0}, Lio/sentry/s0;->c(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lio/sentry/s0;Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;
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

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/s0;->c(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lio/sentry/s0;Lio/sentry/h4;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/s0;->c(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lio/sentry/s0;Ljava/lang/Throwable;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v0}, Lio/sentry/s0;->d(Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;
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

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/s0;->d(Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/s0;->d(Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/h4;

    invoke-direct {v0, p1}, Lio/sentry/h4;-><init>(Ljava/lang/Throwable;)V

    .line 2
    invoke-interface {p0, v0, p2, p3}, Lio/sentry/s0;->c(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lio/sentry/s0;Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;
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

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/s0;->u(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lio/sentry/s0;Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/h4;

    invoke-direct {v0}, Lio/sentry/h4;-><init>()V

    .line 2
    new-instance v1, Lio/sentry/protocol/g;

    invoke-direct {v1}, Lio/sentry/protocol/g;-><init>()V

    .line 3
    invoke-virtual {v1, p1}, Lio/sentry/protocol/g;->g(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/sentry/h4;->N0(Lio/sentry/protocol/g;)V

    .line 5
    invoke-virtual {v0, p2}, Lio/sentry/h4;->L0(Lio/sentry/SentryLevel;)V

    .line 6
    invoke-interface {p0, v0, p3}, Lio/sentry/s0;->b(Lio/sentry/h4;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lio/sentry/s0;Lio/sentry/Session;)V
    .locals 1
    .param p1    # Lio/sentry/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lio/sentry/s0;->r(Lio/sentry/Session;Lio/sentry/b0;)V

    return-void
.end method

.method public static l(Lio/sentry/s0;Lio/sentry/protocol/u;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v0, v0}, Lio/sentry/s0;->a(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lio/sentry/s0;Lio/sentry/protocol/u;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2, p3}, Lio/sentry/s0;->a(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lio/sentry/s0;Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/m5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, v0}, Lio/sentry/s0;->a(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lio/sentry/s0;Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 6
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/m5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lio/sentry/s0;->t(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method
