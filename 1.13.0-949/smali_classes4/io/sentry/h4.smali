.class public final Lio/sentry/h4;
.super Lio/sentry/e3;
.source "SentryEvent.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/h4$b;,
        Lio/sentry/h4$a;
    }
.end annotation


# instance fields
.field private q:Ljava/util/Date;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private r:Lio/sentry/protocol/g;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private t:Lio/sentry/b5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/b5<",
            "Lio/sentry/protocol/t;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private u:Lio/sentry/b5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/b5<",
            "Lio/sentry/protocol/m;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private v:Lio/sentry/SentryLevel;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private y:Ljava/util/Map;
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

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    new-instance v0, Lio/sentry/protocol/n;

    invoke-direct {v0}, Lio/sentry/protocol/n;-><init>()V

    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/h4;-><init>(Lio/sentry/protocol/n;Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/n;Ljava/util/Date;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/e3;-><init>(Lio/sentry/protocol/n;)V

    .line 2
    iput-object p2, p0, Lio/sentry/h4;->q:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lio/sentry/h4;-><init>()V

    .line 4
    iput-object p1, p0, Lio/sentry/e3;->j:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/k;
    .end annotation

    .line 6
    new-instance v0, Lio/sentry/protocol/n;

    invoke-direct {v0}, Lio/sentry/protocol/n;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/sentry/h4;-><init>(Lio/sentry/protocol/n;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic n0(Lio/sentry/h4;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->q:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic o0(Lio/sentry/h4;Lio/sentry/protocol/g;)Lio/sentry/protocol/g;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->r:Lio/sentry/protocol/g;

    return-object p1
.end method

.method static synthetic p0(Lio/sentry/h4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q0(Lio/sentry/h4;Lio/sentry/b5;)Lio/sentry/b5;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->t:Lio/sentry/b5;

    return-object p1
.end method

.method static synthetic r0(Lio/sentry/h4;Lio/sentry/b5;)Lio/sentry/b5;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->u:Lio/sentry/b5;

    return-object p1
.end method

.method static synthetic s0(Lio/sentry/h4;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->v:Lio/sentry/SentryLevel;

    return-object p1
.end method

.method static synthetic t0(Lio/sentry/h4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u0(Lio/sentry/h4;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->x:Ljava/util/List;

    return-object p1
.end method

.method static synthetic v0(Lio/sentry/h4;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public A0()Lio/sentry/protocol/g;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/h4;->r:Lio/sentry/protocol/g;

    return-object v0
.end method

.method public B0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method C0()Ljava/util/Map;
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

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    return-object v0
.end method

.method public D0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/t;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/h4;->t:Lio/sentry/b5;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public E0()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/sentry/h4;->q:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public F0()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/h4;->w:Ljava/lang/String;

    return-object v0
.end method

.method public G0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/h4;->u:Lio/sentry/b5;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/m;

    .line 3
    invoke-virtual {v1}, Lio/sentry/protocol/m;->g()Lio/sentry/protocol/f;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lio/sentry/protocol/m;->g()Lio/sentry/protocol/f;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/f;->o()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lio/sentry/protocol/m;->g()Lio/sentry/protocol/f;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/f;->o()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public H0()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/h4;->u:Lio/sentry/b5;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public J0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/m;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/sentry/b5;

    invoke-direct {v0, p1}, Lio/sentry/b5;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/sentry/h4;->u:Lio/sentry/b5;

    return-void
.end method

.method public K0(Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/sentry/h4;->x:Ljava/util/List;

    return-void
.end method

.method public L0(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/h4;->v:Lio/sentry/SentryLevel;

    return-void
.end method

.method public M0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/h4;->s:Ljava/lang/String;

    return-void
.end method

.method public N0(Lio/sentry/protocol/g;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/g;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/h4;->r:Lio/sentry/protocol/g;

    return-void
.end method

.method public O0(Ljava/lang/String;Ljava/lang/String;)V
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
    iget-object v0, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public P0(Ljava/util/Map;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/sentry/util/a;->f(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    return-void
.end method

.method public Q0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/t;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/sentry/b5;

    invoke-direct {v0, p1}, Lio/sentry/b5;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/sentry/h4;->t:Lio/sentry/b5;

    return-void
.end method

.method public R0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/h4;->w:Ljava/lang/String;

    return-void
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

    iget-object v0, p0, Lio/sentry/h4;->y:Ljava/util/Map;

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

    iget-object v1, p0, Lio/sentry/h4;->q:Ljava/util/Date;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 3
    iget-object v0, p0, Lio/sentry/h4;->r:Lio/sentry/protocol/g;

    if-eqz v0, :cond_0

    const-string v0, "message"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h4;->r:Lio/sentry/protocol/g;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/h4;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "logger"

    .line 6
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h4;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 7
    :cond_1
    iget-object v0, p0, Lio/sentry/h4;->t:Lio/sentry/b5;

    const-string v1, "values"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "threads"

    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 9
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    .line 10
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/h4;->t:Lio/sentry/b5;

    invoke-virtual {v2}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 11
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    .line 12
    :cond_2
    iget-object v0, p0, Lio/sentry/h4;->u:Lio/sentry/b5;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "exception"

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 14
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    .line 15
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h4;->u:Lio/sentry/b5;

    invoke-virtual {v1}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 16
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    .line 17
    :cond_3
    iget-object v0, p0, Lio/sentry/h4;->v:Lio/sentry/SentryLevel;

    if-eqz v0, :cond_4

    const-string v0, "level"

    .line 18
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h4;->v:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 19
    :cond_4
    iget-object v0, p0, Lio/sentry/h4;->w:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "transaction"

    .line 20
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h4;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 21
    :cond_5
    iget-object v0, p0, Lio/sentry/h4;->x:Ljava/util/List;

    if-eqz v0, :cond_6

    const-string v0, "fingerprint"

    .line 22
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h4;->x:Ljava/util/List;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 23
    :cond_6
    iget-object v0, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v0, "modules"

    .line 24
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h4;->z:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 25
    :cond_7
    new-instance v0, Lio/sentry/e3$c;

    invoke-direct {v0}, Lio/sentry/e3$c;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/e3$c;->a(Lio/sentry/e3;Lio/sentry/k1;Lio/sentry/o0;)V

    .line 26
    iget-object v0, p0, Lio/sentry/h4;->y:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lio/sentry/h4;->y:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 30
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 31
    :cond_8
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

    iput-object p1, p0, Lio/sentry/h4;->y:Ljava/util/Map;

    return-void
.end method

.method public w0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/m;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/h4;->u:Lio/sentry/b5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/sentry/b5;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public x0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/h4;->x:Ljava/util/List;

    return-object v0
.end method

.method public y0()Lio/sentry/SentryLevel;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/h4;->v:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public z0()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/h4;->s:Ljava/lang/String;

    return-object v0
.end method
