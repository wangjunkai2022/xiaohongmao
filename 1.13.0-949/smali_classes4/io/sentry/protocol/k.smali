.class public final Lio/sentry/protocol/k;
.super Ljava/lang/Object;
.source "SdkInfo.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/k$b;,
        Lio/sentry/protocol/k$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Ljava/util/Map;
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

.method static synthetic a(Lio/sentry/protocol/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/k;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/sentry/protocol/k;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/k;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/protocol/k;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/k;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic d(Lio/sentry/protocol/k;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/k;->d:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/k;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/k;->c:Ljava/lang/Integer;

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

    iget-object v0, p0, Lio/sentry/protocol/k;->e:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/k;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/k;->a:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/k;->b:Ljava/lang/Integer;

    return-void
.end method

.method public k(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/k;->c:Ljava/lang/Integer;

    return-void
.end method

.method public l(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/protocol/k;->d:Ljava/lang/Integer;

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
    iget-object v0, p0, Lio/sentry/protocol/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "sdk_name"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/k;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "version_major"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/k;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/k;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v0, "version_minor"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/k;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 8
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/k;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "version_patchlevel"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/k;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 10
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/k;->e:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 11
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

    .line 12
    iget-object v2, p0, Lio/sentry/protocol/k;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 14
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

    iput-object p1, p0, Lio/sentry/protocol/k;->e:Ljava/util/Map;

    return-void
.end method
