.class public final Lio/sentry/h3;
.super Ljava/lang/Object;
.source "SentryClient.java"

# interfaces
.implements Lio/sentry/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/h3$b;
    }
.end annotation


# static fields
.field static final f:Ljava/lang/String; = "7"


# instance fields
.field private a:Z

.field private final b:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/transport/q;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Ljava/security/SecureRandom;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final e:Lio/sentry/h3$b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/sentry/h3$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/h3$b;-><init>(Lio/sentry/h3$a;)V

    iput-object v0, p0, Lio/sentry/h3;->e:Lio/sentry/h3$b;

    const-string v0, "SentryOptions is required."

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/sentry/h3;->a:Z

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransportFactory()Lio/sentry/y0;

    move-result-object v0

    .line 6
    instance-of v2, v0, Lio/sentry/f2;

    if-eqz v2, :cond_0

    .line 7
    new-instance v0, Lio/sentry/a;

    invoke-direct {v0}, Lio/sentry/a;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setTransportFactory(Lio/sentry/y0;)V

    .line 9
    :cond_0
    new-instance v2, Lio/sentry/p2;

    invoke-direct {v2, p1}, Lio/sentry/p2;-><init>(Lio/sentry/SentryOptions;)V

    .line 10
    invoke-virtual {v2}, Lio/sentry/p2;->a()Lio/sentry/o2;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lio/sentry/y0;->a(Lio/sentry/SentryOptions;Lio/sentry/o2;)Lio/sentry/transport/q;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/h3;->c:Lio/sentry/transport/q;

    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    iput-object v1, p0, Lio/sentry/h3;->d:Ljava/security/SecureRandom;

    return-void
.end method

.method private A(Lio/sentry/e3;Ljava/util/List;Lio/sentry/Session;Lio/sentry/m5;Lio/sentry/m2;)Lio/sentry/l3;
    .locals 5
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/Session;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/m5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lio/sentry/m2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/e3;",
            "Ljava/util/List<",
            "Lio/sentry/b;",
            ">;",
            "Lio/sentry/Session;",
            "Lio/sentry/m5;",
            "Lio/sentry/m2;",
            ")",
            "Lio/sentry/l3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v2

    invoke-static {v2, p1}, Lio/sentry/f4;->v(Lio/sentry/u0;Lio/sentry/e3;)Lio/sentry/f4;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 6
    iget-object v2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 7
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v2

    invoke-static {v2, p3}, Lio/sentry/f4;->x(Lio/sentry/u0;Lio/sentry/Session;)Lio/sentry/f4;

    move-result-object p3

    .line 8
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p5, :cond_2

    .line 9
    iget-object p3, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 10
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getMaxTraceFileSize()J

    move-result-wide v2

    iget-object p3, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object p3

    .line 11
    invoke-static {p5, v2, v3, p3}, Lio/sentry/f4;->w(Lio/sentry/m2;JLio/sentry/u0;)Lio/sentry/f4;

    move-result-object p3

    .line 12
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_2

    .line 13
    new-instance p1, Lio/sentry/protocol/n;

    invoke-virtual {p5}, Lio/sentry/m2;->P()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/sentry/protocol/n;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/sentry/b;

    .line 15
    iget-object p5, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 16
    invoke-virtual {p5}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object p5

    iget-object v2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 17
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 18
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMaxAttachmentSize()J

    move-result-wide v3

    .line 19
    invoke-static {p5, v2, p3, v3, v4}, Lio/sentry/f4;->t(Lio/sentry/u0;Lio/sentry/o0;Lio/sentry/b;J)Lio/sentry/f4;

    move-result-object p3

    .line 20
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 22
    new-instance p2, Lio/sentry/m3;

    iget-object p3, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 23
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object p3

    invoke-direct {p2, p1, p3, p4}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/m5;)V

    .line 24
    new-instance p1, Lio/sentry/l3;

    invoke-direct {p1, p2, v0}, Lio/sentry/l3;-><init>(Lio/sentry/m3;Ljava/lang/Iterable;)V

    return-object p1

    :cond_4
    return-object v1
.end method

.method private B(Lio/sentry/w5;)Lio/sentry/l3;
    .locals 3
    .param p1    # Lio/sentry/w5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v1

    invoke-static {v1, p1}, Lio/sentry/f4;->y(Lio/sentry/u0;Lio/sentry/w5;)Lio/sentry/f4;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lio/sentry/m3;

    .line 6
    invoke-virtual {p1}, Lio/sentry/w5;->c()Lio/sentry/protocol/n;

    move-result-object p1

    iget-object v2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;)V

    .line 7
    new-instance p1, Lio/sentry/l3;

    invoke-direct {p1, v1, v0}, Lio/sentry/l3;-><init>(Lio/sentry/m3;Ljava/lang/Iterable;)V

    return-object p1
.end method

.method private C(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 3
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSend()Lio/sentry/SentryOptions$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$b;->a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 3
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue."

    .line 5
    invoke-interface {v0, v1, v2, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "BeforeSend callback failed."

    .line 7
    invoke-virtual {v0, v1}, Lio/sentry/f;->x(Ljava/lang/String;)V

    const-string v1, "SentryClient"

    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 9
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "sentry:message"

    invoke-virtual {v0, v1, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_0
    invoke-virtual {p1, v0}, Lio/sentry/e3;->B(Lio/sentry/f;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private D(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 3
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSendTransaction()Lio/sentry/SentryOptions$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$c;->a(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 4
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "The BeforeSendTransaction callback threw an exception. It will be added as breadcrumb and continue."

    .line 6
    invoke-interface {v0, v1, v2, p2}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "BeforeSendTransaction callback failed."

    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/f;->x(Ljava/lang/String;)V

    const-string v1, "SentryClient"

    .line 9
    invoke-virtual {v0, v1}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "sentry:message"

    invoke-virtual {v0, v1, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_0
    invoke-virtual {p1, v0}, Lio/sentry/e3;->B(Lio/sentry/f;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private E(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/b;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/b;

    .line 3
    invoke-virtual {v1}, Lio/sentry/b;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private F(Lio/sentry/b0;)Ljava/util/List;
    .locals 2
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/b0;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/b0;->g()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/sentry/b0;->h()Lio/sentry/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/sentry/b0;->i()Lio/sentry/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static synthetic G(Lio/sentry/Session;)V
    .locals 0

    return-void
.end method

.method private synthetic H(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/Session;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 1
    invoke-virtual {p1}, Lio/sentry/h4;->G0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    sget-object v3, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-eq v3, v1, :cond_1

    invoke-virtual {p1}, Lio/sentry/h4;->H0()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lio/sentry/e3;->N()Lio/sentry/protocol/i;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lio/sentry/e3;->N()Lio/sentry/protocol/i;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/i;->p()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {p1}, Lio/sentry/e3;->N()Lio/sentry/protocol/i;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/i;->p()Ljava/util/Map;

    move-result-object v3

    const-string v4, "user-agent"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p1}, Lio/sentry/e3;->N()Lio/sentry/protocol/i;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/i;->p()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p1, v2

    .line 7
    :goto_1
    invoke-static {p2}, Lio/sentry/util/h;->f(Lio/sentry/b0;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    instance-of v4, v3, Lio/sentry/hints/b;

    if-eqz v4, :cond_4

    .line 9
    check-cast v3, Lio/sentry/hints/b;

    invoke-interface {v3}, Lio/sentry/hints/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 10
    sget-object v1, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    .line 11
    :cond_4
    invoke-virtual {p3, v1, p1, v0, v2}, Lio/sentry/Session;->v(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    const-class p1, Lio/sentry/hints/e;

    invoke-static {p2, p1}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p3}, Lio/sentry/Session;->c()V

    goto :goto_2

    .line 14
    :cond_5
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 15
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "Session is null on scope.withSession"

    .line 16
    invoke-interface {p1, p2, v0, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private I(Lio/sentry/h4;Lio/sentry/b0;Ljava/util/List;)Lio/sentry/h4;
    .locals 8
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/h4;",
            "Lio/sentry/b0;",
            "Ljava/util/List<",
            "Lio/sentry/z;",
            ">;)",
            "Lio/sentry/h4;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/z;->a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    iget-object v4, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v6, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "An exception occurred while processing event by processor: %s"

    .line 6
    invoke-interface {v4, v5, v3, v7, v6}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_0

    .line 7
    iget-object p2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 8
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Event was dropped by a processor: %s"

    .line 10
    invoke-interface {p2, p3, v0, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 12
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p2

    sget-object p3, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v0, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 13
    invoke-interface {p2, p3, v0}, Lio/sentry/clientreport/f;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    :cond_1
    return-object p1
.end method

.method private J(Lio/sentry/protocol/u;Lio/sentry/b0;Ljava/util/List;)Lio/sentry/protocol/u;
    .locals 8
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/u;",
            "Lio/sentry/b0;",
            "Ljava/util/List<",
            "Lio/sentry/z;",
            ">;)",
            "Lio/sentry/protocol/u;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/z;->b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    iget-object v4, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v6, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "An exception occurred while processing transaction by processor: %s"

    .line 6
    invoke-interface {v4, v5, v3, v7, v6}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_0

    .line 7
    iget-object p2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 8
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Transaction was dropped by a processor: %s"

    .line 10
    invoke-interface {p2, p3, v0, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 12
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p2

    sget-object p3, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v0, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 13
    invoke-interface {p2, p3, v0}, Lio/sentry/clientreport/f;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    :cond_1
    return-object p1
.end method

.method private K()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/h3;->d:Ljava/security/SecureRandom;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lio/sentry/h3;->d:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private L(Lio/sentry/e3;Lio/sentry/b0;)Z
    .locals 3
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lio/sentry/util/h;->s(Lio/sentry/b0;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "Event was cached so not applying scope: %s"

    invoke-interface {p2, v1, p1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private M(Lio/sentry/Session;Lio/sentry/Session;)Z
    .locals 4
    .param p1    # Lio/sentry/Session;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Session;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p2}, Lio/sentry/Session;->q()Lio/sentry/Session$State;

    move-result-object v2

    sget-object v3, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-ne v2, v3, :cond_2

    .line 2
    invoke-virtual {p1}, Lio/sentry/Session;->q()Lio/sentry/Session$State;

    move-result-object v2

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    return v1

    .line 3
    :cond_3
    invoke-virtual {p2}, Lio/sentry/Session;->e()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lio/sentry/Session;->e()I

    move-result p1

    if-gtz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method private N(Lio/sentry/e3;Ljava/util/Collection;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/e3;",
            "Ljava/util/Collection<",
            "Lio/sentry/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->D()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p2, p0, Lio/sentry/h3;->e:Lio/sentry/h3$b;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lio/sentry/Session;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/h3;->G(Lio/sentry/Session;)V

    return-void
.end method

.method public static synthetic w(Lio/sentry/h3;Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/Session;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/h3;->H(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/Session;)V

    return-void
.end method

.method private x(Lio/sentry/r2;Lio/sentry/b0;)V
    .locals 0
    .param p1    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/sentry/r2;->l()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/sentry/b0;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private y(Lio/sentry/e3;Lio/sentry/r2;)Lio/sentry/e3;
    .locals 4
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/e3;",
            ">(TT;",
            "Lio/sentry/r2;",
            ")TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    if-eqz p2, :cond_a

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->N()Lio/sentry/protocol/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lio/sentry/r2;->s()Lio/sentry/protocol/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->g0(Lio/sentry/protocol/i;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/sentry/e3;->U()Lio/sentry/protocol/w;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lio/sentry/r2;->y()Lio/sentry/protocol/w;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->m0(Lio/sentry/protocol/w;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/sentry/e3;->R()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p2}, Lio/sentry/r2;->v()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/e3;->k0(Ljava/util/Map;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2}, Lio/sentry/r2;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-virtual {p1}, Lio/sentry/e3;->R()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-virtual {p1}, Lio/sentry/e3;->R()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lio/sentry/e3;->D()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lio/sentry/r2;->m()Ljava/util/Queue;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lio/sentry/e3;->X(Ljava/util/List;)V

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p2}, Lio/sentry/r2;->m()Ljava/util/Queue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/h3;->N(Lio/sentry/e3;Ljava/util/Collection;)V

    .line 13
    :goto_2
    invoke-virtual {p1}, Lio/sentry/e3;->K()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_6

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p2}, Lio/sentry/r2;->p()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/e3;->d0(Ljava/util/Map;)V

    goto :goto_4

    .line 15
    :cond_6
    invoke-virtual {p2}, Lio/sentry/r2;->p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-virtual {p1}, Lio/sentry/e3;->K()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 17
    invoke-virtual {p1}, Lio/sentry/e3;->K()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 18
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 19
    new-instance v1, Lio/sentry/protocol/Contexts;

    invoke-virtual {p2}, Lio/sentry/r2;->n()Lio/sentry/protocol/Contexts;

    move-result-object p2

    invoke-direct {v1, p2}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    return-object p1
.end method

.method private z(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 2
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    if-eqz p2, :cond_4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/h3;->y(Lio/sentry/e3;Lio/sentry/r2;)Lio/sentry/e3;

    .line 2
    invoke-virtual {p1}, Lio/sentry/h4;->F0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lio/sentry/r2;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/h4;->R0(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/sentry/h4;->x0()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lio/sentry/r2;->q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/h4;->K0(Ljava/util/List;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lio/sentry/r2;->r()Lio/sentry/SentryLevel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lio/sentry/r2;->r()Lio/sentry/SentryLevel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/h4;->L0(Lio/sentry/SentryLevel;)V

    .line 8
    :cond_2
    invoke-virtual {p2}, Lio/sentry/r2;->u()Lio/sentry/v0;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/f5;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-interface {v0}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/f5;)V

    .line 11
    :cond_3
    invoke-virtual {p2}, Lio/sentry/r2;->o()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lio/sentry/h3;->I(Lio/sentry/h4;Lio/sentry/b0;Ljava/util/List;)Lio/sentry/h4;

    move-result-object p1

    :cond_4
    return-object p1
.end method


# virtual methods
.method O(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/r2;)Lio/sentry/Session;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/r2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    .line 1
    invoke-static {p2}, Lio/sentry/util/h;->s(Lio/sentry/b0;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Lio/sentry/f3;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/f3;-><init>(Lio/sentry/h3;Lio/sentry/h4;Lio/sentry/b0;)V

    .line 3
    invoke-virtual {p3, v0}, Lio/sentry/r2;->S(Lio/sentry/r2$a;)Lio/sentry/Session;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Scope is null on client.captureEvent"

    invoke-interface {p1, p2, v0, p3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

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
    .locals 12
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

    const-string v0, "SentryEvent is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lio/sentry/b0;

    invoke-direct {p3}, Lio/sentry/b0;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/sentry/h3;->L(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p2, p3}, Lio/sentry/h3;->x(Lio/sentry/r2;Lio/sentry/b0;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Capturing event: %s"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lio/sentry/e3;->S()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v3, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v3, v0}, Lio/sentry/SentryOptions;->containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 9
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    aput-object p3, p2, v5

    const-string p3, "Event was dropped as the exception %s is ignored"

    .line 11
    invoke-interface {p1, v1, p3, p2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 13
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object p3, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 14
    invoke-interface {p1, p2, p3}, Lio/sentry/clientreport/f;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 15
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1

    .line 16
    :cond_2
    invoke-direct {p0, p1, p3}, Lio/sentry/h3;->L(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/h3;->z(Lio/sentry/h4;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/h4;

    move-result-object p1

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Event was dropped by applyScope"

    invoke-interface {p1, v1, p3, p2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1

    .line 20
    :cond_3
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lio/sentry/h3;->I(Lio/sentry/h4;Lio/sentry/b0;Ljava/util/List;)Lio/sentry/h4;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    invoke-direct {p0, p1, p3}, Lio/sentry/h3;->C(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;

    move-result-object p1

    if-nez p1, :cond_4

    .line 22
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Event was dropped by beforeSend"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 24
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object v0

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 25
    invoke-interface {v0, v3, v4}, Lio/sentry/clientreport/f;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    :cond_4
    if-nez p1, :cond_5

    .line 26
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 27
    sget-object v3, Lio/sentry/g3;->a:Lio/sentry/g3;

    invoke-virtual {p2, v3}, Lio/sentry/r2;->S(Lio/sentry/r2$a;)Lio/sentry/Session;

    move-result-object v3

    goto :goto_0

    :cond_6
    move-object v3, v0

    .line 28
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lio/sentry/h3;->O(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/r2;)Lio/sentry/Session;

    move-result-object v9

    .line 29
    invoke-direct {p0}, Lio/sentry/h3;->K()Z

    move-result v4

    if-nez v4, :cond_7

    .line 30
    iget-object v4, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 31
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    aput-object p1, v6, v5

    const-string p1, "Event %s was dropped due to sampling decision."

    .line 33
    invoke-interface {v4, v1, p1, v6}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 35
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object p1

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object v6, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 36
    invoke-interface {p1, v4, v6}, Lio/sentry/clientreport/f;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    move-object v7, v0

    goto :goto_1

    :cond_7
    move-object v7, p1

    .line 37
    :goto_1
    invoke-direct {p0, v3, v9}, Lio/sentry/h3;->M(Lio/sentry/Session;Lio/sentry/Session;)Z

    move-result p1

    if-nez v7, :cond_8

    if-nez p1, :cond_8

    .line 38
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 39
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Not sending session update for dropped event as it did not cause the session health to change."

    .line 40
    invoke-interface {p1, v1, p3, p2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1

    .line 42
    :cond_8
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    if-eqz v7, :cond_9

    .line 43
    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 44
    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    :cond_9
    if-eqz p2, :cond_a

    .line 45
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/r2;->w()Lio/sentry/w0;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 46
    invoke-virtual {p2}, Lio/sentry/r2;->w()Lio/sentry/w0;

    move-result-object p2

    invoke-interface {p2}, Lio/sentry/v0;->q()Lio/sentry/m5;

    move-result-object p2

    move-object v10, p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_4

    :cond_a
    move-object v10, v0

    :goto_2
    if-eqz v7, :cond_b

    const/4 p2, 0x1

    goto :goto_3

    :cond_b
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_c

    .line 47
    invoke-direct {p0, p3}, Lio/sentry/h3;->F(Lio/sentry/b0;)Ljava/util/List;

    move-result-object v0

    :cond_c
    move-object v8, v0

    const/4 v11, 0x0

    move-object v6, p0

    .line 48
    invoke-direct/range {v6 .. v11}, Lio/sentry/h3;->A(Lio/sentry/e3;Ljava/util/List;Lio/sentry/Session;Lio/sentry/m5;Lio/sentry/m2;)Lio/sentry/l3;

    move-result-object p2

    .line 49
    invoke-virtual {p3}, Lio/sentry/b0;->c()V

    if-eqz p2, :cond_d

    .line 50
    iget-object v0, p0, Lio/sentry/h3;->c:Lio/sentry/transport/q;

    invoke-interface {v0, p2, p3}, Lio/sentry/transport/q;->w(Lio/sentry/l3;Lio/sentry/b0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 51
    :goto_4
    iget-object p3, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string p1, "Capturing event %s failed."

    invoke-interface {p3, v0, p2, p1, v1}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    :cond_d
    :goto_5
    return-object p1
.end method

.method public close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Closing SentryClient."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/h3;->e(J)V

    .line 3
    iget-object v0, p0, Lio/sentry/h3;->c:Lio/sentry/transport/q;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to close the connection to the Sentry Server."

    .line 6
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/z;

    .line 8
    instance-of v3, v1, Ljava/io/Closeable;

    if-eqz v3, :cond_0

    .line 9
    :try_start_1
    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 10
    iget-object v4, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 11
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const-string v1, "Failed to close the event processor {}."

    .line 12
    invoke-interface {v4, v5, v1, v6}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    iput-boolean v2, p0, Lio/sentry/h3;->a:Z

    return-void
.end method

.method public synthetic d(Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/r0;->h(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public e(J)V
    .locals 1

    iget-object v0, p0, Lio/sentry/h3;->c:Lio/sentry/transport/q;

    invoke-interface {v0, p1, p2}, Lio/sentry/transport/q;->e(J)V

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

    iget-boolean v0, p0, Lio/sentry/h3;->a:Z

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
    .locals 2
    .param p1    # Lio/sentry/l3;
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

    const-string v0, "SentryEnvelope is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lio/sentry/b0;

    invoke-direct {p2}, Lio/sentry/b0;-><init>()V

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/b0;->c()V

    .line 4
    iget-object v0, p0, Lio/sentry/h3;->c:Lio/sentry/transport/q;

    invoke-interface {v0, p1, p2}, Lio/sentry/transport/q;->w(Lio/sentry/l3;Lio/sentry/b0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/m3;->a()Lio/sentry/protocol/n;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 6
    :cond_1
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to capture envelope."

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    return-object p1
.end method

.method public p(Lio/sentry/w5;)V
    .locals 6
    .param p1    # Lio/sentry/w5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "SentryEvent is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    invoke-virtual {p1}, Lio/sentry/w5;->c()Lio/sentry/protocol/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Capturing userFeedback without a Sentry Id."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lio/sentry/w5;->c()Lio/sentry/protocol/n;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Capturing userFeedback: %s"

    invoke-interface {v0, v2, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/h3;->B(Lio/sentry/w5;)Lio/sentry/l3;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/sentry/h3;->c:Lio/sentry/transport/q;

    invoke-interface {v2, v0}, Lio/sentry/transport/q;->j0(Lio/sentry/l3;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    iget-object v2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 10
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lio/sentry/w5;->c()Lio/sentry/protocol/n;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Capturing user feedback %s failed."

    .line 12
    invoke-interface {v2, v4, v0, p1, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic q(Lio/sentry/protocol/u;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/r0;->m(Lio/sentry/s0;Lio/sentry/protocol/u;Lio/sentry/r2;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public r(Lio/sentry/Session;Lio/sentry/b0;)V
    .locals 2
    .param p1    # Lio/sentry/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "Session is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lio/sentry/Session;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/Session;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/sentry/l3;->c(Lio/sentry/u0;Lio/sentry/Session;Lio/sentry/protocol/l;)Lio/sentry/l3;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/sentry/h3;->o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;

    return-void

    :catch_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to capture session."

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Sessions can\'t be captured without setting a release."

    .line 8
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic s(Ljava/lang/Throwable;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/r0;->g(Lio/sentry/s0;Ljava/lang/Throwable;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public t(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/r2;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;
    .locals 13
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

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v1, p3

    const-string v2, "Transaction is required."

    .line 1
    invoke-static {p1, v2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p4, :cond_0

    .line 2
    new-instance v2, Lio/sentry/b0;

    invoke-direct {v2}, Lio/sentry/b0;-><init>()V

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    .line 3
    :goto_0
    invoke-direct {p0, p1, v8}, Lio/sentry/h3;->L(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0, v1, v8}, Lio/sentry/h3;->x(Lio/sentry/r2;Lio/sentry/b0;)V

    .line 5
    :cond_1
    iget-object v2, v7, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 6
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "Capturing transaction: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    sget-object v11, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    .line 9
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    :cond_2
    move-object v12, v11

    .line 11
    :goto_1
    invoke-direct {p0, p1, v8}, Lio/sentry/h3;->L(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-direct {p0, p1, v1}, Lio/sentry/h3;->y(Lio/sentry/e3;Lio/sentry/r2;)Lio/sentry/e3;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/u;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual/range {p3 .. p3}, Lio/sentry/r2;->o()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v8, v1}, Lio/sentry/h3;->J(Lio/sentry/protocol/u;Lio/sentry/b0;Ljava/util/List;)Lio/sentry/protocol/u;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 14
    iget-object v1, v7, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    const-string v4, "Transaction was dropped by applyScope"

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 15
    iget-object v1, v7, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v8, v1}, Lio/sentry/h3;->J(Lio/sentry/protocol/u;Lio/sentry/b0;Ljava/util/List;)Lio/sentry/protocol/u;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    .line 16
    iget-object v0, v7, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "Transaction was dropped by Event processors."

    invoke-interface {v0, v3, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v11

    .line 17
    :cond_6
    invoke-direct {p0, v0, v8}, Lio/sentry/h3;->D(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;

    move-result-object v2

    if-nez v2, :cond_7

    .line 18
    iget-object v0, v7, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 19
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "Transaction was dropped by beforeSendTransaction."

    .line 20
    invoke-interface {v0, v3, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, v7, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    .line 22
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/f;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v2, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 23
    invoke-interface {v0, v1, v2}, Lio/sentry/clientreport/f;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    return-object v11

    .line 24
    :cond_7
    :try_start_0
    invoke-direct {p0, v8}, Lio/sentry/h3;->F(Lio/sentry/b0;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/h3;->E(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object/from16 v6, p5

    .line 25
    invoke-direct/range {v1 .. v6}, Lio/sentry/h3;->A(Lio/sentry/e3;Ljava/util/List;Lio/sentry/Session;Lio/sentry/m5;Lio/sentry/m2;)Lio/sentry/l3;

    move-result-object v0

    .line 26
    invoke-virtual {v8}, Lio/sentry/b0;->c()V

    if-eqz v0, :cond_8

    .line 27
    iget-object v1, v7, Lio/sentry/h3;->c:Lio/sentry/transport/q;

    invoke-interface {v1, v0, v8}, Lio/sentry/transport/q;->w(Lio/sentry/l3;Lio/sentry/b0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v12

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 28
    :goto_2
    iget-object v1, v7, Lio/sentry/h3;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v12, v3, v10

    const-string v4, "Capturing transaction %s failed."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v11, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    :cond_8
    :goto_3
    return-object v11
.end method

.method public synthetic u(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/r2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/r0;->j(Lio/sentry/s0;Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/r2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method
