.class Lcom/auth0/jwt/impl/g;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PayloadDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "Lcom/auth0/jwt/interfaces/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/impl/g;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 3
    iput-object p2, p0, Lcom/auth0/jwt/impl/g;->f:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method


# virtual methods
.method public C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/auth0/jwt/interfaces/i;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->s0()Lcom/fasterxml/jackson/core/h;

    move-result-object p2

    new-instance v0, Lcom/auth0/jwt/impl/g$a;

    invoke-direct {v0, p0}, Lcom/auth0/jwt/impl/g$a;-><init>(Lcom/auth0/jwt/impl/g;)V

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/core/h;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/b;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_0

    const-string p1, "iss"

    .line 2
    invoke-virtual {p0, v8, p1}, Lcom/auth0/jwt/impl/g;->E0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "sub"

    .line 3
    invoke-virtual {p0, v8, p1}, Lcom/auth0/jwt/impl/g;->E0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "aud"

    .line 4
    invoke-virtual {p0, v8, p1}, Lcom/auth0/jwt/impl/g;->F0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string p1, "exp"

    .line 5
    invoke-virtual {p0, v8, p1}, Lcom/auth0/jwt/impl/g;->D0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string p1, "nbf"

    .line 6
    invoke-virtual {p0, v8, p1}, Lcom/auth0/jwt/impl/g;->D0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string p1, "iat"

    .line 7
    invoke-virtual {p0, v8, p1}, Lcom/auth0/jwt/impl/g;->D0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    const-string p1, "jti"

    .line 8
    invoke-virtual {p0, v8, p1}, Lcom/auth0/jwt/impl/g;->E0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance p1, Lcom/auth0/jwt/impl/h;

    iget-object v9, p0, Lcom/auth0/jwt/impl/g;->f:Lcom/fasterxml/jackson/databind/ObjectReader;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/auth0/jwt/impl/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const-string p2, "Parsing the Payload\'s JSON resulted on a Null map"

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method D0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Date;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->canConvertToLong()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->asLong()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 6
    :cond_1
    new-instance p1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "The claim \'%s\' contained a non-numeric date value."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method E0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/e;->asText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method F0(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->isNull()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->isArray()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->isTextual()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->isTextual()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->asText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->asText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/auth0/jwt/impl/g;->f:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/e;->get(I)Lcom/fasterxml/jackson/databind/e;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeToValue(Lcom/fasterxml/jackson/core/m;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const-string v0, "Couldn\'t map the Claim\'s array contents to String"

    invoke-direct {p2, v0, p1}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/auth0/jwt/impl/g;->C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/auth0/jwt/interfaces/i;

    move-result-object p1

    return-object p1
.end method
