.class public final synthetic Lio/sentry/m0;
.super Ljava/lang/Object;
.source "IHub.java"


# direct methods
.method public static a(Lio/sentry/n0;Lio/sentry/f;)V
    .locals 1
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    return-void
.end method

.method public static b(Lio/sentry/n0;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    new-instance v0, Lio/sentry/f;

    invoke-direct {v0, p1}, Lio/sentry/f;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    return-void
.end method

.method public static c(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0, p1}, Lio/sentry/f;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0, v0}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    return-void
.end method

.method public static d(Lio/sentry/n0;Lio/sentry/l3;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/n0;->o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lio/sentry/n0;Lio/sentry/h4;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/n0;->j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lio/sentry/n0;Lio/sentry/h4;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/n0;->S(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lio/sentry/n0;Ljava/lang/Throwable;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/n0;->n(Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lio/sentry/n0;Ljava/lang/Throwable;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/n0;->q(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lio/sentry/n0;Ljava/lang/String;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-interface {p0, p1, v0}, Lio/sentry/n0;->h(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lio/sentry/n0;Ljava/lang/String;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/n0;->W(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/protocol/u;
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

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/n0;->r(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;
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

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/n0;->r(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
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
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lio/sentry/n0;->a0(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lio/sentry/n0;Lio/sentry/p5;)Lio/sentry/w0;
    .locals 1
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lio/sentry/n0;->R(Lio/sentry/p5;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lio/sentry/n0;Lio/sentry/p5;Lio/sentry/j;)Lio/sentry/w0;
    .locals 1
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

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/n0;->v(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lio/sentry/n0;Lio/sentry/p5;Z)Lio/sentry/w0;
    .locals 1
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/n0;->v(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/n0;->G(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lio/sentry/n0;->Y(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/p5;

    invoke-direct {v0, p1, p2}, Lio/sentry/p5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p3, p4}, Lio/sentry/n0;->v(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lio/sentry/n0;->Y(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method
