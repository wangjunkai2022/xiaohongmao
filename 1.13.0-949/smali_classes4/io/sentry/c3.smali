.class public final Lio/sentry/c3;
.super Ljava/lang/Object;
.source "Sentry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/c3$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/sentry/n0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static volatile b:Lio/sentry/n0; = null
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final c:Z = false

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/sentry/c3;->a:Ljava/lang/ThreadLocal;

    .line 2
    invoke-static {}, Lio/sentry/t1;->d0()Lio/sentry/t1;

    move-result-object v0

    sput-object v0, Lio/sentry/c3;->b:Lio/sentry/n0;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lio/sentry/c3;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(J)V
    .locals 1

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->e(J)V

    return-void
.end method

.method public static B()Lio/sentry/n0;
    .locals 3
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-boolean v0, Lio/sentry/c3;->d:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/sentry/c3;->b:Lio/sentry/n0;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lio/sentry/c3;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/n0;

    if-eqz v1, :cond_1

    .line 4
    instance-of v2, v1, Lio/sentry/t1;

    if-eqz v2, :cond_2

    .line 5
    :cond_1
    sget-object v1, Lio/sentry/c3;->b:Lio/sentry/n0;

    invoke-interface {v1}, Lio/sentry/n0;->clone()Lio/sentry/n0;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static C()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->J()Lio/sentry/protocol/n;

    move-result-object v0

    return-object v0
.end method

.method public static D()Lio/sentry/v0;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->u()Lio/sentry/v0;

    move-result-object v0

    return-object v0
.end method

.method public static E()V
    .locals 2

    sget-object v0, Lio/sentry/a3;->a:Lio/sentry/a3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/sentry/c3;->I(Lio/sentry/c3$a;Z)V

    return-void
.end method

.method public static F(Lio/sentry/g2;Lio/sentry/c3$a;)V
    .locals 1
    .param p0    # Lio/sentry/g2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/c3$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/g2<",
            "TT;>;",
            "Lio/sentry/c3$a<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/sentry/c3;->G(Lio/sentry/g2;Lio/sentry/c3$a;Z)V

    return-void
.end method

.method public static G(Lio/sentry/g2;Lio/sentry/c3$a;Z)V
    .locals 0
    .param p0    # Lio/sentry/g2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/c3$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/g2<",
            "TT;>;",
            "Lio/sentry/c3$a<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/g2;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryOptions;

    .line 2
    invoke-static {p1, p0}, Lio/sentry/c3;->h(Lio/sentry/c3$a;Lio/sentry/SentryOptions;)V

    .line 3
    invoke-static {p0, p2}, Lio/sentry/c3;->K(Lio/sentry/SentryOptions;Z)V

    return-void
.end method

.method public static H(Lio/sentry/c3$a;)V
    .locals 1
    .param p0    # Lio/sentry/c3$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/c3$a<",
            "Lio/sentry/SentryOptions;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/c3;->I(Lio/sentry/c3$a;Z)V

    return-void
.end method

.method public static I(Lio/sentry/c3$a;Z)V
    .locals 1
    .param p0    # Lio/sentry/c3$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/c3$a<",
            "Lio/sentry/SentryOptions;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/SentryOptions;

    invoke-direct {v0}, Lio/sentry/SentryOptions;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lio/sentry/c3;->h(Lio/sentry/c3$a;Lio/sentry/SentryOptions;)V

    .line 3
    invoke-static {v0, p1}, Lio/sentry/c3;->K(Lio/sentry/SentryOptions;Z)V

    return-void
.end method

.method public static J(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/c3;->K(Lio/sentry/SentryOptions;Z)V

    return-void
.end method

.method private static declared-synchronized K(Lio/sentry/SentryOptions;Z)V
    .locals 7
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-class v0, Lio/sentry/c3;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lio/sentry/c3;->O()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Sentry has been already initialized. Previous configuration will be overwritten."

    new-array v5, v2, [Ljava/lang/Object;

    .line 3
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lio/sentry/c3;->M(Lio/sentry/SentryOptions;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "GlobalHubMode: \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v1, v3, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sput-boolean p1, Lio/sentry/c3;->d:Z

    .line 8
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object p1

    .line 9
    new-instance v1, Lio/sentry/h0;

    invoke-direct {v1, p0}, Lio/sentry/h0;-><init>(Lio/sentry/SentryOptions;)V

    sput-object v1, Lio/sentry/c3;->b:Lio/sentry/n0;

    .line 10
    sget-object v1, Lio/sentry/c3;->a:Ljava/lang/ThreadLocal;

    sget-object v2, Lio/sentry/c3;->b:Lio/sentry/n0;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1}, Lio/sentry/n0;->close()V

    .line 12
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/z0;

    .line 13
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lio/sentry/z0;->a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static L(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    new-instance v0, Lio/sentry/z2;

    invoke-direct {v0, p0}, Lio/sentry/z2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/c3;->H(Lio/sentry/c3$a;)V

    return-void
.end method

.method private static M(Lio/sentry/SentryOptions;)Z
    .locals 6
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableExternalConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/config/i;->a()Lio/sentry/config/h;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/a0;->g(Lio/sentry/config/h;Lio/sentry/o0;)Lio/sentry/a0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->merge(Lio/sentry/a0;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lio/sentry/c3;->x()V

    return v2

    .line 6
    :cond_1
    new-instance v1, Lio/sentry/q;

    invoke-direct {v1, v0}, Lio/sentry/q;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lio/sentry/u1;

    if-eqz v1, :cond_2

    .line 9
    new-instance v0, Lio/sentry/l5;

    invoke-direct {v0}, Lio/sentry/l5;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setLogger(Lio/sentry/o0;)V

    .line 10
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    .line 11
    :cond_2
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Initializing SDK with DSN: \'%s\'"

    invoke-interface {v0, v1, v5, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "No outbox dir path is defined in options."

    .line 15
    invoke-interface {v0, v1, v4, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 19
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/f;

    move-result-object v0

    .line 20
    instance-of v0, v0, Lio/sentry/transport/s;

    if-eqz v0, :cond_4

    .line 21
    invoke-static {p0}, Lio/sentry/cache/d;->r(Lio/sentry/SentryOptions;)Lio/sentry/cache/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvelopeDiskCache(Lio/sentry/cache/f;)V

    .line 22
    :cond_4
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/t0;

    move-result-object v1

    new-instance v2, Lio/sentry/b3;

    invoke-direct {v2, v0}, Lio/sentry/b3;-><init>([Ljava/io/File;)V

    .line 28
    invoke-interface {v1, v2}, Lio/sentry/t0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 29
    :cond_5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/a;

    move-result-object v0

    .line 30
    instance-of v0, v0, Lio/sentry/internal/modules/c;

    if-eqz v0, :cond_6

    .line 31
    new-instance v0, Lio/sentry/internal/modules/d;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/internal/modules/d;-><init>(Lio/sentry/o0;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/a;)V

    .line 32
    :cond_6
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMainThreadChecker()Lio/sentry/util/thread/b;

    move-result-object v0

    .line 33
    instance-of v0, v0, Lio/sentry/util/thread/d;

    if-eqz v0, :cond_7

    .line 34
    invoke-static {}, Lio/sentry/util/thread/c;->e()Lio/sentry/util/thread/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setMainThreadChecker(Lio/sentry/util/thread/b;)V

    .line 35
    :cond_7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCollectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    new-instance v0, Lio/sentry/b1;

    invoke-direct {v0}, Lio/sentry/b1;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addCollector(Lio/sentry/j0;)V

    :cond_8
    return v3

    .line 37
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DSN is required. Use empty string to disable SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static N()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->Q()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static O()Z
    .locals 1

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private static synthetic P(Lio/sentry/SentryOptions;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableExternalConfiguration(Z)V

    return-void
.end method

.method private static synthetic Q(Ljava/lang/String;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic R([Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lio/sentry/util/c;->a(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static S()V
    .locals 1

    .line 1
    sget-boolean v0, Lio/sentry/c3;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->z()V

    :cond_0
    return-void
.end method

.method public static T()V
    .locals 1

    .line 1
    sget-boolean v0, Lio/sentry/c3;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->w()V

    :cond_0
    return-void
.end method

.method public static U(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static V(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static W(Lio/sentry/n0;)V
    .locals 1
    .param p0    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    sget-object v0, Lio/sentry/c3;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Y(Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->x(Ljava/util/List;)V

    return-void
.end method

.method public static Z(Lio/sentry/SentryLevel;)V
    .locals 1
    .param p0    # Lio/sentry/SentryLevel;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->I(Lio/sentry/SentryLevel;)V

    return-void
.end method

.method public static synthetic a([Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/c3;->R([Ljava/io/File;)V

    return-void
.end method

.method public static a0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/c3;->Q(Ljava/lang/String;Lio/sentry/SentryOptions;)V

    return-void
.end method

.method public static b0(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->X(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/c3;->P(Lio/sentry/SentryOptions;)V

    return-void
.end method

.method public static c0(Lio/sentry/protocol/w;)V
    .locals 1
    .param p0    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->f(Lio/sentry/protocol/w;)V

    return-void
.end method

.method public static d(Lio/sentry/f;)V
    .locals 1
    .param p0    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    return-void
.end method

.method public static d0()V
    .locals 1

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->b0()V

    return-void
.end method

.method public static e(Lio/sentry/f;Lio/sentry/b0;)V
    .locals 1
    .param p0    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    return-void
.end method

.method public static e0(Lio/sentry/p5;)Lio/sentry/w0;
    .locals 1
    .param p0    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->L(Lio/sentry/p5;)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static f0(Lio/sentry/p5;Lio/sentry/j;)Lio/sentry/w0;
    .locals 1
    .param p0    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->T(Lio/sentry/p5;Lio/sentry/j;)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->Z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g0(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;
    .locals 1
    .param p0    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/j;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lio/sentry/n0;->v(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lio/sentry/c3$a;Lio/sentry/SentryOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/c3$a<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lio/sentry/c3$a;->a(Lio/sentry/SentryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error in the \'OptionsConfiguration.configure\' callback."

    .line 3
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static h0(Lio/sentry/p5;Lio/sentry/r5;)Lio/sentry/w0;
    .locals 1
    .param p0    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/r5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->N(Lio/sentry/p5;Lio/sentry/r5;)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lio/sentry/s0;)V
    .locals 1
    .param p0    # Lio/sentry/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->P(Lio/sentry/s0;)V

    return-void
.end method

.method public static i0(Lio/sentry/p5;Z)Lio/sentry/w0;
    .locals 1
    .param p0    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->R(Lio/sentry/p5;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lio/sentry/h4;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->k(Lio/sentry/h4;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->M(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/n0;->G(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/n0;->S(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lio/sentry/n0;->Y(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lio/sentry/h4;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->K(Lio/sentry/h4;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lio/sentry/c3;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Throwable;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->m(Ljava/lang/Throwable;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1, p3}, Lio/sentry/n0;->c0(Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2}, Lio/sentry/v0;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public static o(Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->n(Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/n0;->c0(Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/n0;->q(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static p0()Lio/sentry/v4;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->E()Lio/sentry/v4;

    move-result-object v0

    return-object v0
.end method

.method public static q(Ljava/lang/Throwable;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->O(Ljava/lang/Throwable;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Lio/sentry/s2;)V
    .locals 1
    .param p0    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->V(Lio/sentry/s2;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->F(Ljava/lang/String;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->D(Ljava/lang/String;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/n0;->h(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/n0;->W(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lio/sentry/w5;)V
    .locals 1
    .param p0    # Lio/sentry/w5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->p(Lio/sentry/w5;)V

    return-void
.end method

.method public static w()V
    .locals 1

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->B()V

    return-void
.end method

.method public static declared-synchronized x()V
    .locals 3

    const-class v0, Lio/sentry/c3;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v1

    .line 2
    invoke-static {}, Lio/sentry/t1;->d0()Lio/sentry/t1;

    move-result-object v2

    sput-object v2, Lio/sentry/c3;->b:Lio/sentry/n0;

    .line 3
    sget-object v2, Lio/sentry/c3;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 4
    invoke-interface {v1}, Lio/sentry/n0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static y(Lio/sentry/s2;)V
    .locals 1
    .param p0    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    return-void
.end method

.method public static z()V
    .locals 1

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->H()V

    return-void
.end method
