.class public Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/h;
.source "ObjectMapper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTypeResolverBuilder"
.end annotation


# static fields
.field private static final i:J = 0x1L


# instance fields
.field protected final g:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field protected final h:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/h;Ljava/lang/Class;)V

    .line 6
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->g:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->g:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 7
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->h:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->h:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;->instance:Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;-><init>()V

    const-string v0, "Can not pass `null` DefaultTyping"

    .line 3
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->g:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string p1, "Can not pass `null` PolymorphicTypeValidator"

    .line 4
    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->h:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V

    return-object v0
.end method

.method private static h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/jsontype/b;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/jsontype/f;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public subTypeValidator(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;"
        }
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->h:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    return-object p1
.end method

.method public useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/m;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$c;->a:[I

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->g:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result p1

    return p1

    :cond_1
    return v3

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 9
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v1

    if-nez v1, :cond_9

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z

    move-result v1

    if-nez v1, :cond_a

    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    const/4 v2, 0x1

    :cond_a
    return v2
.end method

.method public withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    const-string v1, "withDefaultImpl"

    invoke-static {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/g;->z0(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method
