.class public Lcom/fasterxml/jackson/databind/jsontype/impl/h;
.super Ljava/lang/Object;
.source "StdTypeResolverBuilder.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsontype/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/jsontype/e<",
        "Lcom/fasterxml/jackson/databind/jsontype/impl/h;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

.field protected b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected f:Lcom/fasterxml/jackson/databind/jsontype/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 6
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 7
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/h;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/impl/h;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    .line 10
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 11
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 12
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    .line 13
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    .line 14
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->f:Lcom/fasterxml/jackson/databind/jsontype/c;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->f:Lcom/fasterxml/jackson/databind/jsontype/c;

    .line 15
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    return-void
.end method

.method public static noTypeInfoBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/c;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 2
    const-class v1, Ljava/lang/Void;

    if-eq v0, v1, :cond_3

    const-class v1, Lc2/i;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSuperTypeOf(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result p1

    if-nez p1, :cond_5

    return-object p2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/b;
    .locals 15
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

    move-object v7, p0

    .line 1
    iget-object v0, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/c;

    move-result-object v10

    .line 6
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    .line 7
    iget-object v0, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->DEDUCTION:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_2

    .line 8
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;

    move-object v8, v0

    move-object/from16 v9, p2

    move-object v11, v13

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/util/Collection;)V

    return-object v0

    .line 9
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/h$a;->a:[I

    iget-object v1, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;

    iget-object v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    iget-boolean v12, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    move-object v8, v0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0

    .line 12
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;

    iget-object v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    iget-boolean v12, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    move-object v8, v0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0

    .line 13
    :cond_6
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;

    iget-object v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    iget-boolean v12, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    iget-object v14, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-object v8, v0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v14}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)V

    return-object v0

    .line 14
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;

    iget-object v11, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    iget-boolean v12, v7, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    move-object v8, v0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 10
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

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->subTypeValidator(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/c;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->DEDUCTION:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne p2, p3, :cond_2

    .line 6
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/b;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/b;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    return-object p2

    .line 7
    :cond_2
    sget-object p2, Lcom/fasterxml/jackson/databind/jsontype/impl/h$a;->a:[I

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_7

    const/4 p3, 0x2

    if-eq p2, p3, :cond_6

    const/4 p3, 0x3

    if-eq p2, p3, :cond_5

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    const/4 p3, 0x5

    if-ne p2, p3, :cond_3

    .line 8
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/b;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/b;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    return-object p2

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/c;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/c;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    return-object p2

    .line 11
    :cond_5
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/e;

    invoke-direct {p2, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-object p2

    .line 12
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/d;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/d;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    return-object p2

    .line 13
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    invoke-direct {p2, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-object p2
.end method

.method protected c(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;ZZ)",
            "Lcom/fasterxml/jackson/databind/jsontype/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->f:Lcom/fasterxml/jackson/databind/jsontype/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-eqz v0, :cond_5

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/impl/h$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 p3, 0x4

    if-eq v0, p3, :cond_2

    const/4 p1, 0x5

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Do not know how to construct standard type id resolver for idType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    invoke-static {p1, p2, p4, p5, p6}, Lcom/fasterxml/jackson/databind/jsontype/impl/k;->j(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/impl/k;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-static {p2, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/g;->l(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/jsontype/impl/g;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/f;->j(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/jsontype/impl/f;

    move-result-object p1

    return-object p1

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot build, \'init()\' not yet called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "Configured `PolymorphicTypeValidator` (of type %s) denied resolution of all subtypes of base type %s"

    .line 3
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/impl/h;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    return-object p0
.end method

.method protected e(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->subTypeValidator(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v1, v2, :cond_2

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;->validateBaseType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->DENIED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    if-ne v1, p1, :cond_2

    .line 7
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;->instance:Lcom/fasterxml/jackson/databind/jsontype/impl/LaissezFaireSubTypeValidator;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeProperty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->b:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "includeAs cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/c;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/c;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/c;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->f:Lcom/fasterxml/jackson/databind/jsontype/c;

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idType cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isTypeIdVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    return v0
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

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getPolymorphicTypeValidator()Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->d:Z

    return-object p0
.end method

.method public bridge synthetic typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->a:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/impl/h;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->e:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    const-string v1, "withDefaultImpl"

    invoke-static {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/g;->z0(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/h;Ljava/lang/Class;)V

    return-object v0
.end method
