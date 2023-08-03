.class public final Lio/sentry/m3;
.super Ljava/lang/Object;
.source "SentryEnvelopeHeader.java"

# interfaces
.implements Lio/sentry/m1;
.implements Lio/sentry/o1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/m3$b;,
        Lio/sentry/m3$a;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/protocol/n;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lio/sentry/protocol/l;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Lio/sentry/m5;
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

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    new-instance v0, Lio/sentry/protocol/n;

    invoke-direct {v0}, Lio/sentry/protocol/n;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/n;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/m5;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/m5;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/m5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/m3;->a:Lio/sentry/protocol/n;

    .line 4
    iput-object p2, p0, Lio/sentry/m3;->b:Lio/sentry/protocol/l;

    .line 5
    iput-object p3, p0, Lio/sentry/m3;->c:Lio/sentry/m5;

    return-void
.end method


# virtual methods
.method public a()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/m3;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method public b()Lio/sentry/protocol/l;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/m3;->b:Lio/sentry/protocol/l;

    return-object v0
.end method

.method public c()Lio/sentry/m5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/m3;->c:Lio/sentry/m5;

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

    iget-object v0, p0, Lio/sentry/m3;->d:Ljava/util/Map;

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
    iget-object v0, p0, Lio/sentry/m3;->a:Lio/sentry/protocol/n;

    if-eqz v0, :cond_0

    const-string v0, "event_id"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m3;->a:Lio/sentry/protocol/n;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/m3;->b:Lio/sentry/protocol/l;

    if-eqz v0, :cond_1

    const-string v0, "sdk"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m3;->b:Lio/sentry/protocol/l;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/m3;->c:Lio/sentry/m5;

    if-eqz v0, :cond_2

    const-string v0, "trace"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m3;->c:Lio/sentry/m5;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 8
    :cond_2
    iget-object v0, p0, Lio/sentry/m3;->d:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lio/sentry/m3;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 12
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 13
    :cond_3
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

    iput-object p1, p0, Lio/sentry/m3;->d:Ljava/util/Map;

    return-void
.end method
