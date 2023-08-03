.class public final Lio/sentry/f;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/f$b;,
        Lio/sentry/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Date;
    .annotation build Lm8/g;
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

.field private d:Ljava/util/Map;
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

.field private e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Lio/sentry/SentryLevel;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/f;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/f;)V
    .locals 1
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/f;->d:Ljava/util/Map;

    .line 6
    iget-object v0, p1, Lio/sentry/f;->a:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/f;->a:Ljava/util/Date;

    .line 7
    iget-object v0, p1, Lio/sentry/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/f;->b:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lio/sentry/f;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/f;->c:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lio/sentry/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/f;->e:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lio/sentry/f;->d:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iput-object v0, p0, Lio/sentry/f;->d:Ljava/util/Map;

    .line 12
    :cond_0
    iget-object v0, p1, Lio/sentry/f;->g:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/f;->g:Ljava/util/Map;

    .line 13
    iget-object p1, p1, Lio/sentry/f;->f:Lio/sentry/SentryLevel;

    iput-object p1, p0, Lio/sentry/f;->f:Lio/sentry/SentryLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Lio/sentry/f;-><init>()V

    .line 16
    iput-object p1, p0, Lio/sentry/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/f;->d:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lio/sentry/f;->a:Ljava/util/Date;

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/f;
    .locals 3
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

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "default"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lio/sentry/f;->x(Ljava/lang/String;)V

    return-object v0
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/f;
    .locals 2
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

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "user"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lio/sentry/f;->x(Ljava/lang/String;)V

    return-object v0
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/f;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/sentry/f;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/f;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/f;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/f;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "user"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/f;->u(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "view.id"

    .line 4
    invoke-virtual {v0, p0, p1}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "view.class"

    .line 5
    invoke-virtual {v0, p0, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p0, "view.tag"

    .line 6
    invoke-virtual {v0, p0, p3}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 8
    invoke-virtual {v0}, Lio/sentry/f;->j()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/f;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/f;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lio/sentry/f;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lio/sentry/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/f;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/sentry/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/f;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/f;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lio/sentry/f;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic d(Lio/sentry/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/f;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lio/sentry/f;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 0

    iput-object p1, p0, Lio/sentry/f;->f:Lio/sentry/SentryLevel;

    return-object p1
.end method

.method public static f(Ljava/lang/String;)Lio/sentry/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "debug"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/f;->x(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lio/sentry/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "error"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/f;->x(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/f;
    .locals 2
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

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "http"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/sentry/f;->u(Ljava/lang/String;)V

    const-string v1, "url"

    .line 4
    invoke-virtual {v0, v1, p0}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "method"

    invoke-virtual {v0, p1, p0}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/f;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/sentry/f;->o(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/f;

    move-result-object p0

    if-eqz p2, :cond_0

    const-string p1, "status_code"

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static q(Ljava/lang/String;)Lio/sentry/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "info"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/f;->x(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/f;
    .locals 2
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

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "navigation"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1, p0}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "to"

    .line 5
    invoke-virtual {v0, p0, p1}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static s(Ljava/lang/String;)Lio/sentry/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "query"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/f;->x(Ljava/lang/String;)V

    return-object v0
.end method

.method public static z(Ljava/lang/String;)Lio/sentry/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "default"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string v1, "sentry.transaction"

    .line 3
    invoke-virtual {v0, v1}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/sentry/f;->x(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getUnknown()Ljava/util/Map;
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

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->g:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/util/Map;
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

    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->d:Ljava/util/Map;

    return-object v0
.end method

.method public k()Lio/sentry/SentryLevel;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->f:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lio/sentry/k1;Lio/sentry/o0;)V
    .locals 3
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    const-string v0, "timestamp"

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f;->a:Ljava/util/Date;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 3
    iget-object v0, p0, Lio/sentry/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "message"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "type"

    .line 6
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    :cond_1
    const-string v0, "data"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f;->d:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 8
    iget-object v0, p0, Lio/sentry/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "category"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/sentry/f;->f:Lio/sentry/SentryLevel;

    if-eqz v0, :cond_3

    const-string v0, "level"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f;->f:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 12
    :cond_3
    iget-object v0, p0, Lio/sentry/f;->g:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lio/sentry/f;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 16
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/f;->g:Ljava/util/Map;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/f;->e:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public w(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/f;->f:Lio/sentry/SentryLevel;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/f;->b:Ljava/lang/String;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/f;->c:Ljava/lang/String;

    return-void
.end method
