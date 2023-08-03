.class public final Lio/sentry/protocol/u;
.super Lio/sentry/e3;
.source "SentryTransaction.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/u$b;,
        Lio/sentry/protocol/u$a;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private q:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private r:Ljava/lang/Double;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private s:Ljava/lang/Double;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/q;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final u:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/e;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private w:Lio/sentry/protocol/v;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private x:Ljava/util/Map;
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
.method public constructor <init>(Lio/sentry/a5;)V
    .locals 11
    .param p1    # Lio/sentry/a5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/a5;->m()Lio/sentry/protocol/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/e3;-><init>(Lio/sentry/protocol/n;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/u;->t:Ljava/util/List;

    const-string v0, "transaction"

    .line 3
    iput-object v0, p0, Lio/sentry/protocol/u;->u:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/u;->v:Ljava/util/Map;

    const-string v0, "sentryTracer is required"

    .line 5
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lio/sentry/a5;->Y()Lio/sentry/j3;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/j3;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/k;->l(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/u;->r:Ljava/lang/Double;

    .line 7
    invoke-virtual {p1}, Lio/sentry/a5;->Y()Lio/sentry/j3;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lio/sentry/a5;->V()Lio/sentry/j3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/j3;->c(Lio/sentry/j3;)J

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Lio/sentry/k;->l(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/u;->s:Ljava/lang/Double;

    .line 10
    invoke-virtual {p1}, Lio/sentry/a5;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/u;->q:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lio/sentry/a5;->T()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/e5;

    .line 12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lio/sentry/e5;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lio/sentry/protocol/u;->t:Ljava/util/List;

    new-instance v3, Lio/sentry/protocol/q;

    invoke-direct {v3, v1}, Lio/sentry/protocol/q;-><init>(Lio/sentry/e5;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lio/sentry/a5;->l()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 16
    invoke-virtual {p1}, Lio/sentry/a5;->E()Lio/sentry/f5;

    move-result-object v1

    .line 17
    new-instance v10, Lio/sentry/f5;

    .line 18
    invoke-virtual {v1}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v3

    .line 19
    invoke-virtual {v1}, Lio/sentry/f5;->g()Lio/sentry/h5;

    move-result-object v4

    .line 20
    invoke-virtual {v1}, Lio/sentry/f5;->c()Lio/sentry/h5;

    move-result-object v5

    .line 21
    invoke-virtual {v1}, Lio/sentry/f5;->b()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v1}, Lio/sentry/f5;->a()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v1}, Lio/sentry/f5;->f()Lio/sentry/o5;

    move-result-object v8

    .line 24
    invoke-virtual {v1}, Lio/sentry/f5;->h()Lio/sentry/SpanStatus;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/o5;Lio/sentry/SpanStatus;)V

    .line 25
    invoke-virtual {v0, v10}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/f5;)V

    .line 26
    invoke-virtual {v1}, Lio/sentry/f5;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lio/sentry/e3;->j0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p1}, Lio/sentry/a5;->U()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lio/sentry/e3;->c0(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_3
    new-instance v0, Lio/sentry/protocol/v;

    invoke-virtual {p1}, Lio/sentry/a5;->p()Lio/sentry/protocol/TransactionNameSource;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/sentry/protocol/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/protocol/u;->w:Lio/sentry/protocol/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/Map;Lio/sentry/protocol/v;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lio/sentry/protocol/v;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/q;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/e;",
            ">;",
            "Lio/sentry/protocol/v;",
            ")V"
        }
    .end annotation

    .annotation build Lm8/a$c;
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/sentry/e3;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/u;->t:Ljava/util/List;

    const-string v1, "transaction"

    .line 34
    iput-object v1, p0, Lio/sentry/protocol/u;->u:Ljava/lang/String;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/protocol/u;->v:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lio/sentry/protocol/u;->q:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lio/sentry/protocol/u;->r:Ljava/lang/Double;

    .line 38
    iput-object p3, p0, Lio/sentry/protocol/u;->s:Ljava/lang/Double;

    .line 39
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    iput-object p6, p0, Lio/sentry/protocol/u;->w:Lio/sentry/protocol/v;

    return-void
.end method

.method static synthetic n0(Lio/sentry/protocol/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/u;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o0(Lio/sentry/protocol/u;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/u;->r:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic p0(Lio/sentry/protocol/u;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/u;->s:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic q0(Lio/sentry/protocol/u;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/u;->t:Ljava/util/List;

    return-object p0
.end method

.method static synthetic r0(Lio/sentry/protocol/u;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/u;->v:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic s0(Lio/sentry/protocol/u;Lio/sentry/protocol/v;)Lio/sentry/protocol/v;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/u;->w:Lio/sentry/protocol/v;

    return-object p1
.end method

.method private t0(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2
    .param p1    # Ljava/lang/Double;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A0()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/u;->q:Ljava/lang/String;

    return-object v0
.end method

.method public B0()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "transaction"

    return-object v0
.end method

.method public C0()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/protocol/u;->s:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/protocol/u;->v0()Lio/sentry/o5;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/sentry/o5;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

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

    iget-object v0, p0, Lio/sentry/protocol/u;->x:Ljava/util/Map;

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

    .line 2
    iget-object v0, p0, Lio/sentry/protocol/u;->q:Ljava/lang/String;

    const-string v1, "transaction"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/u;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    :cond_0
    const-string v0, "start_timestamp"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/u;->r:Ljava/lang/Double;

    invoke-direct {p0, v2}, Lio/sentry/protocol/u;->t0(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 5
    iget-object v0, p0, Lio/sentry/protocol/u;->s:Ljava/lang/Double;

    if-eqz v0, :cond_1

    const-string v0, "timestamp"

    .line 6
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/u;->s:Ljava/lang/Double;

    invoke-direct {p0, v2}, Lio/sentry/protocol/u;->t0(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 7
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/u;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "spans"

    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/u;->t:Ljava/util/List;

    invoke-virtual {v0, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_2
    const-string v0, "type"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 10
    iget-object v0, p0, Lio/sentry/protocol/u;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "measurements"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/u;->v:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_3
    const-string v0, "transaction_info"

    .line 12
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/u;->w:Lio/sentry/protocol/v;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 13
    new-instance v0, Lio/sentry/e3$c;

    invoke-direct {v0}, Lio/sentry/e3$c;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/e3$c;->a(Lio/sentry/e3;Lio/sentry/k1;Lio/sentry/o0;)V

    .line 14
    iget-object v0, p0, Lio/sentry/protocol/u;->x:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 15
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

    .line 16
    iget-object v2, p0, Lio/sentry/protocol/u;->x:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 18
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 19
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

    iput-object p1, p0, Lio/sentry/protocol/u;->x:Ljava/util/Map;

    return-void
.end method

.method public u0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/e;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/u;->v:Ljava/util/Map;

    return-object v0
.end method

.method public v0()Lio/sentry/o5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/f5;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/sentry/f5;->f()Lio/sentry/o5;

    move-result-object v0

    return-object v0
.end method

.method public w0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/q;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/u;->t:Ljava/util/List;

    return-object v0
.end method

.method public x0()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/u;->r:Ljava/lang/Double;

    return-object v0
.end method

.method public y0()Lio/sentry/SpanStatus;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/f5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/sentry/f5;->h()Lio/sentry/SpanStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public z0()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/u;->s:Ljava/lang/Double;

    return-object v0
.end method
