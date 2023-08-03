.class public final Lio/sentry/protocol/e;
.super Ljava/lang/Object;
.source "MeasurementValue.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/e$b;,
        Lio/sentry/protocol/e$a;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Ljava/lang/Number;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/protocol/e;->a:Ljava/lang/Number;

    .line 3
    iput-object p2, p0, Lio/sentry/protocol/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/sentry/protocol/e;->a:Ljava/lang/Number;

    .line 6
    iput-object p2, p0, Lio/sentry/protocol/e;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lio/sentry/protocol/e;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Number;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/e;->a:Ljava/lang/Number;

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

    iget-object v0, p0, Lio/sentry/protocol/e;->c:Ljava/util/Map;

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

    const-string v0, "value"

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/e;->a:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 3
    iget-object v0, p0, Lio/sentry/protocol/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "unit"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/e;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lio/sentry/protocol/e;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 9
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 10
    :cond_1
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

    iput-object p1, p0, Lio/sentry/protocol/e;->c:Ljava/util/Map;

    return-void
.end method
