.class final Lio/sentry/i4;
.super Ljava/lang/Object;
.source "SentryExceptionFactory.java"


# instance fields
.field private final a:Lio/sentry/t4;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/t4;)V
    .locals 1
    .param p1    # Lio/sentry/t4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The SentryStackTraceFactory is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/t4;

    iput-object p1, p0, Lio/sentry/i4;->a:Lio/sentry/t4;

    return-void
.end method

.method private b(Ljava/lang/Throwable;Lio/sentry/protocol/f;Ljava/lang/Thread;Z)Lio/sentry/protocol/m;
    .locals 6
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/f;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Thread;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lio/sentry/protocol/m;

    invoke-direct {v2}, Lio/sentry/protocol/m;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v4, p0, Lio/sentry/i4;->a:Lio/sentry/t4;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {v4, p1}, Lio/sentry/t4;->e([Ljava/lang/StackTraceElement;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    new-instance v4, Lio/sentry/protocol/s;

    invoke-direct {v4, p1}, Lio/sentry/protocol/s;-><init>(Ljava/util/List;)V

    if-eqz p4, :cond_2

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, p1}, Lio/sentry/protocol/s;->i(Ljava/lang/Boolean;)V

    .line 12
    :cond_2
    invoke-virtual {v2, v4}, Lio/sentry/protocol/m;->o(Lio/sentry/protocol/s;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 13
    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/sentry/protocol/m;->p(Ljava/lang/Long;)V

    .line 14
    :cond_4
    invoke-virtual {v2, v1}, Lio/sentry/protocol/m;->q(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p2}, Lio/sentry/protocol/m;->m(Lio/sentry/protocol/f;)V

    .line 16
    invoke-virtual {v2, v0}, Lio/sentry/protocol/m;->n(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v3}, Lio/sentry/protocol/m;->r(Ljava/lang/String;)V

    return-object v2
.end method

.method private d(Ljava/util/Deque;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/Deque;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/m;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/m;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)Ljava/util/Deque;
    .locals 6
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/m;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 4
    instance-of v3, p1, Lio/sentry/exception/ExceptionMechanismException;

    if-eqz v3, :cond_0

    .line 5
    check-cast p1, Lio/sentry/exception/ExceptionMechanismException;

    .line 6
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->getExceptionMechanism()Lio/sentry/protocol/f;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->getThread()Ljava/lang/Thread;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->isSnapshot()Z

    move-result p1

    move-object v5, v3

    move v3, p1

    move-object p1, v5

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object v2, v3

    const/4 v3, 0x0

    .line 11
    :goto_1
    invoke-direct {p0, p1, v2, v4, v3}, Lio/sentry/i4;->b(Ljava/lang/Throwable;Lio/sentry/protocol/f;Ljava/lang/Thread;Z)Lio/sentry/protocol/m;

    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method c(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/m;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0, p1}, Lio/sentry/i4;->a(Ljava/lang/Throwable;)Ljava/util/Deque;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/i4;->d(Ljava/util/Deque;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
