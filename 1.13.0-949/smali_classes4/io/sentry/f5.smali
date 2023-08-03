.class public Lio/sentry/f5;
.super Ljava/lang/Object;
.source "SpanContext.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/f5$b;,
        Lio/sentry/f5$a;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "trace"


# instance fields
.field private final a:Lio/sentry/protocol/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/h5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/h5;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private transient d:Lio/sentry/o5;
    .annotation build Lm8/h;
    .end annotation
.end field

.field protected e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field protected f:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field protected g:Lio/sentry/SpanStatus;
    .annotation build Lm8/h;
    .end annotation
.end field

.field protected h:Ljava/util/Map;
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

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/f5;)V
    .locals 1
    .param p1    # Lio/sentry/f5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/f5;->h:Ljava/util/Map;

    .line 15
    iget-object v0, p1, Lio/sentry/f5;->a:Lio/sentry/protocol/n;

    iput-object v0, p0, Lio/sentry/f5;->a:Lio/sentry/protocol/n;

    .line 16
    iget-object v0, p1, Lio/sentry/f5;->b:Lio/sentry/h5;

    iput-object v0, p0, Lio/sentry/f5;->b:Lio/sentry/h5;

    .line 17
    iget-object v0, p1, Lio/sentry/f5;->c:Lio/sentry/h5;

    iput-object v0, p0, Lio/sentry/f5;->c:Lio/sentry/h5;

    .line 18
    iget-object v0, p1, Lio/sentry/f5;->d:Lio/sentry/o5;

    iput-object v0, p0, Lio/sentry/f5;->d:Lio/sentry/o5;

    .line 19
    iget-object v0, p1, Lio/sentry/f5;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/f5;->e:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lio/sentry/f5;->f:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/f5;->f:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lio/sentry/f5;->g:Lio/sentry/SpanStatus;

    iput-object v0, p0, Lio/sentry/f5;->g:Lio/sentry/SpanStatus;

    .line 22
    iget-object p1, p1, Lio/sentry/f5;->h:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lio/sentry/f5;->h:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/o5;Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/h5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/f5;->h:Ljava/util/Map;

    const-string v0, "traceId is required"

    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/n;

    iput-object p1, p0, Lio/sentry/f5;->a:Lio/sentry/protocol/n;

    const-string p1, "spanId is required"

    .line 7
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/h5;

    iput-object p1, p0, Lio/sentry/f5;->b:Lio/sentry/h5;

    const-string p1, "operation is required"

    .line 8
    invoke-static {p4, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/f5;->e:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lio/sentry/f5;->c:Lio/sentry/h5;

    .line 10
    iput-object p6, p0, Lio/sentry/f5;->d:Lio/sentry/o5;

    .line 11
    iput-object p5, p0, Lio/sentry/f5;->f:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lio/sentry/f5;->g:Lio/sentry/SpanStatus;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/String;Lio/sentry/h5;Lio/sentry/o5;)V
    .locals 8
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/h5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/o5;Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    new-instance v1, Lio/sentry/protocol/n;

    invoke-direct {v1}, Lio/sentry/protocol/n;-><init>()V

    new-instance v2, Lio/sentry/h5;

    invoke-direct {v2}, Lio/sentry/h5;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/String;Lio/sentry/h5;Lio/sentry/o5;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/o5;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v1, Lio/sentry/protocol/n;

    invoke-direct {v1}, Lio/sentry/protocol/n;-><init>()V

    new-instance v2, Lio/sentry/h5;

    invoke-direct {v2}, Lio/sentry/h5;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/String;Lio/sentry/h5;Lio/sentry/o5;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f5;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/f5;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lio/sentry/h5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/f5;->c:Lio/sentry/h5;

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/f5;->d:Lio/sentry/o5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/sentry/o5;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/f5;->d:Lio/sentry/o5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/sentry/o5;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f()Lio/sentry/o5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f5;->d:Lio/sentry/o5;

    return-object v0
.end method

.method public g()Lio/sentry/h5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/f5;->b:Lio/sentry/h5;

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

    iget-object v0, p0, Lio/sentry/f5;->i:Ljava/util/Map;

    return-object v0
.end method

.method public h()Lio/sentry/SpanStatus;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/f5;->g:Lio/sentry/SpanStatus;

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

    iget-object v0, p0, Lio/sentry/f5;->h:Ljava/util/Map;

    return-object v0
.end method

.method public j()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/f5;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/f5;->f:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "operation is required"

    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/f5;->e:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/sentry/o5;

    invoke-direct {v0, p1}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lio/sentry/o5;

    invoke-direct {p2, p1}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p2}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lio/sentry/o5;

    invoke-direct {v1, p1, v0, p2, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    invoke-virtual {p0, v1}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    :goto_0
    return-void
.end method

.method public o(Lio/sentry/o5;)V
    .locals 0
    .param p1    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    iput-object p1, p0, Lio/sentry/f5;->d:Lio/sentry/o5;

    return-void
.end method

.method public p(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/f5;->g:Lio/sentry/SpanStatus;

    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value is required"

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/sentry/f5;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v0, "trace_id"

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 3
    iget-object v0, p0, Lio/sentry/f5;->a:Lio/sentry/protocol/n;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/n;->serialize(Lio/sentry/k1;Lio/sentry/o0;)V

    const-string v0, "span_id"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 5
    iget-object v0, p0, Lio/sentry/f5;->b:Lio/sentry/h5;

    invoke-virtual {v0, p1, p2}, Lio/sentry/h5;->serialize(Lio/sentry/k1;Lio/sentry/o0;)V

    .line 6
    iget-object v0, p0, Lio/sentry/f5;->c:Lio/sentry/h5;

    if-eqz v0, :cond_0

    const-string v0, "parent_span_id"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 8
    iget-object v0, p0, Lio/sentry/f5;->c:Lio/sentry/h5;

    invoke-virtual {v0, p1, p2}, Lio/sentry/h5;->serialize(Lio/sentry/k1;Lio/sentry/o0;)V

    :cond_0
    const-string v0, "op"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f5;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 10
    iget-object v0, p0, Lio/sentry/f5;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "description"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f5;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 12
    :cond_1
    iget-object v0, p0, Lio/sentry/f5;->g:Lio/sentry/SpanStatus;

    if-eqz v0, :cond_2

    const-string v0, "status"

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f5;->g:Lio/sentry/SpanStatus;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 14
    :cond_2
    iget-object v0, p0, Lio/sentry/f5;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tags"

    .line 15
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/f5;->h:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 16
    :cond_3
    iget-object v0, p0, Lio/sentry/f5;->i:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 17
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

    .line 18
    iget-object v2, p0, Lio/sentry/f5;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 20
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

    iput-object p1, p0, Lio/sentry/f5;->i:Ljava/util/Map;

    return-void
.end method
