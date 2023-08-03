.class public final Lio/sentry/n2$a;
.super Ljava/lang/Object;
.source "ProfilingTransactionData.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/n2;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/n2$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/n2;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/n2;
    .locals 5
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
    new-instance v0, Lio/sentry/n2;

    invoke-direct {v0}, Lio/sentry/n2;-><init>()V

    const/4 v1, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_9

    .line 4
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "relative_cpu_start_ms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v4, "relative_cpu_end_ms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "trace_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "relative_end_ns"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "relative_start_ns"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v1, :cond_8

    .line 6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    :cond_8
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {v0, v2}, Lio/sentry/n2;->f(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    invoke-static {v0, v2}, Lio/sentry/n2;->g(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 12
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-static {v0, v2}, Lio/sentry/n2;->b(Lio/sentry/n2;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 14
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {v0, v2}, Lio/sentry/n2;->c(Lio/sentry/n2;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {v0, v2}, Lio/sentry/n2;->a(Lio/sentry/n2;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 18
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {v0, v2}, Lio/sentry/n2;->e(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 20
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {v0, v2}, Lio/sentry/n2;->d(Lio/sentry/n2;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 22
    :cond_9
    invoke-virtual {v0, v1}, Lio/sentry/n2;->setUnknown(Ljava/util/Map;)V

    .line 23
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6b2a92b -> :sswitch_6
        -0x50b0384 -> :sswitch_5
        0xd1b -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x4bb73e55 -> :sswitch_2
        0x5d612954 -> :sswitch_1
        0x716221ed -> :sswitch_0
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
