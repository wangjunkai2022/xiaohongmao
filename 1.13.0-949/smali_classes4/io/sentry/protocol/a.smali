.class public final Lio/sentry/protocol/a;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/a$b;,
        Lio/sentry/protocol/a$a;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "app"


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Ljava/util/Date;
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

.field private e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lm8/h;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/a;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 7
    iget-object v0, p1, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 11
    iget-object p1, p1, Lio/sentry/protocol/a;->i:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/a;->i:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/sentry/protocol/a;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lio/sentry/protocol/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

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

    iget-object v0, p0, Lio/sentry/protocol/a;->i:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/Map;
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

    iget-object v0, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

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
    iget-object v0, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "app_identifier"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    if-eqz v0, :cond_1

    const-string v0, "app_start_time"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "device_app_hash"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 8
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "build_type"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 10
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "app_name"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 12
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "app_version"

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 14
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "app_build"

    .line 15
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 16
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "permissions"

    .line 17
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 18
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/a;->i:Ljava/util/Map;

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
    iget-object v2, p0, Lio/sentry/protocol/a;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 22
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

    iput-object p1, p0, Lio/sentry/protocol/a;->i:Ljava/util/Map;

    return-void
.end method

.method public t(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/util/Map;)V
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

    iput-object p1, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    return-void
.end method
