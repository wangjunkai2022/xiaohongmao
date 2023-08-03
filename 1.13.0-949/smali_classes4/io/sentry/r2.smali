.class public final Lio/sentry/r2;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/r2$a;,
        Lio/sentry/r2$c;,
        Lio/sentry/r2$b;
    }
.end annotation


# instance fields
.field private a:Lio/sentry/SentryLevel;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lio/sentry/w0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Lio/sentry/protocol/w;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Lio/sentry/protocol/i;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/util/List;
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

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/sentry/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Ljava/util/Map;
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

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/z;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile l:Lio/sentry/Session;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final m:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private o:Lio/sentry/protocol/Contexts;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/b;",
            ">;"
        }
    .end annotation

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->f:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->i:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->j:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->m:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->n:Ljava/lang/Object;

    .line 8
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->o:Lio/sentry/protocol/Contexts;

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->p:Ljava/util/List;

    const-string v0, "SentryOptions is required."

    .line 10
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result p1

    invoke-direct {p0, p1}, Lio/sentry/r2;->i(I)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/r2;->g:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lio/sentry/r2;)V
    .locals 6
    .param p1    # Lio/sentry/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->f:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->h:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->i:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->j:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->m:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->n:Ljava/lang/Object;

    .line 19
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->o:Lio/sentry/protocol/Contexts;

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/r2;->p:Ljava/util/List;

    .line 21
    iget-object v0, p1, Lio/sentry/r2;->b:Lio/sentry/w0;

    iput-object v0, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    .line 22
    iget-object v0, p1, Lio/sentry/r2;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/r2;->c:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lio/sentry/r2;->l:Lio/sentry/Session;

    iput-object v0, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    .line 24
    iget-object v0, p1, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    .line 25
    iget-object v0, p1, Lio/sentry/r2;->a:Lio/sentry/SentryLevel;

    iput-object v0, p0, Lio/sentry/r2;->a:Lio/sentry/SentryLevel;

    .line 26
    iget-object v0, p1, Lio/sentry/r2;->d:Lio/sentry/protocol/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    new-instance v2, Lio/sentry/protocol/w;

    invoke-direct {v2, v0}, Lio/sentry/protocol/w;-><init>(Lio/sentry/protocol/w;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lio/sentry/r2;->d:Lio/sentry/protocol/w;

    .line 28
    iget-object v0, p1, Lio/sentry/r2;->e:Lio/sentry/protocol/i;

    if-eqz v0, :cond_1

    .line 29
    new-instance v1, Lio/sentry/protocol/i;

    invoke-direct {v1, v0}, Lio/sentry/protocol/i;-><init>(Lio/sentry/protocol/i;)V

    :cond_1
    iput-object v1, p0, Lio/sentry/r2;->e:Lio/sentry/protocol/i;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/sentry/r2;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/r2;->f:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lio/sentry/r2;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/r2;->j:Ljava/util/List;

    .line 32
    iget-object v0, p1, Lio/sentry/r2;->g:Ljava/util/Queue;

    const/4 v1, 0x0

    new-array v2, v1, [Lio/sentry/f;

    invoke-interface {v0, v2}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/f;

    .line 33
    iget-object v2, p1, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v2

    invoke-direct {p0, v2}, Lio/sentry/r2;->i(I)Ljava/util/Queue;

    move-result-object v2

    .line 34
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 35
    new-instance v5, Lio/sentry/f;

    invoke-direct {v5, v4}, Lio/sentry/f;-><init>(Lio/sentry/f;)V

    .line 36
    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_2
    iput-object v2, p0, Lio/sentry/r2;->g:Ljava/util/Queue;

    .line 38
    iget-object v0, p1, Lio/sentry/r2;->h:Ljava/util/Map;

    .line 39
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 40
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 42
    :cond_4
    iput-object v1, p0, Lio/sentry/r2;->h:Ljava/util/Map;

    .line 43
    iget-object v0, p1, Lio/sentry/r2;->i:Ljava/util/Map;

    .line 44
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_5

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 47
    :cond_6
    iput-object v1, p0, Lio/sentry/r2;->i:Ljava/util/Map;

    .line 48
    new-instance v0, Lio/sentry/protocol/Contexts;

    iget-object v1, p1, Lio/sentry/r2;->o:Lio/sentry/protocol/Contexts;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    iput-object v0, p0, Lio/sentry/r2;->o:Lio/sentry/protocol/Contexts;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Lio/sentry/r2;->p:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/r2;->p:Ljava/util/List;

    return-void
.end method

.method private i(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lio/sentry/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/h;

    invoke-direct {v0, p1}, Lio/sentry/h;-><init>(I)V

    invoke-static {v0}, Lio/sentry/k5;->d(Ljava/util/Queue;)Lio/sentry/k5;

    move-result-object p1

    return-object p1
.end method

.method private k(Lio/sentry/SentryOptions$a;Lio/sentry/f;Lio/sentry/b0;)Lio/sentry/f;
    .locals 2
    .param p1    # Lio/sentry/SentryOptions$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3}, Lio/sentry/SentryOptions$a;->a(Lio/sentry/f;Lio/sentry/b0;)Lio/sentry/f;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object p3, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "The BeforeBreadcrumbCallback callback threw an exception. Exception details will be added to the breadcrumb."

    .line 4
    invoke-interface {p3, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "sentry:message"

    invoke-virtual {p2, p3, p1}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object p2
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/q0;

    .line 4
    invoke-interface {v1, p1}, Lio/sentry/q0;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/q0;

    .line 4
    invoke-interface {v1, p1}, Lio/sentry/q0;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Lio/sentry/r2;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public D(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Character;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Lio/sentry/r2;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Lio/sentry/r2;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public F(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/r2;->o:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Lio/sentry/r2;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public H(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Lio/sentry/r2;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public I(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Lio/sentry/r2;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/q0;

    .line 4
    invoke-interface {v1, p1, p2}, Lio/sentry/q0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/r2;->f:Ljava/util/List;

    return-void
.end method

.method public L(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/r2;->a:Lio/sentry/SentryLevel;

    return-void
.end method

.method public M(Lio/sentry/protocol/i;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/i;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/r2;->e:Lio/sentry/protocol/i;

    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/q0;

    .line 4
    invoke-interface {v1, p1, p2}, Lio/sentry/q0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O(Lio/sentry/w0;)V
    .locals 1
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-interface {v0, p1, v1}, Lio/sentry/w0;->f(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lio/sentry/r2;->c:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transaction cannot be null"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Q(Lio/sentry/protocol/w;)V
    .locals 2
    .param p1    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/r2;->d:Lio/sentry/protocol/w;

    .line 2
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/q0;

    .line 4
    invoke-interface {v1, p1}, Lio/sentry/q0;->f(Lio/sentry/protocol/w;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method R()Lio/sentry/r2$c;
    .locals 8
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    invoke-virtual {v1}, Lio/sentry/Session;->c()V

    .line 4
    :cond_0
    iget-object v1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    .line 5
    iget-object v2, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    new-instance v2, Lio/sentry/Session;

    iget-object v4, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    .line 7
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/r2;->d:Lio/sentry/protocol/w;

    iget-object v6, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lio/sentry/Session;-><init>(Ljava/lang/String;Lio/sentry/protocol/w;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lio/sentry/Session;->b()Lio/sentry/Session;

    move-result-object v3

    .line 9
    :cond_1
    new-instance v1, Lio/sentry/r2$c;

    iget-object v2, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    invoke-virtual {v2}, Lio/sentry/Session;->b()Lio/sentry/Session;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lio/sentry/r2$c;-><init>(Lio/sentry/Session;Lio/sentry/Session;)V

    move-object v3, v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    .line 11
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Release is not set on SentryOptions. Session could not be started"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 12
    invoke-interface {v1, v2, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method S(Lio/sentry/r2$a;)Lio/sentry/Session;
    .locals 2
    .param p1    # Lio/sentry/r2$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    invoke-interface {p1, v1}, Lio/sentry/r2$a;->a(Lio/sentry/Session;)V

    .line 3
    iget-object p1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    invoke-virtual {p1}, Lio/sentry/Session;->b()Lio/sentry/Session;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public T(Lio/sentry/r2$b;)V
    .locals 2
    .param p1    # Lio/sentry/r2$b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    invoke-interface {p1, v1}, Lio/sentry/r2$b;->a(Lio/sentry/w0;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lio/sentry/b;)V
    .locals 1
    .param p1    # Lio/sentry/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/r2;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lio/sentry/f;)V
    .locals 1
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/r2;->c(Lio/sentry/f;Lio/sentry/b0;)V

    return-void
.end method

.method public c(Lio/sentry/f;Lio/sentry/b0;)V
    .locals 2
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lio/sentry/b0;

    invoke-direct {p2}, Lio/sentry/b0;-><init>()V

    .line 2
    :cond_1
    iget-object v0, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeBreadcrumb()Lio/sentry/SentryOptions$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/r2;->k(Lio/sentry/SentryOptions$a;Lio/sentry/f;Lio/sentry/b0;)Lio/sentry/f;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    iget-object p2, p0, Lio/sentry/r2;->g:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    iget-object p2, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/q0;

    .line 7
    invoke-interface {v0, p1}, Lio/sentry/q0;->g(Lio/sentry/f;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lio/sentry/r2;->k:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Breadcrumb was dropped by beforeBreadcrumb"

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public d(Lio/sentry/z;)V
    .locals 1
    .param p1    # Lio/sentry/z;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/r2;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/sentry/r2;->a:Lio/sentry/SentryLevel;

    .line 2
    iput-object v0, p0, Lio/sentry/r2;->d:Lio/sentry/protocol/w;

    .line 3
    iput-object v0, p0, Lio/sentry/r2;->e:Lio/sentry/protocol/i;

    .line 4
    iget-object v0, p0, Lio/sentry/r2;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p0}, Lio/sentry/r2;->g()V

    .line 6
    iget-object v0, p0, Lio/sentry/r2;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v0, p0, Lio/sentry/r2;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v0, p0, Lio/sentry/r2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    invoke-virtual {p0}, Lio/sentry/r2;->h()V

    .line 10
    invoke-virtual {p0}, Lio/sentry/r2;->f()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lio/sentry/r2;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lio/sentry/r2;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v1, p0, Lio/sentry/r2;->c:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method j()Lio/sentry/Session;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    invoke-virtual {v1}, Lio/sentry/Session;->c()V

    .line 4
    iget-object v1, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    invoke-virtual {v1}, Lio/sentry/Session;->b()Lio/sentry/Session;

    move-result-object v1

    .line 5
    iput-object v2, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    move-object v2, v1

    .line 6
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/b;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lio/sentry/r2;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method m()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lio/sentry/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->g:Ljava/util/Queue;

    return-object v0
.end method

.method public n()Lio/sentry/protocol/Contexts;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->o:Lio/sentry/protocol/Contexts;

    return-object v0
.end method

.method o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/z;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->j:Ljava/util/List;

    return-object v0
.end method

.method p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->i:Ljava/util/Map;

    return-object v0
.end method

.method q()Ljava/util/List;
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

    iget-object v0, p0, Lio/sentry/r2;->f:Ljava/util/List;

    return-object v0
.end method

.method public r()Lio/sentry/SentryLevel;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->a:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public s()Lio/sentry/protocol/i;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->e:Lio/sentry/protocol/i;

    return-object v0
.end method

.method public t()Lio/sentry/Session;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->l:Lio/sentry/Session;

    return-object v0
.end method

.method public u()Lio/sentry/v0;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/sentry/w0;->z()Lio/sentry/e5;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public v()Ljava/util/Map;
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

    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->h:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public w()Lio/sentry/w0;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->b:Lio/sentry/w0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/r2;->c:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public y()Lio/sentry/protocol/w;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2;->d:Lio/sentry/protocol/w;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/r2;->o:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
