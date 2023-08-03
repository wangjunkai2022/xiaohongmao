.class final Lio/sentry/p4;
.super Ljava/lang/Object;
.source "SentryRuntimeEventProcessor.java"

# interfaces
.implements Lio/sentry/z;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "java.version"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/p4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/p4;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/sentry/p4;->b:Ljava/lang/String;

    return-void
.end method

.method private c(Lio/sentry/e3;)Lio/sentry/e3;
    .locals 2
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/e3;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getRuntime()Lio/sentry/protocol/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    new-instance v1, Lio/sentry/protocol/p;

    invoke-direct {v1}, Lio/sentry/protocol/p;-><init>()V

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/p;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getRuntime()Lio/sentry/protocol/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/sentry/protocol/p;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/sentry/protocol/p;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lio/sentry/p4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/p;->g(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lio/sentry/p4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/p;->i(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 0
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

    invoke-direct {p0, p1}, Lio/sentry/p4;->c(Lio/sentry/e3;)Lio/sentry/e3;

    move-result-object p1

    check-cast p1, Lio/sentry/h4;

    return-object p1
.end method

.method public b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 0
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-direct {p0, p1}, Lio/sentry/p4;->c(Lio/sentry/e3;)Lio/sentry/e3;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/u;

    return-object p1
.end method
