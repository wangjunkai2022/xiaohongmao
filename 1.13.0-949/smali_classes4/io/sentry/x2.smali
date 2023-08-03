.class public final Lio/sentry/x2;
.super Ljava/lang/Object;
.source "SendFireAndForgetEnvelopeSender.java"

# interfaces
.implements Lio/sentry/u2$c;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/u2$b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/u2$b;)V
    .locals 1
    .param p1    # Lio/sentry/u2$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SendFireAndForgetDirPath is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/u2$b;

    iput-object p1, p0, Lio/sentry/x2;->a:Lio/sentry/u2$b;

    return-void
.end method


# virtual methods
.method public synthetic a(Lio/sentry/p;Ljava/lang/String;Lio/sentry/o0;)Lio/sentry/u2$a;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/w2;->b(Lio/sentry/u2$c;Lio/sentry/p;Ljava/lang/String;Lio/sentry/o0;)Lio/sentry/u2$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/n0;Lio/sentry/SentryOptions;)Lio/sentry/u2$a;
    .locals 8
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "Hub is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryOptions is required"

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/sentry/x2;->a:Lio/sentry/u2$b;

    invoke-interface {v0}, Lio/sentry/u2$b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/sentry/x2;->c(Ljava/lang/String;Lio/sentry/o0;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/sentry/x;

    .line 6
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v4

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v5

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v6

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lio/sentry/x;-><init>(Lio/sentry/n0;Lio/sentry/u0;Lio/sentry/o0;J)V

    .line 7
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lio/sentry/x2;->a(Lio/sentry/p;Ljava/lang/String;Lio/sentry/o0;)Lio/sentry/u2$a;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No cache dir path is defined in options."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;Lio/sentry/o0;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/w2;->a(Lio/sentry/u2$c;Ljava/lang/String;Lio/sentry/o0;)Z

    move-result p1

    return p1
.end method
