.class public Lcom/fasterxml/jackson/databind/jsontype/impl/f;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/j;
.source "ClassNameIdResolver.java"


# static fields
.field private static final d:Ljava/lang/String; = "java.util."


# instance fields
.field protected final c:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;->instance:Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/f;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/j;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/f;->c:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    return-void
.end method

.method public static j(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/jsontype/impl/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/impl/f;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/f;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/f;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->a:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/f;->h(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "class name used as type id"

    return-object v0
.end method

.method public d(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/f;->i(Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->a:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/f;->h(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    return-object v0
.end method

.method protected h(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->X(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util."

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    instance-of p2, p1, Ljava/util/EnumSet;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Ljava/util/EnumSet;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->w(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object p1

    .line 8
    const-class p2, Ljava/util/EnumSet;

    invoke-virtual {p3, p2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->toCanonical()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    instance-of p2, p1, Ljava/util/EnumMap;

    if-eqz p2, :cond_3

    .line 10
    check-cast p1, Ljava/util/EnumMap;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->v(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object p1

    .line 11
    const-class p2, Ljava/lang/Object;

    .line 12
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {p3, v0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->toCanonical()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 p1, 0x24

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 14
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->M(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->b:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->M(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->b:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected i(Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->b:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/f;->c:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/c;->resolveAndValidateSubType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/DeserializationContext;

    if-eqz v1, :cond_0

    .line 3
    check-cast p2, Lcom/fasterxml/jackson/databind/DeserializationContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/j;->b:Lcom/fasterxml/jackson/databind/JavaType;

    const-string v1, "no such class found"

    invoke-virtual {p2, v0, p1, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnknownTypeId(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public k(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
