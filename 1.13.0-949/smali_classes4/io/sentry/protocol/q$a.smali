.class public final Lio/sentry/protocol/q$a;
.super Ljava/lang/Object;
.source "SentrySpan.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/protocol/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Exception;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v1, p1, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/q$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/q;
    .locals 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v13

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v0, "trace_id"

    move-object/from16 v16, v14

    const-string v14, "op"

    move-object/from16 v17, v12

    const-string v12, "start_timestamp"

    move-object/from16 v18, v11

    const-string v11, "span_id"

    if-ne v13, v3, :cond_d

    .line 3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v13, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v13, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "timestamp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v13, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "tags"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x6

    goto :goto_1

    :sswitch_4
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v13, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "status"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v13, 0x4

    goto :goto_1

    :sswitch_6
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v13, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "description"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "parent_span_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v13, 0x1

    goto :goto_1

    :sswitch_9
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v13, 0x0

    :goto_1
    packed-switch v13, :pswitch_data_0

    if-nez v15, :cond_a

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v15, v0

    .line 6
    :cond_a
    invoke-virtual {v1, v2, v15, v3}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/n$a;

    invoke-direct {v0}, Lio/sentry/protocol/n$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/n$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/n;

    move-result-object v7

    :goto_2
    move-object/from16 v14, v16

    :goto_3
    move-object/from16 v12, v17

    :goto_4
    move-object/from16 v11, v18

    goto/16 :goto_5

    .line 8
    :pswitch_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 9
    :catch_0
    invoke-virtual/range {p1 .. p2}, Lio/sentry/i1;->u0(Lio/sentry/o0;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 10
    invoke-static {v0}, Lio/sentry/k;->b(Ljava/util/Date;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 11
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    goto :goto_2

    .line 12
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map;

    goto :goto_3

    .line 13
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 14
    :pswitch_5
    new-instance v0, Lio/sentry/SpanStatus$a;

    invoke-direct {v0}, Lio/sentry/SpanStatus$a;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/sentry/SpanStatus;

    move-object/from16 v14, v16

    goto :goto_4

    .line 15
    :pswitch_6
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 16
    :catch_1
    invoke-virtual/range {p1 .. p2}, Lio/sentry/i1;->u0(Lio/sentry/o0;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 17
    invoke-static {v0}, Lio/sentry/k;->b(Ljava/util/Date;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_c
    const/4 v5, 0x0

    goto :goto_2

    .line 18
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v14, v16

    move-object/from16 v12, v17

    goto :goto_5

    .line 19
    :pswitch_8
    new-instance v0, Lio/sentry/h5$a;

    invoke-direct {v0}, Lio/sentry/h5$a;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lio/sentry/h5;

    goto :goto_2

    .line 20
    :pswitch_9
    new-instance v0, Lio/sentry/h5$a;

    invoke-direct {v0}, Lio/sentry/h5$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/h5$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/h5;

    move-result-object v8

    goto :goto_2

    :goto_5
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_d
    if-eqz v5, :cond_12

    if-eqz v7, :cond_11

    if-eqz v8, :cond_10

    if-eqz v10, :cond_f

    if-nez v4, :cond_e

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    goto :goto_6

    :cond_e
    move-object v13, v4

    .line 22
    :goto_6
    new-instance v0, Lio/sentry/protocol/q;

    move-object v4, v0

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Lio/sentry/protocol/q;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/util/Map;Ljava/util/Map;)V

    .line 23
    invoke-virtual {v0, v15}, Lio/sentry/protocol/q;->setUnknown(Ljava/util/Map;)V

    .line 24
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v0

    :cond_f
    move-object/from16 v0, p0

    .line 25
    invoke-direct {v0, v14, v2}, Lio/sentry/protocol/q$a;->c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_10
    move-object/from16 v0, p0

    .line 26
    invoke-direct {v0, v11, v2}, Lio/sentry/protocol/q$a;->c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_11
    move-object v1, v0

    move-object/from16 v0, p0

    .line 27
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/q$a;->c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_12
    move-object/from16 v0, p0

    .line 28
    invoke-direct {v0, v12, v2}, Lio/sentry/protocol/q$a;->c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_9
        -0x68c5dc65 -> :sswitch_8
        -0x66ca7c04 -> :sswitch_7
        -0x5b03aa87 -> :sswitch_6
        -0x3532300e -> :sswitch_5
        0xde1 -> :sswitch_4
        0x2eefaa -> :sswitch_3
        0x363419 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
