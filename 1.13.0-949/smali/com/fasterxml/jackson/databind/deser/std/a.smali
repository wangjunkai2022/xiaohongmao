.class abstract Lcom/fasterxml/jackson/databind/deser/std/a;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/e;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->f:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected final C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->X()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/a;->G0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/a;->H0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/a;->J0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final D0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a$a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            "Lcom/fasterxml/jackson/databind/deser/std/a$a;",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getDeserializationFeatures()I

    move-result v0

    sget v1, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->d:I

    and-int v12, v0, v1

    move-object/from16 v0, p5

    .line 2
    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_7

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v2

    move-object v15, v0

    move-object v7, v1

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_9

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    if-eq v0, v14, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/a;->F0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    .line 9
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_1
    invoke-virtual {v10, v13}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_1

    .line 12
    :pswitch_3
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/deser/std/a;->H0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    goto :goto_1

    .line 13
    :pswitch_4
    invoke-virtual {v8, v9, v12, v10}, Lcom/fasterxml/jackson/databind/deser/std/a;->I0(Lcom/fasterxml/jackson/core/JsonParser;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    goto :goto_1

    .line 14
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    goto :goto_1

    .line 15
    :goto_2
    invoke-virtual {v7, v4, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v7

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object v14, v7

    move-object/from16 v7, v17

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/a;->K0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/e;)V

    goto :goto_3

    :cond_2
    move-object v14, v7

    :goto_3
    move-object v7, v14

    goto :goto_5

    :cond_3
    move-object v14, v7

    .line 17
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v13

    .line 18
    invoke-virtual {v14, v4, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v14

    move-object v7, v13

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/a;->K0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/e;)V

    .line 20
    :cond_4
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    move-object v0, v13

    goto/16 :goto_7

    :cond_5
    move-object v14, v7

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v7

    .line 22
    invoke-virtual {v14, v4, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v14

    move-object v14, v7

    .line 23
    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/a;->K0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/e;)V

    goto :goto_4

    :cond_6
    move-object v14, v7

    .line 24
    :goto_4
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    move-object v7, v14

    move-object v15, v7

    .line 25
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 26
    :cond_7
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 27
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    if-nez v2, :cond_8

    .line 28
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 29
    :cond_8
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_6
    const/4 v2, 0x1

    .line 30
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/a;->F0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    .line 31
    :pswitch_7
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    .line 32
    :pswitch_8
    invoke-virtual {v10, v13}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    :pswitch_9
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    :pswitch_a
    const/4 v2, 0x1

    .line 34
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/deser/std/a;->H0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    :pswitch_b
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v8, v9, v12, v10}, Lcom/fasterxml/jackson/databind/deser/std/a;->I0(Lcom/fasterxml/jackson/core/JsonParser;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    :pswitch_c
    const/4 v2, 0x1

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    .line 37
    :cond_9
    :pswitch_d
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a()Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    goto :goto_7

    .line 38
    :pswitch_e
    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    .line 39
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_7

    .line 41
    :pswitch_f
    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    :goto_7
    if-nez v0, :cond_0

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6
        :pswitch_e
        :pswitch_d
        :pswitch_6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected final E0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a$a;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v8

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_4

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/a;->C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 8
    invoke-virtual/range {v9 .. v14}, Lcom/fasterxml/jackson/databind/deser/std/a;->D0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a$a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v14

    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 10
    invoke-virtual/range {v9 .. v14}, Lcom/fasterxml/jackson/databind/deser/std/a;->D0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a$a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 11
    invoke-virtual {v8, v4, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v8

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/a;->K0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/e;)V

    .line 13
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    return-object v8
.end method

.method protected final F0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->X()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/a;->G0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/a;->H0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method protected final G0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->A0()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    const-class v1, [B

    if-ne v0, v1, :cond_1

    .line 6
    check-cast p1, [B

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/q;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/util/q;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->rawValueNode(Lcom/fasterxml/jackson/databind/util/q;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/e;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1

    .line 11
    :cond_3
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p1

    return-object p1
.end method

.method protected final H0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->r1()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->z0()D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->C0()F

    move-result p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->z0()D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method protected final I0(Lcom/fasterxml/jackson/core/JsonParser;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->n0()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->H0()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p2

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p2, v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->F0()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p2, v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->H0()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->n0()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p1

    return-object p1
.end method

.method protected final J0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getDeserializationFeatures()I

    move-result p2

    .line 2
    sget v0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->d:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p2

    .line 9
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p2, v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->F0()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p2, v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->H0()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->n0()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object p1

    return-object p1
.end method

.method protected K0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-class p1, Lcom/fasterxml/jackson/databind/e;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const-string v1, "Duplicate field \'%s\' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled"

    invoke-virtual {p2, p1, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/StreamReadCapability;->DUPLICATE_PROPERTIES:Lcom/fasterxml/jackson/core/StreamReadCapability;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p6}, Lcom/fasterxml/jackson/databind/e;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    move-object p1, p6

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p1, p7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 6
    invoke-virtual {p5, p4, p6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 9
    invoke-virtual {p1, p7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 10
    invoke-virtual {p5, p4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    :cond_2
    :goto_0
    return-void
.end method

.method protected final L0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/deser/std/a$a;)Lcom/fasterxml/jackson/databind/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->q1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->k1(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v7

    :goto_1
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 8
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_2

    .line 10
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_3

    .line 11
    move-object v1, v2

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/fasterxml/jackson/databind/deser/std/a;->L0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/deser/std/a$a;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v1

    if-eq v1, v2, :cond_9

    .line 12
    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    goto/16 :goto_3

    .line 13
    :cond_2
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v3, :cond_3

    .line 14
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_3

    .line 15
    move-object v6, v2

    check-cast v6, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/a;->D0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a$a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    goto/16 :goto_3

    :cond_3
    if-nez v1, :cond_4

    .line 16
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 17
    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    const/4 v3, 0x6

    if-eq v1, v3, :cond_6

    const/4 v3, 0x7

    if-eq v1, v3, :cond_5

    packed-switch v1, :pswitch_data_0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/a;->F0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v1

    goto :goto_2

    .line 19
    :pswitch_0
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    goto :goto_2

    .line 21
    :pswitch_2
    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {p0, p1, p2, v7}, Lcom/fasterxml/jackson/databind/deser/std/a;->J0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v1

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v1

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/a;->D0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a$a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v1

    goto :goto_2

    .line 26
    :cond_8
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/a;->D0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/a$a;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v1

    .line 28
    :goto_2
    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    .line 29
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    return-object p3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/b;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCachable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/a;->f:Ljava/lang/Boolean;

    return-object p1
.end method
