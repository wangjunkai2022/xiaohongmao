.class public final Lio/sentry/protocol/t;
.super Ljava/lang/Object;
.source "SentryThread.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/t$b;,
        Lio/sentry/protocol/t$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:Lio/sentry/protocol/s;
    .annotation build Lm8/h;
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/sentry/protocol/t;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->a:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic b(Lio/sentry/protocol/t;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/protocol/t;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lio/sentry/protocol/t;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lio/sentry/protocol/t;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic f(Lio/sentry/protocol/t;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->f:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic g(Lio/sentry/protocol/t;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->g:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic h(Lio/sentry/protocol/t;Lio/sentry/protocol/s;)Lio/sentry/protocol/s;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/t;->h:Lio/sentry/protocol/s;

    return-object p1
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

    iget-object v0, p0, Lio/sentry/protocol/t;->i:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public l()Lio/sentry/protocol/s;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->h:Lio/sentry/protocol/s;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/t;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public q(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public r(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public s(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->g:Ljava/lang/Boolean;

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

    .line 2
    iget-object v0, p0, Lio/sentry/protocol/t;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, "id"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/t;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "priority"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "name"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 8
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/t;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "state"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 10
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/t;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const-string v0, "crashed"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->g0(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/c;

    .line 12
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/t;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const-string v0, "current"

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->g0(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/c;

    .line 14
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/t;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const-string v0, "daemon"

    .line 15
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->g0(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/c;

    .line 16
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/t;->h:Lio/sentry/protocol/s;

    if-eqz v0, :cond_7

    const-string v0, "stacktrace"

    .line 17
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/t;->h:Lio/sentry/protocol/s;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 18
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/t;->i:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 19
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

    .line 20
    iget-object v2, p0, Lio/sentry/protocol/t;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 22
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 23
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

    iput-object p1, p0, Lio/sentry/protocol/t;->i:Ljava/util/Map;

    return-void
.end method

.method public t(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->a:Ljava/lang/Long;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->c:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->b:Ljava/lang/Integer;

    return-void
.end method

.method public w(Lio/sentry/protocol/s;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/s;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->h:Lio/sentry/protocol/s;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/t;->d:Ljava/lang/String;

    return-void
.end method
