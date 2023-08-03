.class public final Lio/sentry/f5$a;
.super Ljava/lang/Object;
.source "SpanContext.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/f5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/f5;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/f5$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/f5;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/f5;
    .locals 11
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

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    .line 2
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v6, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v6, :cond_8

    .line 3
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "trace_id"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_1
    const-string v10, "tags"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_2
    const-string v10, "op"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_3
    const-string v10, "status"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v10, "description"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_5
    const-string v10, "parent_span_id"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_6
    const-string v10, "span_id"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    if-nez v0, :cond_7

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    :cond_7
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v1, Lio/sentry/protocol/n$a;

    invoke-direct {v1}, Lio/sentry/protocol/n$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/n$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/n;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 9
    invoke-static {v1}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    move-object v9, v1

    goto/16 :goto_0

    .line 10
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_0

    .line 11
    :pswitch_3
    new-instance v1, Lio/sentry/SpanStatus$a;

    invoke-direct {v1}, Lio/sentry/SpanStatus$a;-><init>()V

    invoke-virtual {p1, p2, v1}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SpanStatus;

    move-object v8, v1

    goto/16 :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto/16 :goto_0

    .line 13
    :pswitch_5
    new-instance v1, Lio/sentry/h5$a;

    invoke-direct {v1}, Lio/sentry/h5$a;-><init>()V

    invoke-virtual {p1, p2, v1}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/h5;

    move-object v5, v1

    goto/16 :goto_0

    .line 14
    :pswitch_6
    new-instance v1, Lio/sentry/h5$a;

    invoke-direct {v1}, Lio/sentry/h5$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/h5$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/h5;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_c

    if-eqz v3, :cond_b

    if-eqz v4, :cond_a

    .line 15
    new-instance p2, Lio/sentry/f5;

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/String;Lio/sentry/h5;Lio/sentry/o5;)V

    .line 16
    invoke-virtual {p2, v7}, Lio/sentry/f5;->k(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, v8}, Lio/sentry/f5;->p(Lio/sentry/SpanStatus;)V

    if-eqz v9, :cond_9

    .line 18
    iput-object v9, p2, Lio/sentry/f5;->h:Ljava/util/Map;

    .line 19
    :cond_9
    invoke-virtual {p2, v0}, Lio/sentry/f5;->setUnknown(Ljava/util/Map;)V

    .line 20
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object p2

    :cond_a
    const-string p1, "Missing required field \"op\""

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v1, p1, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    throw v0

    :cond_b
    const-string p1, "Missing required field \"span_id\""

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v1, p1, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw v0

    :cond_c
    const-string p1, "Missing required field \"trace_id\""

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v1, p1, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_6
        -0x68c5dc65 -> :sswitch_5
        -0x66ca7c04 -> :sswitch_4
        -0x3532300e -> :sswitch_3
        0xde1 -> :sswitch_2
        0x363419 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
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
