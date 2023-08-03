.class public final Lio/sentry/s;
.super Ljava/lang/Object;
.source "DuplicateEventDetectionEventProcessor.java"

# interfaces
.implements Lio/sentry/z;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/s;->a:Ljava/util/Map;

    const-string v0, "options are required"

    .line 4
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/s;->b:Lio/sentry/SentryOptions;

    return-void
.end method

.method private static c(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static d(Ljava/util/Map;Ljava/util/List;)Z
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 4
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
    iget-object p2, p0, Lio/sentry/s;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableDeduplication()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1}, Lio/sentry/e3;->S()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    iget-object v1, p0, Lio/sentry/s;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/sentry/s;->a:Ljava/util/Map;

    .line 4
    invoke-static {p2}, Lio/sentry/s;->c(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/s;->d(Ljava/util/Map;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/s;->a:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p2, p0, Lio/sentry/s;->b:Lio/sentry/SentryOptions;

    .line 7
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "Duplicate Exception detected. Event %s will be discarded."

    .line 9
    invoke-interface {p2, v1, p1, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 10
    :cond_2
    iget-object p2, p0, Lio/sentry/s;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Event deduplication is disabled."

    invoke-interface {p2, v1, v2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public synthetic b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/y;->b(Lio/sentry/z;Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;

    move-result-object p1

    return-object p1
.end method
