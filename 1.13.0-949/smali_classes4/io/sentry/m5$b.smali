.class public final Lio/sentry/m5$b;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/m5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/m5;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/m5$b;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/m5;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/m5;
    .locals 17
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

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v10

    sget-object v14, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v15, "public_key"

    const-string v0, "trace_id"

    if-ne v10, v14, :cond_a

    .line 3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v10

    .line 4
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    const/4 v14, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "transaction"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v14, 0x8

    goto :goto_1

    :sswitch_1
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "release"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "sample_rate"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "user"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "environment"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v14, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "user_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v14, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "user_segment"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v14, 0x0

    :goto_1
    packed-switch v14, :pswitch_data_0

    if-nez v13, :cond_9

    .line 5
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    :cond_9
    invoke-virtual {v1, v2, v13, v10}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    .line 8
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    .line 9
    :pswitch_2
    new-instance v0, Lio/sentry/protocol/n$a;

    invoke-direct {v0}, Lio/sentry/protocol/n$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/n$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/n;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    .line 10
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 11
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    .line 12
    :pswitch_5
    new-instance v0, Lio/sentry/m5$d$a;

    invoke-direct {v0}, Lio/sentry/m5$d$a;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/m5$d;

    move-object v3, v0

    goto :goto_2

    .line 13
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    .line 14
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    .line 15
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_2
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_a
    if-eqz v5, :cond_e

    if-eqz v7, :cond_d

    if-eqz v3, :cond_c

    if-nez v4, :cond_b

    .line 16
    invoke-virtual {v3}, Lio/sentry/m5$d;->a()Ljava/lang/String;

    move-result-object v4

    :cond_b
    if-nez v6, :cond_c

    .line 17
    invoke-virtual {v3}, Lio/sentry/m5$d;->b()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v0, v4

    goto :goto_3

    :cond_c
    move-object v0, v4

    move-object v10, v6

    .line 18
    :goto_3
    new-instance v2, Lio/sentry/m5;

    move-object v4, v2

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v4 .. v12}, Lio/sentry/m5;-><init>(Lio/sentry/protocol/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v13}, Lio/sentry/m5;->setUnknown(Ljava/util/Map;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v2

    :cond_d
    move-object/from16 v0, p0

    .line 21
    invoke-direct {v0, v15, v2}, Lio/sentry/m5$b;->c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_e
    move-object v1, v0

    move-object/from16 v0, p0

    .line 22
    invoke-direct {v0, v1, v2}, Lio/sentry/m5$b;->c(Ljava/lang/String;Lio/sentry/o0;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x2f6bc941 -> :sswitch_8
        -0x8c511f1 -> :sswitch_7
        -0x51ecded -> :sswitch_6
        0x36ebcb -> :sswitch_5
        0x9218a55 -> :sswitch_4
        0x41012807 -> :sswitch_3
        0x4bb73e55 -> :sswitch_2
        0x71892389 -> :sswitch_1
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
