.class public final Lio/sentry/h4$a;
.super Ljava/lang/Object;
.source "SentryEvent.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/h4;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/h4$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/h4;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/h4;
    .locals 6
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
    new-instance v0, Lio/sentry/h4;

    invoke-direct {v0}, Lio/sentry/h4;-><init>()V

    .line 3
    new-instance v1, Lio/sentry/e3$a;

    invoke-direct {v1}, Lio/sentry/e3$a;-><init>()V

    const/4 v2, 0x0

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_b

    .line 5
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "transaction"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "exception"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_2
    const-string v5, "modules"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_3
    const-string v5, "message"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_4
    const-string v5, "level"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "timestamp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_6
    const-string v5, "logger"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_7
    const-string v5, "threads"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_8
    const-string v5, "fingerprint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 7
    invoke-virtual {v1, v0, v3, p1, p2}, Lio/sentry/e3$a;->a(Lio/sentry/e3;Ljava/lang/String;Lio/sentry/i1;Lio/sentry/o0;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_a

    .line 8
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    :cond_a
    invoke-virtual {p1, p2, v2, v3}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/h4;->t0(Lio/sentry/h4;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 11
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 12
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    .line 13
    new-instance v3, Lio/sentry/b5;

    new-instance v4, Lio/sentry/protocol/m$a;

    invoke-direct {v4}, Lio/sentry/protocol/m$a;-><init>()V

    .line 14
    invoke-virtual {p1, p2, v4}, Lio/sentry/i1;->z0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/sentry/b5;-><init>(Ljava/util/List;)V

    .line 15
    invoke-static {v0, v3}, Lio/sentry/h4;->r0(Lio/sentry/h4;Lio/sentry/b5;)Lio/sentry/b5;

    .line 16
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    goto/16 :goto_0

    .line 17
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 18
    invoke-static {v3}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/h4;->v0(Lio/sentry/h4;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 19
    :pswitch_3
    new-instance v3, Lio/sentry/protocol/g$a;

    invoke-direct {v3}, Lio/sentry/protocol/g$a;-><init>()V

    invoke-virtual {p1, p2, v3}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/g;

    invoke-static {v0, v3}, Lio/sentry/h4;->o0(Lio/sentry/h4;Lio/sentry/protocol/g;)Lio/sentry/protocol/g;

    goto/16 :goto_0

    .line 20
    :pswitch_4
    new-instance v3, Lio/sentry/SentryLevel$a;

    invoke-direct {v3}, Lio/sentry/SentryLevel$a;-><init>()V

    invoke-virtual {p1, p2, v3}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryLevel;

    invoke-static {v0, v3}, Lio/sentry/h4;->s0(Lio/sentry/h4;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;

    goto/16 :goto_0

    .line 21
    :pswitch_5
    invoke-virtual {p1, p2}, Lio/sentry/i1;->u0(Lio/sentry/o0;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {v0, v3}, Lio/sentry/h4;->n0(Lio/sentry/h4;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_0

    .line 23
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/h4;->p0(Lio/sentry/h4;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 24
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 25
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    .line 26
    new-instance v3, Lio/sentry/b5;

    new-instance v4, Lio/sentry/protocol/t$a;

    invoke-direct {v4}, Lio/sentry/protocol/t$a;-><init>()V

    .line 27
    invoke-virtual {p1, p2, v4}, Lio/sentry/i1;->z0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/sentry/b5;-><init>(Ljava/util/List;)V

    .line 28
    invoke-static {v0, v3}, Lio/sentry/h4;->q0(Lio/sentry/h4;Lio/sentry/b5;)Lio/sentry/b5;

    .line 29
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    goto/16 :goto_0

    .line 30
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 31
    invoke-static {v0, v3}, Lio/sentry/h4;->u0(Lio/sentry/h4;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 32
    :cond_b
    invoke-virtual {v0, v2}, Lio/sentry/h4;->setUnknown(Ljava/util/Map;)V

    .line 33
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5203171c -> :sswitch_8
        -0x4fbf4c57 -> :sswitch_7
        -0x41680a70 -> :sswitch_6
        0x3492916 -> :sswitch_5
        0x6219b84 -> :sswitch_4
        0x38eb0007 -> :sswitch_3
        0x49292787 -> :sswitch_2
        0x584fd04f -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
