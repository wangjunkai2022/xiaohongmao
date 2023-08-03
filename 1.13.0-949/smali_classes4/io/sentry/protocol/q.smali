.class public final Lio/sentry/protocol/q;
.super Ljava/lang/Object;
.source "SentrySpan.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/q$b;,
        Lio/sentry/protocol/q$a;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Ljava/lang/Double;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/Double;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Lio/sentry/protocol/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/h5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/h5;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final h:Lio/sentry/SpanStatus;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final i:Ljava/util/Map;
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

.field private final j:Ljava/util/Map;
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

.field private k:Ljava/util/Map;
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
.method public constructor <init>(Lio/sentry/e5;)V
    .locals 1
    .param p1    # Lio/sentry/e5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e5;->K()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/protocol/q;-><init>(Lio/sentry/e5;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/e5;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lio/sentry/e5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/e5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lm8/a$c;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "span is required"

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lio/sentry/e5;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/q;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lio/sentry/e5;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/q;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lio/sentry/e5;->N()Lio/sentry/h5;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/q;->d:Lio/sentry/h5;

    .line 7
    invoke-virtual {p1}, Lio/sentry/e5;->M()Lio/sentry/h5;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/q;->e:Lio/sentry/h5;

    .line 8
    invoke-virtual {p1}, Lio/sentry/e5;->Q()Lio/sentry/protocol/n;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/q;->c:Lio/sentry/protocol/n;

    .line 9
    invoke-virtual {p1}, Lio/sentry/e5;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/q;->h:Lio/sentry/SpanStatus;

    .line 10
    invoke-virtual {p1}, Lio/sentry/e5;->P()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lio/sentry/protocol/q;->i:Ljava/util/Map;

    .line 12
    invoke-virtual {p1}, Lio/sentry/e5;->O()Lio/sentry/j3;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/e5;->L()Lio/sentry/j3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/j3;->c(Lio/sentry/j3;)J

    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Lio/sentry/k;->l(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/q;->b:Ljava/lang/Double;

    .line 14
    invoke-virtual {p1}, Lio/sentry/e5;->O()Lio/sentry/j3;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/j3;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/k;->l(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/q;->a:Ljava/lang/Double;

    .line 15
    iput-object p2, p0, Lio/sentry/protocol/q;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lio/sentry/h5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lio/sentry/protocol/n;",
            "Lio/sentry/h5;",
            "Lio/sentry/h5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/SpanStatus;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lm8/a$c;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/q;->a:Ljava/lang/Double;

    .line 18
    iput-object p2, p0, Lio/sentry/protocol/q;->b:Ljava/lang/Double;

    .line 19
    iput-object p3, p0, Lio/sentry/protocol/q;->c:Lio/sentry/protocol/n;

    .line 20
    iput-object p4, p0, Lio/sentry/protocol/q;->d:Lio/sentry/h5;

    .line 21
    iput-object p5, p0, Lio/sentry/protocol/q;->e:Lio/sentry/h5;

    .line 22
    iput-object p6, p0, Lio/sentry/protocol/q;->f:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lio/sentry/protocol/q;->g:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lio/sentry/protocol/q;->h:Lio/sentry/SpanStatus;

    .line 25
    iput-object p9, p0, Lio/sentry/protocol/q;->i:Ljava/util/Map;

    .line 26
    iput-object p10, p0, Lio/sentry/protocol/q;->j:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Double;)Ljava/math/BigDecimal;
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
.method public b()Ljava/util/Map;
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

    iget-object v0, p0, Lio/sentry/protocol/q;->j:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lio/sentry/h5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->e:Lio/sentry/h5;

    return-object v0
.end method

.method public f()Lio/sentry/h5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->d:Lio/sentry/h5;

    return-object v0
.end method

.method public g()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->a:Ljava/lang/Double;

    return-object v0
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

    iget-object v0, p0, Lio/sentry/protocol/q;->k:Ljava/util/Map;

    return-object v0
.end method

.method public h()Lio/sentry/SpanStatus;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->h:Lio/sentry/SpanStatus;

    return-object v0
.end method

.method public i()Ljava/util/Map;
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

    iget-object v0, p0, Lio/sentry/protocol/q;->i:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public k()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/q;->c:Lio/sentry/protocol/n;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/protocol/q;->b:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    const-string v0, "start_timestamp"

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->a:Ljava/lang/Double;

    invoke-direct {p0, v1}, Lio/sentry/protocol/q;->a(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 3
    iget-object v0, p0, Lio/sentry/protocol/q;->b:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const-string v0, "timestamp"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->b:Ljava/lang/Double;

    invoke-direct {p0, v1}, Lio/sentry/protocol/q;->a(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_0
    const-string v0, "trace_id"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->c:Lio/sentry/protocol/n;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "span_id"

    .line 6
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->d:Lio/sentry/h5;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 7
    iget-object v0, p0, Lio/sentry/protocol/q;->e:Lio/sentry/h5;

    if-eqz v0, :cond_1

    const-string v0, "parent_span_id"

    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->e:Lio/sentry/h5;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_1
    const-string v0, "op"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 10
    iget-object v0, p0, Lio/sentry/protocol/q;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "description"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 12
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/q;->h:Lio/sentry/SpanStatus;

    if-eqz v0, :cond_3

    const-string v0, "status"

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->h:Lio/sentry/SpanStatus;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 14
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/q;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "tags"

    .line 15
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->i:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 16
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/q;->j:Ljava/util/Map;

    if-eqz v0, :cond_5

    const-string v0, "data"

    .line 17
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/q;->j:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 18
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/q;->k:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lio/sentry/protocol/q;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 22
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 23
    :cond_6
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

    iput-object p1, p0, Lio/sentry/protocol/q;->k:Ljava/util/Map;

    return-void
.end method
