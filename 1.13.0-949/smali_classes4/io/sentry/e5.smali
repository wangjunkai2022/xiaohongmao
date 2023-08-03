.class public final Lio/sentry/e5;
.super Ljava/lang/Object;
.source "Span.java"

# interfaces
.implements Lio/sentry/v0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/j3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lio/sentry/j3;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Lio/sentry/f5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/a5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Lio/sentry/g5;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final i:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lio/sentry/p5;Lio/sentry/a5;Lio/sentry/n0;Lio/sentry/j3;)V
    .locals 2
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/a5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/n;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/e5;->i:Ljava/util/Map;

    const-string v0, "context is required"

    .line 15
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/f5;

    iput-object p1, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    const-string p1, "sentryTracer is required"

    .line 16
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/a5;

    iput-object p1, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    const-string p1, "hub is required"

    .line 17
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/e5;->f:Lio/sentry/n0;

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lio/sentry/e5;->h:Lio/sentry/g5;

    if-eqz p4, :cond_0

    .line 19
    iput-object p4, p0, Lio/sentry/e5;->a:Lio/sentry/j3;

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p3}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/k3;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/e5;->a:Lio/sentry/j3;

    :goto_0
    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/a5;Ljava/lang/String;Lio/sentry/n0;)V
    .locals 8
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/h5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/a5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lio/sentry/e5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/a5;Ljava/lang/String;Lio/sentry/n0;Lio/sentry/j3;Lio/sentry/g5;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/a5;Ljava/lang/String;Lio/sentry/n0;Lio/sentry/j3;Lio/sentry/g5;)V
    .locals 7
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/h5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/a5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lio/sentry/g5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/e5;->i:Ljava/util/Map;

    .line 5
    new-instance v0, Lio/sentry/f5;

    new-instance v3, Lio/sentry/h5;

    invoke-direct {v3}, Lio/sentry/h5;-><init>()V

    .line 6
    invoke-virtual {p3}, Lio/sentry/a5;->I()Lio/sentry/o5;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/String;Lio/sentry/h5;Lio/sentry/o5;)V

    iput-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    const-string p1, "transaction is required"

    .line 7
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/a5;

    iput-object p1, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    const-string p1, "hub is required"

    .line 8
    invoke-static {p5, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/e5;->f:Lio/sentry/n0;

    .line 9
    iput-object p7, p0, Lio/sentry/e5;->h:Lio/sentry/g5;

    if-eqz p6, :cond_0

    .line 10
    iput-object p6, p0, Lio/sentry/e5;->a:Lio/sentry/j3;

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p5}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/k3;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/e5;->a:Lio/sentry/j3;

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E()Lio/sentry/f5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    return-object v0
.end method

.method public F()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V
    .locals 3
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0, p1}, Lio/sentry/f5;->p(Lio/sentry/SpanStatus;)V

    if-nez p2, :cond_1

    .line 3
    iget-object p1, p0, Lio/sentry/e5;->f:Lio/sentry/n0;

    invoke-interface {p1}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/k3;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lio/sentry/e5;->b:Lio/sentry/j3;

    .line 4
    iget-object p1, p0, Lio/sentry/e5;->e:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 5
    iget-object p2, p0, Lio/sentry/e5;->f:Lio/sentry/n0;

    iget-object v0, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    invoke-virtual {v0}, Lio/sentry/a5;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, p0, v0}, Lio/sentry/n0;->y(Ljava/lang/Throwable;Lio/sentry/v0;Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object p1, p0, Lio/sentry/e5;->h:Lio/sentry/g5;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p0}, Lio/sentry/g5;->a(Lio/sentry/e5;)V

    :cond_3
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;
    .locals 2
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
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    iget-object v1, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v1}, Lio/sentry/f5;->g()Lio/sentry/h5;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/sentry/a5;->h0(Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method public I()Lio/sentry/o5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->f()Lio/sentry/o5;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0, p1}, Lio/sentry/f5;->l(Ljava/lang/String;)V

    return-void
.end method

.method public K()Ljava/util/Map;
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

    iget-object v0, p0, Lio/sentry/e5;->i:Ljava/util/Map;

    return-object v0
.end method

.method public L()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->b:Lio/sentry/j3;

    return-object v0
.end method

.method public M()Lio/sentry/h5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->c()Lio/sentry/h5;

    move-result-object v0

    return-object v0
.end method

.method public N()Lio/sentry/h5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->g()Lio/sentry/h5;

    move-result-object v0

    return-object v0
.end method

.method public O()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->a:Lio/sentry/j3;

    return-object v0
.end method

.method public P()Ljava/util/Map;
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

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v0

    return-object v0
.end method

.method R(Lio/sentry/g5;)V
    .locals 0
    .param p1    # Lio/sentry/g5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e5;->h:Lio/sentry/g5;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0, p1, p2}, Lio/sentry/f5;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public c(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0, p1}, Lio/sentry/f5;->p(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public d()Lio/sentry/v4;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/v4;

    iget-object v1, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v1}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v2}, Lio/sentry/f5;->g()Lio/sentry/h5;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v3}, Lio/sentry/f5;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/v4;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->h()Lio/sentry/SpanStatus;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->h()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/e5;->t(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0, p1}, Lio/sentry/f5;->k(Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)Lio/sentry/v0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/e5;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    invoke-virtual {v0, p1, p2}, Lio/sentry/a5;->o(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public q()Lio/sentry/m5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    invoke-virtual {v0}, Lio/sentry/a5;->q()Lio/sentry/m5;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public s(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lio/sentry/e5;->e:Ljava/lang/Throwable;

    return-void
.end method

.method public t(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/e5;->f:Lio/sentry/n0;

    invoke-interface {v0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/k3;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/sentry/e5;->G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    invoke-virtual {v0}, Lio/sentry/f5;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/util/List;)Lio/sentry/e;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/e;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    invoke-virtual {v0, p1}, Lio/sentry/a5;->v(Ljava/util/List;)Lio/sentry/e;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/e5;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    iget-object v1, p0, Lio/sentry/e5;->c:Lio/sentry/f5;

    .line 4
    invoke-virtual {v1}, Lio/sentry/f5;->g()Lio/sentry/h5;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lio/sentry/a5;->i0(Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/MeasurementUnit;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/e5;->d:Lio/sentry/a5;

    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/a5;->y(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    return-void
.end method
