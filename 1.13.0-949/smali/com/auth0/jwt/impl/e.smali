.class Lcom/auth0/jwt/impl/e;
.super Ljava/lang/Object;
.source "JsonNodeClaim.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/a;


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/ObjectReader;

.field private final b:Lcom/fasterxml/jackson/databind/e;


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    .line 3
    iput-object p2, p0, Lcom/auth0/jwt/impl/e;->a:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method

.method static k(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/a;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/e;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/e;->isMissingNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/auth0/jwt/impl/e;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/impl/e;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-object v0

    .line 3
    :cond_1
    :goto_0
    new-instance p0, Lcom/auth0/jwt/impl/f;

    invoke-direct {p0}, Lcom/auth0/jwt/impl/f;-><init>()V

    return-object p0
.end method

.method static l(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ")",
            "Lcom/auth0/jwt/interfaces/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/e;

    .line 2
    invoke-static {p0, p2}, Lcom/auth0/jwt/impl/e;->k(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isTextual()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->asText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isObject()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/auth0/jwt/impl/e$a;

    invoke-direct {v0, p0}, Lcom/auth0/jwt/impl/e$a;-><init>(Lcom/auth0/jwt/impl/e;)V

    .line 3
    iget-object v1, p0, Lcom/auth0/jwt/impl/e;->a:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/m;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->F1(Lcom/fasterxml/jackson/core/type/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const-string v2, "Couldn\'t map the Claim value to Map"

    invoke-direct {v1, v2, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/util/Date;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->canConvertToLong()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->asLong()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/e;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/e;->a:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v3, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/e;->get(I)Lcom/fasterxml/jackson/databind/e;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeToValue(Lcom/fasterxml/jackson/core/m;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t map the Claim\'s array contents to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public e(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/e;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/e;->a:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v3, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/e;->get(I)Lcom/fasterxml/jackson/databind/e;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeToValue(Lcom/fasterxml/jackson/core/m;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t map the Claim\'s array contents to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->asBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->a:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v1, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/m;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->G1(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t map the Claim value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/e;->b:Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
