.class Lcom/auth0/jwt/impl/c;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "HeaderDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "Lcom/auth0/jwt/impl/a;",
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
    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/impl/c;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectReader;)V

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
    iput-object p2, p0, Lcom/auth0/jwt/impl/c;->f:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method


# virtual methods
.method public C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/auth0/jwt/impl/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->s0()Lcom/fasterxml/jackson/core/h;

    move-result-object p2

    new-instance v0, Lcom/auth0/jwt/impl/c$a;

    invoke-direct {v0, p0}, Lcom/auth0/jwt/impl/c$a;-><init>(Lcom/auth0/jwt/impl/c;)V

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/core/h;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/b;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_0

    const-string p1, "alg"

    .line 2
    invoke-virtual {p0, v5, p1}, Lcom/auth0/jwt/impl/c;->D0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "typ"

    .line 3
    invoke-virtual {p0, v5, p1}, Lcom/auth0/jwt/impl/c;->D0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "cty"

    .line 4
    invoke-virtual {p0, v5, p1}, Lcom/auth0/jwt/impl/c;->D0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "kid"

    .line 5
    invoke-virtual {p0, v5, p1}, Lcom/auth0/jwt/impl/c;->D0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance p1, Lcom/auth0/jwt/impl/a;

    iget-object v6, p0, Lcom/auth0/jwt/impl/c;->f:Lcom/fasterxml/jackson/databind/ObjectReader;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/auth0/jwt/impl/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const-string p2, "Parsing the Header\'s JSON resulted on a Null map"

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method D0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
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

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/auth0/jwt/impl/c;->C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/auth0/jwt/impl/a;

    move-result-object p1

    return-object p1
.end method
