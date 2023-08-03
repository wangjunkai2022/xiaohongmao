.class public final Lio/sentry/p1;
.super Ljava/lang/Object;
.source "MainEventProcessor.java"

# interfaces
.implements Lio/sentry/z;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "production"


# instance fields
.field private final a:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/u4;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/i4;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile d:Lio/sentry/e0;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    const-string v0, "The SentryOptions is required."

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    .line 4
    new-instance v0, Lio/sentry/t4;

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getInAppExcludes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getInAppIncludes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/sentry/t4;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 6
    new-instance v1, Lio/sentry/i4;

    invoke-direct {v1, v0}, Lio/sentry/i4;-><init>(Lio/sentry/t4;)V

    iput-object v1, p0, Lio/sentry/p1;->c:Lio/sentry/i4;

    .line 7
    new-instance v1, Lio/sentry/u4;

    invoke-direct {v1, v0, p1}, Lio/sentry/u4;-><init>(Lio/sentry/t4;Lio/sentry/SentryOptions;)V

    iput-object v1, p0, Lio/sentry/p1;->b:Lio/sentry/u4;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/u4;Lio/sentry/i4;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/u4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/i4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    const-string v0, "The SentryOptions is required."

    .line 10
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    const-string p1, "The SentryThreadFactory is required."

    .line 11
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/u4;

    iput-object p1, p0, Lio/sentry/p1;->b:Lio/sentry/u4;

    const-string p1, "The SentryExceptionFactory is required."

    .line 12
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/i4;

    iput-object p1, p0, Lio/sentry/p1;->c:Lio/sentry/i4;

    return-void
.end method

.method private A(Lio/sentry/h4;)V
    .locals 2
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->T()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/sentry/p1;->c:Lio/sentry/i4;

    invoke-virtual {v1, v0}, Lio/sentry/i4;->c(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/h4;->J0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private D(Lio/sentry/h4;)V
    .locals 2
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/a;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/internal/modules/a;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/sentry/h4;->C0()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/h4;->P0(Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private E(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->L()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "java"

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/e3;->e0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private G(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->M()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->f0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private H(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->O()Lio/sentry/protocol/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->h0(Lio/sentry/protocol/l;)V

    :cond_0
    return-void
.end method

.method private I(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->P()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->i0(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isAttachServerName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/e3;->P()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lio/sentry/p1;->d()V

    .line 5
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    invoke-virtual {v0}, Lio/sentry/e0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->i0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private J(Lio/sentry/e3;)V
    .locals 4
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->R()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/e3;->k0(Ljava/util/Map;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-virtual {p1}, Lio/sentry/e3;->R()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/sentry/e3;->j0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private K(Lio/sentry/h4;Lio/sentry/b0;)V
    .locals 5
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/h4;->D0()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lio/sentry/h4;->w0()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/m;

    .line 5
    invoke-virtual {v3}, Lio/sentry/protocol/m;->g()Lio/sentry/protocol/f;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lio/sentry/protocol/m;->j()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_1
    invoke-virtual {v3}, Lio/sentry/protocol/m;->j()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isAttachThreads()Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Lio/sentry/hints/b;

    invoke-static {p2, v2}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    :cond_4
    invoke-direct {p0, p2}, Lio/sentry/p1;->i(Lio/sentry/b0;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 12
    iget-object p2, p0, Lio/sentry/p1;->b:Lio/sentry/u4;

    invoke-virtual {p2}, Lio/sentry/u4;->a()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/h4;->Q0(Ljava/util/List;)V

    goto :goto_2

    .line 13
    :cond_5
    :goto_1
    invoke-static {p2}, Lio/sentry/util/h;->f(Lio/sentry/b0;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    .line 14
    instance-of v2, p2, Lio/sentry/hints/b;

    if-eqz v2, :cond_6

    .line 15
    check-cast p2, Lio/sentry/hints/b;

    invoke-interface {p2}, Lio/sentry/hints/b;->a()Z

    move-result v1

    .line 16
    :cond_6
    iget-object p2, p0, Lio/sentry/p1;->b:Lio/sentry/u4;

    .line 17
    invoke-virtual {p2, v0, v1}, Lio/sentry/u4;->c(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lio/sentry/h4;->Q0(Ljava/util/List;)V

    :cond_7
    :goto_2
    return-void
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
    iget-object p2, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

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

    const-string p1, "Event was cached so not applying data relevant to the current app execution/version: %s"

    .line 5
    invoke-interface {p2, v1, p1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lio/sentry/e0;->e()Lio/sentry/e0;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private i(Lio/sentry/b0;)Z
    .locals 1
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-class v0, Lio/sentry/hints/d;

    invoke-static {p1, v0}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method private k(Lio/sentry/e3;)V
    .locals 2
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/sentry/e3;->U()Lio/sentry/protocol/w;

    move-result-object v0

    const-string v1, "{{auto}}"

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/sentry/protocol/w;

    invoke-direct {v0}, Lio/sentry/protocol/w;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lio/sentry/protocol/w;->r(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/e3;->m0(Lio/sentry/protocol/w;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lio/sentry/e3;->U()Lio/sentry/protocol/w;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/w;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lio/sentry/e3;->U()Lio/sentry/protocol/w;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/w;->r(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p(Lio/sentry/e3;)V
    .locals 0
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/p1;->G(Lio/sentry/e3;)V

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/p1;->y(Lio/sentry/e3;)V

    .line 3
    invoke-direct {p0, p1}, Lio/sentry/p1;->I(Lio/sentry/e3;)V

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/p1;->s(Lio/sentry/e3;)V

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/p1;->H(Lio/sentry/e3;)V

    .line 6
    invoke-direct {p0, p1}, Lio/sentry/p1;->J(Lio/sentry/e3;)V

    .line 7
    invoke-direct {p0, p1}, Lio/sentry/p1;->k(Lio/sentry/e3;)V

    return-void
.end method

.method private q(Lio/sentry/e3;)V
    .locals 0
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/sentry/p1;->E(Lio/sentry/e3;)V

    return-void
.end method

.method private r(Lio/sentry/e3;)V
    .locals 4
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lio/sentry/e3;->F()Lio/sentry/protocol/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/sentry/protocol/c;

    invoke-direct {v0}, Lio/sentry/protocol/c;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/c;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lio/sentry/protocol/c;->e(Ljava/util/List;)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/c;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v2, Lio/sentry/protocol/DebugImage;

    invoke-direct {v2}, Lio/sentry/protocol/DebugImage;-><init>()V

    const-string v3, "proguard"

    .line 8
    invoke-virtual {v2, v3}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/e3;->Y(Lio/sentry/protocol/c;)V

    :cond_2
    return-void
.end method

.method private s(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->G()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/e3;->Z(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private y(Lio/sentry/e3;)V
    .locals 1
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e3;->H()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/p1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "production"

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/e3;->a0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 1
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/p1;->q(Lio/sentry/e3;)V

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/p1;->A(Lio/sentry/h4;)V

    .line 3
    invoke-direct {p0, p1}, Lio/sentry/p1;->r(Lio/sentry/e3;)V

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/p1;->D(Lio/sentry/h4;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lio/sentry/p1;->L(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lio/sentry/p1;->p(Lio/sentry/e3;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lio/sentry/p1;->K(Lio/sentry/h4;Lio/sentry/b0;)V

    :cond_0
    return-object p1
.end method

.method public b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 0
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/p1;->q(Lio/sentry/e3;)V

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/p1;->r(Lio/sentry/e3;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lio/sentry/p1;->L(Lio/sentry/e3;Lio/sentry/b0;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/p1;->p(Lio/sentry/e3;)V

    :cond_0
    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    invoke-virtual {v0}, Lio/sentry/e0;->c()V

    :cond_0
    return-void
.end method

.method h()Lio/sentry/e0;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/n;
    .end annotation

    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    return-object v0
.end method

.method isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/p1;->d:Lio/sentry/e0;

    invoke-virtual {v0}, Lio/sentry/e0;->g()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
