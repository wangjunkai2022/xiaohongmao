.class public Lcom/auth0/jwt/impl/d;
.super Ljava/lang/Object;
.source "JWTParser.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/f;


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/ObjectReader;

.field private final b:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/auth0/jwt/impl/d;->f()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/auth0/jwt/impl/d;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/auth0/jwt/impl/d;->c(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 4
    const-class v0, Lcom/auth0/jwt/interfaces/i;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/jwt/impl/d;->a:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 5
    const-class v0, Lcom/auth0/jwt/interfaces/e;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/jwt/impl/d;->b:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method

.method private c(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->reader()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v1

    .line 3
    const-class v2, Lcom/auth0/jwt/interfaces/i;

    new-instance v3, Lcom/auth0/jwt/impl/g;

    invoke-direct {v3, v1}, Lcom/auth0/jwt/impl/g;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;)V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 4
    const-class v2, Lcom/auth0/jwt/interfaces/e;

    new-instance v3, Lcom/auth0/jwt/impl/c;

    invoke-direct {v3, v1}, Lcom/auth0/jwt/impl/c;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;)V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private static d()Lcom/auth0/jwt/exceptions/JWTDecodeException;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/auth0/jwt/impl/d;->e(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;
    .locals 3

    new-instance v0, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "The string \'%s\' doesn\'t have a valid JSON format."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/d;->a:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/jwt/interfaces/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-static {p1}, Lcom/auth0/jwt/impl/d;->e(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object p1

    throw p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/auth0/jwt/impl/d;->d()Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object p1

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/d;->b:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/jwt/interfaces/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-static {p1}, Lcom/auth0/jwt/impl/d;->e(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object p1

    throw p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/auth0/jwt/impl/d;->d()Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object p1

    throw p1
.end method
