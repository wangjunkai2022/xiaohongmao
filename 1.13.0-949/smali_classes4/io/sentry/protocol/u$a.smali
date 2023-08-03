.class public final Lio/sentry/protocol/u$a;
.super Ljava/lang/Object;
.source "SentryTransaction.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/protocol/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/i1;Lio/sentry/o0;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/sentry/i1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/u$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/u;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/u;
    .locals 8
    .param p1    # Lio/sentry/i1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 2
    new-instance v7, Lio/sentry/protocol/u;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lio/sentry/protocol/v;

    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 4
    invoke-virtual {v0}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lio/sentry/protocol/v;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/sentry/protocol/u;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/Map;Lio/sentry/protocol/v;)V

    .line 5
    new-instance v0, Lio/sentry/e3$a;

    invoke-direct {v0}, Lio/sentry/e3$a;-><init>()V

    const/4 v1, 0x0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_9

    .line 7
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "transaction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v4, "transaction_info"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "spans"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "timestamp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "measurements"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "start_timestamp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 9
    invoke-virtual {v0, v7, v2, p1, p2}, Lio/sentry/e3$a;->a(Lio/sentry/e3;Ljava/lang/String;Lio/sentry/i1;Lio/sentry/o0;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_8

    .line 10
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    :cond_8
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lio/sentry/protocol/u;->n0(Lio/sentry/protocol/u;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 13
    :pswitch_1
    new-instance v2, Lio/sentry/protocol/v$a;

    invoke-direct {v2}, Lio/sentry/protocol/v$a;-><init>()V

    .line 14
    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/v$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/v;

    move-result-object v2

    .line 15
    invoke-static {v7, v2}, Lio/sentry/protocol/u;->s0(Lio/sentry/protocol/u;Lio/sentry/protocol/v;)Lio/sentry/protocol/v;

    goto/16 :goto_0

    .line 16
    :pswitch_2
    new-instance v2, Lio/sentry/protocol/q$a;

    invoke-direct {v2}, Lio/sentry/protocol/q$a;-><init>()V

    .line 17
    invoke-virtual {p1, p2, v2}, Lio/sentry/i1;->z0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    invoke-static {v7}, Lio/sentry/protocol/u;->q0(Lio/sentry/protocol/u;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 19
    :pswitch_3
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 20
    invoke-static {v7, v2}, Lio/sentry/protocol/u;->p0(Lio/sentry/protocol/u;Ljava/lang/Double;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    .line 21
    invoke-virtual {p1, p2}, Lio/sentry/i1;->u0(Lio/sentry/o0;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 22
    invoke-static {v2}, Lio/sentry/k;->b(Ljava/util/Date;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v7, v2}, Lio/sentry/protocol/u;->p0(Lio/sentry/protocol/u;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 23
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    goto/16 :goto_0

    .line 24
    :pswitch_5
    new-instance v2, Lio/sentry/protocol/e$a;

    invoke-direct {v2}, Lio/sentry/protocol/e$a;-><init>()V

    .line 25
    invoke-virtual {p1, p2, v2}, Lio/sentry/i1;->B0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 26
    invoke-static {v7}, Lio/sentry/protocol/u;->r0(Lio/sentry/protocol/u;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 27
    :pswitch_6
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {v7, v2}, Lio/sentry/protocol/u;->o0(Lio/sentry/protocol/u;Ljava/lang/Double;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    .line 29
    invoke-virtual {p1, p2}, Lio/sentry/i1;->u0(Lio/sentry/o0;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {v2}, Lio/sentry/k;->b(Ljava/util/Date;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v7, v2}, Lio/sentry/protocol/u;->o0(Lio/sentry/protocol/u;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 31
    :cond_9
    invoke-virtual {v7, v1}, Lio/sentry/protocol/u;->setUnknown(Ljava/util/Map;)V

    .line 32
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b03aa87 -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x688f269 -> :sswitch_2
        0x1e52656f -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
