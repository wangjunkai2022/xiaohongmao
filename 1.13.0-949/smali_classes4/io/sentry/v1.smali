.class final Lio/sentry/v1;
.super Ljava/lang/Object;
.source "NoOpSentryClient.java"

# interfaces
.implements Lio/sentry/s0;


# static fields
.field private static final a:Lio/sentry/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/v1;

    invoke-direct {v0}, Lio/sentry/v1;-><init>()V

    sput-object v0, Lio/sentry/v1;->a:Lio/sentry/v1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static v()Lio/sentry/v1;
    .locals 1

    sget-object v0, Lio/sentry/v1;->a:Lio/sentry/v1;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/r0;->o(Lio/sentry/s0;Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lio/sentry/h4;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/r0;->d(Lio/sentry/s0;Lio/sentry/h4;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public c(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Lio/sentry/h4;
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

    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public synthetic d(Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/r0;->h(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public e(J)V
    .locals 0

    return-void
.end method

.method public synthetic f(Lio/sentry/protocol/u;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/r0;->l(Lio/sentry/s0;Lio/sentry/protocol/u;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Lio/sentry/Session;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/r0;->k(Lio/sentry/s0;Lio/sentry/Session;)V

    return-void
.end method

.method public synthetic h(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/r0;->i(Lio/sentry/s0;Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Lio/sentry/l3;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/r0;->a(Lio/sentry/s0;Lio/sentry/l3;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/r0;->c(Lio/sentry/s0;Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Lio/sentry/h4;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/r0;->b(Lio/sentry/s0;Lio/sentry/h4;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/r0;->n(Lio/sentry/s0;Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Ljava/lang/Throwable;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/r0;->e(Lio/sentry/s0;Ljava/lang/Throwable;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/r0;->f(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1
.end method

.method public p(Lio/sentry/w5;)V
    .locals 0
    .param p1    # Lio/sentry/w5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public synthetic q(Lio/sentry/protocol/u;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/r0;->m(Lio/sentry/s0;Lio/sentry/protocol/u;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public r(Lio/sentry/Session;Lio/sentry/b0;)V
    .locals 0
    .param p1    # Lio/sentry/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public synthetic s(Ljava/lang/Throwable;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/r0;->g(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public t(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;
    .locals 0
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
    .param p5    # Lio/sentry/m2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1
.end method

.method public synthetic u(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/r0;->j(Lio/sentry/s0;Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method
