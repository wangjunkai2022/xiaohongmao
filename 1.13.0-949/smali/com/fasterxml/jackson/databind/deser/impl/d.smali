.class public Lcom/fasterxml/jackson/databind/deser/impl/d;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/d$b;,
        Lcom/fasterxml/jackson/databind/deser/impl/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/JavaType;

.field private final b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Ljava/lang/String;

.field private final e:[Lcom/fasterxml/jackson/databind/util/t;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/impl/d$b;Ljava/util/Map;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/deser/impl/d$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/fasterxml/jackson/databind/util/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/d;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 9
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    .line 10
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/util/Map;

    .line 11
    array-length p1, v0

    .line 12
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    .line 13
    new-array p1, p1, [Lcom/fasterxml/jackson/databind/util/t;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    return-void
.end method

.method private final c(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object v0, v0, p6

    .line 2
    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->f(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x1

    if-eqz p4, :cond_1

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v1, v1, p6

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p6

    move-object v5, p5

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/d;->b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    const/4 p2, 0x0

    aput-object p2, p1, p6

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    aput-object p5, p1, p6

    :goto_0
    return p3
.end method

.method public static d(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/d$a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/d$a;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->j2(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/t;->G1()V

    .line 6
    invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/util/t;->P1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/t;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 8
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/t;->R0()V

    .line 9
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/t;->j2(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 11
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object p3, p4, p3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Internal error in external Type Id handling: `null` type id passed"

    invoke-virtual {p2, v0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v0, v0, p4

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->j2(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/t;->G1()V

    .line 8
    invoke-virtual {v1, p5}, Lcom/fasterxml/jackson/databind/util/t;->P1(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/t;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 10
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/t;->R0()V

    .line 11
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/t;->j2(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 13
    iget-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object p4, p5, p4

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/i;Lcom/fasterxml/jackson/databind/deser/impl/g;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    array-length v0, v0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_8

    .line 3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 5
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v7, v7, v3

    if-eqz v7, :cond_7

    .line 6
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/util/t;->n2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->e()Z

    move-result v7

    if-nez v7, :cond_1

    .line 8
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->d()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    const-string v9, "Missing external type id property \'%s\'"

    .line 10
    invoke-virtual {p2, v7, v8, v9, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 12
    :cond_2
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v7, v7, v3

    if-nez v7, :cond_4

    .line 13
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->isRequired()Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 15
    invoke-virtual {p2, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 16
    :cond_3
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v2

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    const-string v6, "Missing property \'%s\' for external type id \'%s\'"

    .line 18
    invoke-virtual {p2, v8, v9, v6, v10}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v6, v6, v3

    if-eqz v6, :cond_5

    .line 20
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/impl/d;->a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 21
    :cond_5
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v7

    if-ltz v7, :cond_7

    .line 23
    aget-object v7, v1, v3

    invoke-virtual {p3, v6, v7}, Lcom/fasterxml/jackson/databind/deser/impl/i;->b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->c()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 25
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v6

    if-ltz v6, :cond_7

    .line 26
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 27
    :cond_6
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object v6

    .line 28
    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/databind/util/t;->P1(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/d;

    move-result-object v4

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/t;->l2()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 30
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/t;->close()V

    .line 31
    :goto_2
    invoke-virtual {p3, v5, v4}, Lcom/fasterxml/jackson/databind/deser/impl/i;->b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 32
    :cond_8
    invoke-virtual {p4, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/g;->a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/i;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    if-ge v2, v0, :cond_a

    .line 33
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result p3

    if-gez p3, :cond_9

    .line 35
    aget-object p3, v1, v2

    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return-object p1
.end method

.method public f(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_7

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    aget-object v2, v2, v8

    .line 3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object v3, v3, v8

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v5, v5, v8

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/t;->n2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/util/t;->j2(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 9
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    invoke-static {v5, p2, v7}, Lcom/fasterxml/jackson/databind/jsontype/b;->deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v6, p3, v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 12
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->e()Z

    move-result v5

    if-nez v5, :cond_2

    .line 13
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "Missing external type id property \'%s\' (and no \'defaultImpl\' specified)"

    .line 15
    invoke-virtual {p2, v5, v6, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 17
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "Invalid default type id for property \'%s\': `null` returned by TypeIdResolver"

    .line 19
    invoke-virtual {p2, v5, v6, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object v5, v5, v8

    if-nez v5, :cond_6

    .line 21
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->b()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->isRequired()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 23
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    const-string p1, "Missing property \'%s\' for external type id \'%s\'"

    .line 26
    invoke-virtual {p2, v0, v2, p1, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p3

    :cond_6
    :goto_1
    move-object v7, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v8

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/impl/d;->b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_7
    return-object p3
.end method

.method public g(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 3
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 4
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 6
    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput-object p2, p1, p3

    .line 10
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput-object p2, p1, p3

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferAsCopyOfValue(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput-object p1, p2, p3

    .line 14
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput-object p1, p2, p3

    goto :goto_1

    :cond_2
    return v3

    .line 16
    :cond_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 17
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:[Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    aget-object v2, v2, v0

    .line 18
    invoke-virtual {v2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 19
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->g1()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 20
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz p4, :cond_5

    .line 21
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aget-object p3, p3, v0

    if-eqz p3, :cond_5

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferAsCopyOfValue(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object p3

    .line 23
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aput-object p3, v2, v0

    if-eqz p4, :cond_5

    .line 24
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    aget-object p3, p3, v0

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 25
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->d:[Ljava/lang/String;

    aget-object v9, p3, v0

    const/4 v1, 0x0

    .line 26
    aput-object v1, p3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move v8, v0

    .line 27
    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/deser/impl/d;->b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->e:[Lcom/fasterxml/jackson/databind/util/t;

    aput-object v1, p1, v0

    :cond_6
    return v3
.end method

.method public h(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object v9

    .line 3
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 4
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v9

    .line 6
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/d;->c(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 7
    :cond_3
    check-cast v0, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v9

    .line 9
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/d;->c(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public i()Lcom/fasterxml/jackson/databind/deser/impl/d;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/d;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/d;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/d;)V

    return-object v0
.end method
