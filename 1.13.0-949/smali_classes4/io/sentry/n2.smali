.class public final Lio/sentry/n2;
.super Ljava/lang/Object;
.source "ProfilingTransactionData.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/n2$b;,
        Lio/sentry/n2$a;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:Ljava/lang/Long;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/Long;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private g:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:Ljava/util/Map;
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
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/c2;->K()Lio/sentry/c2;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1, v1}, Lio/sentry/n2;-><init>(Lio/sentry/w0;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/w0;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/n2;->a:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/n2;->b:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/n2;->c:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    .line 7
    iput-object p3, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    return-void
.end method

.method static synthetic a(Lio/sentry/n2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/n2;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/sentry/n2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/n2;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/n2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/n2;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic e(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic f(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic g(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lio/sentry/n2;->g:Ljava/lang/Long;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lio/sentry/n2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lio/sentry/n2;

    .line 3
    iget-object v2, p0, Lio/sentry/n2;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/n2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/n2;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/n2;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/n2;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/n2;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/n2;->d:Ljava/lang/Long;

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/n2;->f:Ljava/lang/Long;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/n2;->g:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/n2;->g:Ljava/lang/Long;

    .line 8
    invoke-static {v2, v3}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/n2;->e:Ljava/lang/Long;

    .line 9
    invoke-static {v2, v3}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/n2;->h:Ljava/util/Map;

    iget-object p1, p1, Lio/sentry/n2;->h:Ljava/util/Map;

    .line 10
    invoke-static {v2, p1}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
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

    iget-object v0, p0, Lio/sentry/n2;->h:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/n2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/sentry/n2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/n2;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/n2;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/n2;->g:Ljava/lang/Long;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/n2;->h:Ljava/util/Map;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/sentry/util/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/n2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/n2;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public k()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public l()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public m()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/n2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    .line 3
    iget-object p1, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/n2;->g:Ljava/lang/Long;

    .line 5
    iget-object p1, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/n2;->a:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/n2;->c:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    return-void
.end method

.method public s(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    return-void
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

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/n2;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "trace_id"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/n2;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "name"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/n2;->c:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "relative_start_ns"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/n2;->d:Ljava/lang/Long;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "relative_end_ns"

    .line 6
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/n2;->e:Ljava/lang/Long;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "relative_cpu_start_ms"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/n2;->f:Ljava/lang/Long;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "relative_cpu_end_ms"

    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/n2;->g:Ljava/lang/Long;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 9
    iget-object v0, p0, Lio/sentry/n2;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lio/sentry/n2;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 13
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 14
    :cond_0
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

    iput-object p1, p0, Lio/sentry/n2;->h:Ljava/util/Map;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/n2;->b:Ljava/lang/String;

    return-void
.end method
