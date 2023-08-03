.class public final Lio/sentry/a0;
.super Ljava/lang/Object;
.source "ExternalOptions.java"


# static fields
.field private static final w:Ljava/lang/String; = "80"


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:Ljava/lang/Double;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private j:Ljava/lang/Double;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:Lio/sentry/SentryOptions$RequestSize;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private m:Lio/sentry/SentryOptions$e;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private s:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private u:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private v:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/a0;->l:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/a0;->n:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/a0;->o:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/a0;->t:Ljava/util/Set;

    return-void
.end method

.method public static g(Lio/sentry/config/h;Lio/sentry/o0;)Lio/sentry/a0;
    .locals 8
    .param p0    # Lio/sentry/config/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/a0;

    invoke-direct {v0}, Lio/sentry/a0;-><init>()V

    const-string v1, "dsn"

    .line 2
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->G(Ljava/lang/String;)V

    const-string v1, "environment"

    .line 3
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->J(Ljava/lang/String;)V

    const-string v1, "release"

    .line 4
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->Q(Ljava/lang/String;)V

    const-string v1, "dist"

    .line 5
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->F(Ljava/lang/String;)V

    const-string v1, "servername"

    .line 6
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->S(Ljava/lang/String;)V

    const-string v1, "uncaught.handler.enabled"

    .line 7
    invoke-interface {p0, v1}, Lio/sentry/config/h;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/a0;->I(Ljava/lang/Boolean;)V

    const-string v1, "uncaught.handler.print-stacktrace"

    .line 9
    invoke-interface {p0, v1}, Lio/sentry/config/h;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/sentry/a0;->M(Ljava/lang/Boolean;)V

    const-string v1, "traces-sample-rate"

    .line 11
    invoke-interface {p0, v1}, Lio/sentry/config/h;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->U(Ljava/lang/Double;)V

    const-string v1, "profiles-sample-rate"

    .line 12
    invoke-interface {p0, v1}, Lio/sentry/config/h;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->N(Ljava/lang/Double;)V

    const-string v1, "debug"

    .line 13
    invoke-interface {p0, v1}, Lio/sentry/config/h;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->E(Ljava/lang/Boolean;)V

    const-string v1, "enable-deduplication"

    .line 14
    invoke-interface {p0, v1}, Lio/sentry/config/h;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->H(Ljava/lang/Boolean;)V

    const-string v1, "send-client-reports"

    .line 15
    invoke-interface {p0, v1}, Lio/sentry/config/h;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->R(Ljava/lang/Boolean;)V

    const-string v1, "max-request-body-size"

    .line 16
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/SentryOptions$RequestSize;->valueOf(Ljava/lang/String;)Lio/sentry/SentryOptions$RequestSize;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lio/sentry/a0;->L(Lio/sentry/SentryOptions$RequestSize;)V

    :cond_0
    const-string v1, "tags"

    .line 20
    invoke-interface {p0, v1}, Lio/sentry/config/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lio/sentry/a0;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "proxy.host"

    .line 23
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxy.user"

    .line 24
    invoke-interface {p0, v2}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy.pass"

    .line 25
    invoke-interface {p0, v3}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "proxy.port"

    const-string v5, "80"

    .line 26
    invoke-interface {p0, v4, v5}, Lio/sentry/config/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_2

    .line 27
    new-instance v5, Lio/sentry/SentryOptions$e;

    invoke-direct {v5, v1, v4, v2, v3}, Lio/sentry/SentryOptions$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lio/sentry/a0;->P(Lio/sentry/SentryOptions$e;)V

    :cond_2
    const-string v1, "in-app-includes"

    .line 28
    invoke-interface {p0, v1}, Lio/sentry/config/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v2}, Lio/sentry/a0;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "in-app-excludes"

    .line 30
    invoke-interface {p0, v1}, Lio/sentry/config/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v2}, Lio/sentry/a0;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    const-string v2, "trace-propagation-targets"

    .line 32
    invoke-interface {p0, v2}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 33
    invoke-interface {p0, v2}, Lio/sentry/config/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    const-string v2, "tracing-origins"

    .line 34
    invoke-interface {p0, v2}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 35
    invoke-interface {p0, v2}, Lio/sentry/config/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v2}, Lio/sentry/a0;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v1, "context-tags"

    .line 38
    invoke-interface {p0, v1}, Lio/sentry/config/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v2}, Lio/sentry/a0;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v1, "proguard-uuid"

    .line 40
    invoke-interface {p0, v1}, Lio/sentry/config/h;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->O(Ljava/lang/String;)V

    const-string v1, "idle-timeout"

    .line 41
    invoke-interface {p0, v1}, Lio/sentry/config/h;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/a0;->K(Ljava/lang/Long;)V

    const-string v1, "ignored-exceptions-for-type"

    .line 42
    invoke-interface {p0, v1}, Lio/sentry/config/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 43
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 44
    const-class v6, Ljava/lang/Throwable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 45
    invoke-virtual {v0, v5}, Lio/sentry/a0;->b(Ljava/lang/Class;)V

    goto :goto_5

    .line 46
    :cond_9
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v1, v7, v2

    invoke-interface {p1, v5, v6, v7}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 47
    :catch_0
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    const-string v1, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found"

    invoke-interface {p1, v5, v1, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->l:Ljava/util/Map;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    return-object v0
.end method

.method public C()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->i:Ljava/lang/Double;

    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    return-object v0
.end method

.method public E(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->d:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->a:Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public I(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->b:Ljava/lang/String;

    return-void
.end method

.method public K(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->s:Ljava/lang/Long;

    return-void
.end method

.method public L(Lio/sentry/SentryOptions$RequestSize;)V
    .locals 0
    .param p1    # Lio/sentry/SentryOptions$RequestSize;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->k:Lio/sentry/SentryOptions$RequestSize;

    return-void
.end method

.method public M(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->u:Ljava/lang/Boolean;

    return-void
.end method

.method public N(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->j:Ljava/lang/Double;

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->r:Ljava/lang/String;

    return-void
.end method

.method public P(Lio/sentry/SentryOptions$e;)V
    .locals 0
    .param p1    # Lio/sentry/SentryOptions$e;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->m:Lio/sentry/SentryOptions$e;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->c:Ljava/lang/String;

    return-void
.end method

.method public R(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->v:Ljava/lang/Boolean;

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->e:Ljava/lang/String;

    return-void
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/a0;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public U(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/a0;->i:Ljava/lang/Double;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/a0;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/a0;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/sentry/a0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->s:Ljava/lang/Long;

    return-object v0
.end method

.method public p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->t:Ljava/util/Set;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->n:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->o:Ljava/util/List;

    return-object v0
.end method

.method public s()Lio/sentry/SentryOptions$RequestSize;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->k:Lio/sentry/SentryOptions$RequestSize;

    return-object v0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->u:Ljava/lang/Boolean;

    return-object v0
.end method

.method public u()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->j:Ljava/lang/Double;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->r:Ljava/lang/String;

    return-object v0
.end method

.method public w()Lio/sentry/SentryOptions$e;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->m:Lio/sentry/SentryOptions$e;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->v:Ljava/lang/Boolean;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a0;->e:Ljava/lang/String;

    return-object v0
.end method
