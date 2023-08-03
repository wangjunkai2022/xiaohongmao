.class public final Lcom/auth0/jwt/d;
.super Ljava/lang/Object;
.source "JWTCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/jwt/d$b;
    }
.end annotation


# static fields
.field private static final d:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private static final e:Lcom/fasterxml/jackson/databind/module/SimpleModule;


# instance fields
.field private final a:Lcom/auth0/jwt/algorithms/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/auth0/jwt/d;->d:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    new-instance v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>()V

    sput-object v1, Lcom/auth0/jwt/d;->e:Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 3
    const-class v2, Lcom/auth0/jwt/impl/b;

    new-instance v3, Lcom/auth0/jwt/impl/PayloadSerializer;

    invoke-direct {v3}, Lcom/auth0/jwt/impl/PayloadSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 4
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 5
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private constructor <init>(Lcom/auth0/jwt/algorithms/a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/jwt/algorithms/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTCreationException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/auth0/jwt/d;->a:Lcom/auth0/jwt/algorithms/a;

    .line 4
    :try_start_0
    sget-object p1, Lcom/auth0/jwt/d;->d:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/auth0/jwt/d;->b:Ljava/lang/String;

    .line 5
    new-instance p2, Lcom/auth0/jwt/impl/b;

    invoke-direct {p2, p3}, Lcom/auth0/jwt/impl/b;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/jwt/d;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/auth0/jwt/exceptions/JWTCreationException;

    const-string p3, "Some of the Claims couldn\'t be converted to a valid JSON format."

    invoke-direct {p2, p3, p1}, Lcom/auth0/jwt/exceptions/JWTCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method synthetic constructor <init>(Lcom/auth0/jwt/algorithms/a;Ljava/util/Map;Ljava/util/Map;Lcom/auth0/jwt/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTCreationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/auth0/jwt/d;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/auth0/jwt/d;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/auth0/jwt/d;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b()Lcom/auth0/jwt/d$b;
    .locals 1

    new-instance v0, Lcom/auth0/jwt/d$b;

    invoke-direct {v0}, Lcom/auth0/jwt/d$b;-><init>()V

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/d;->b:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lshaded/org/apache/commons/codec/binary/d;->H([B)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/auth0/jwt/d;->c:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lshaded/org/apache/commons/codec/binary/d;->H([B)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/auth0/jwt/d;->a:Lcom/auth0/jwt/algorithms/a;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/auth0/jwt/algorithms/a;->F([B[B)[B

    move-result-object v2

    .line 4
    invoke-static {v2}, Lshaded/org/apache/commons/codec/binary/d;->H([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s.%s.%s"

    .line 5
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
