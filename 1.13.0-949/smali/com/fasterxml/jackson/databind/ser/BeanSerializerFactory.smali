.class public Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final d:J = 0x1L

.field public static final instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    return-void
.end method


# virtual methods
.method protected B(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/ser/g;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v9, p5

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/k;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 2
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 3
    new-instance v1, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/k;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/k;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v8

    move-object v3, v1

    move-object v5, v10

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 5
    invoke-virtual {p0, p1, v9}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->y(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    .line 6
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/ser/i;

    if-eqz v4, :cond_0

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/i;

    invoke-interface {v4, p1}, Lcom/fasterxml/jackson/databind/ser/i;->resolve(Lcom/fasterxml/jackson/databind/l;)V

    .line 8
    :cond_0
    invoke-virtual {p1, v3, v1}, Lcom/fasterxml/jackson/databind/l;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {p0, v10, v1, v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v1

    :cond_2
    move-object v7, v1

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {p0, v10, v1, v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, v10

    move-object/from16 v8, p5

    move v9, p4

    .line 12
    invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/ser/g;->c(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    return-object v1
.end method

.method protected C(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p4, :cond_0

    .line 3
    invoke-virtual {p0, v0, p3, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->A(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/f;)Z

    move-result p4

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->j(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    move-object v1, p2

    check-cast v1, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findReferenceSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->p()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/l;

    .line 8
    invoke-interface {v2, v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/l;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_4
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->v(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    .line 10
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->w(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-nez v1, :cond_6

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->x(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-nez v1, :cond_6

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-nez v1, :cond_6

    .line 13
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    .line 14
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/d;

    .line 16
    invoke-virtual {p2, v0, p3, v1}, Lcom/fasterxml/jackson/databind/ser/d;->i(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method protected D(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/d;->a(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;

    invoke-direct {p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected E(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    const-class p2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/fasterxml/jackson/databind/c;

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/fasterxml/jackson/core/TokenStreamFactory;

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/fasterxml/jackson/core/JsonParser;

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected F(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    .line 1
    const-class v4, Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v4, :cond_0

    .line 2
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->D(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->E(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;

    invoke-direct {v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v2

    .line 6
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    .line 7
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->H(Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/ser/c;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ser/c;->m(Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    .line 9
    invoke-virtual {v1, v2, v3, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->N(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/c;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->R(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/c;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 12
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/l;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v8

    invoke-virtual {v7, v4, v8, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Ljava/util/List;)V

    .line 13
    iget-object v7, v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 14
    iget-object v7, v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/ser/d;

    .line 15
    invoke-virtual {v8, v4, v3, v6}, Lcom/fasterxml/jackson/databind/ser/d;->a(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v1, v4, v3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->M(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 17
    invoke-virtual {v1, v4, v3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->L(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 18
    iget-object v7, v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    iget-object v7, v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/ser/d;

    .line 20
    invoke-virtual {v8, v4, v3, v6}, Lcom/fasterxml/jackson/databind/ser/d;->j(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v1, v2, v3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->J(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/b;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/ser/c;->p(Lcom/fasterxml/jackson/databind/ser/impl/b;)V

    .line 22
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ser/c;->q(Ljava/util/List;)V

    .line 23
    invoke-virtual {v1, v4, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->s(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ser/c;->n(Ljava/lang/Object;)V

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->b()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 25
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 26
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    .line 27
    invoke-virtual {v1, v4, v14}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v10

    .line 28
    invoke-virtual {v1, v2, v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->y(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    .line 29
    sget-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 30
    invoke-virtual {v4, v9}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 31
    invoke-static/range {v7 .. v13}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v7

    :cond_6
    move-object v13, v7

    .line 32
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v8

    .line 33
    new-instance v15, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    const/4 v10, 0x0

    sget-object v12, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v7, v15

    move-object v9, v14

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 34
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/a;

    invoke-direct {v7, v15, v6, v13}, Lcom/fasterxml/jackson/databind/ser/a;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/g;)V

    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/ser/c;->l(Lcom/fasterxml/jackson/databind/ser/a;)V

    .line 35
    :cond_7
    invoke-virtual {v1, v4, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->P(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/c;)V

    .line 36
    iget-object v6, v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 37
    iget-object v6, v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/ser/d;

    .line 38
    invoke-virtual {v7, v4, v3, v5}, Lcom/fasterxml/jackson/databind/ser/d;->k(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/c;)Lcom/fasterxml/jackson/databind/ser/c;

    move-result-object v5

    goto :goto_3

    .line 39
    :cond_8
    :try_start_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/c;->a()Lcom/fasterxml/jackson/databind/g;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_a

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 41
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/c;->b()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0

    :cond_9
    move/from16 v2, p4

    .line 42
    invoke-virtual {v1, v4, v0, v3, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->u(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-nez v2, :cond_a

    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/c;->b()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0

    :cond_a
    return-object v2

    :catch_0
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 45
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    const-string v4, "Failed to construct BeanSerializer for %s: (%s) %s"

    .line 46
    invoke-virtual {v2, v3, v4, v0}, Lcom/fasterxml/jackson/databind/l;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/b;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/g;

    return-object v0
.end method

.method protected G(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->F(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method protected H(Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/ser/c;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/c;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/c;-><init>(Lcom/fasterxml/jackson/databind/b;)V

    return-object v0
.end method

.method protected I(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/a;->a(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object p1

    return-object p1
.end method

.method protected J(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->G()Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->c()Ljava/lang/Class;

    move-result-object v2

    .line 3
    const-class v3, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->d()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v2, :cond_3

    .line 6
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 7
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v3, :cond_1

    .line 8
    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    invoke-interface {p3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    invoke-direct {p2, v0, v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/p;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 12
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->b()Z

    move-result p3

    invoke-static {p1, v1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/b;->a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/b;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "Invalid Object Id definition for %s: cannot find property with name %s"

    .line 15
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 16
    :cond_4
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/c;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 17
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v1, p3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    aget-object p3, p3, v4

    .line 18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/c;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/introspect/p;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object p1

    .line 19
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->d()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p2

    .line 20
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->b()Z

    move-result v0

    .line 21
    invoke-static {p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/b;->a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/b;

    move-result-object p1

    return-object p1
.end method

.method protected K(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/ser/g;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/g;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/g;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;)V

    return-object v0
.end method

.method protected L(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p2

    .line 7
    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, v1}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->c(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return-object p3
.end method

.method protected M(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    const-class p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    .line 5
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isEmpty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/CharSequence;

    if-ne p2, v0, :cond_0

    .line 8
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method protected N(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/c;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/ser/c;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->u()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->Q(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)V

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->S(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)V

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return-object v3

    .line 7
    :cond_1
    invoke-virtual {p0, v1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->A(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/f;)Z

    move-result v2

    .line 8
    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->K(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/ser/g;

    move-result-object p2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 11
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/k;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    .line 12
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/k;->B()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p3, v3}, Lcom/fasterxml/jackson/databind/ser/c;->r(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/k;->f()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v4, :cond_5

    .line 17
    move-object v9, v3

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->B(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/ser/g;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_5
    move-object v9, v3

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->B(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/ser/g;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method protected O(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->e0(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected P(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/c;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/c;->i()Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 6
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 7
    array-length v7, v6

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 8
    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->I(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v5

    aput-object v5, v2, v3

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 9
    aput-object v5, v2, v3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-nez v4, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/ser/c;->o([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-void
.end method

.method protected Q(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->s()Ljava/lang/Class;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/b;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    .line 11
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/b;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 13
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    .line 14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected R(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/c;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/ser/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    .line 2
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->e()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 7
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eq v2, p3, :cond_1

    .line 8
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->wouldConflictWithName(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/f;)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-object p4
.end method

.method protected S(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/k;->a()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/k;->z()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->y(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, p2

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v5

    invoke-virtual {v3, v0, v5, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x1

    if-ne v3, p2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object v1

    :cond_3
    const/4 v4, 0x1

    .line 8
    :goto_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/b;->w()Lcom/fasterxml/jackson/databind/util/h;

    move-result-object p2

    if-nez p2, :cond_4

    .line 9
    invoke-virtual {p0, p1, v3, v1, v4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->C(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/fasterxml/jackson/databind/util/h;->b(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 11
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 12
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->y(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    .line 14
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    invoke-virtual {p0, p1, v4, v1, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->C(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    .line 16
    :cond_6
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {p1, p2, v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    return-object p1

    :catch_0
    move-exception p2

    .line 17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v0}, Lcom/fasterxml/jackson/databind/l;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/b;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method

.method public findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->O(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->X(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->F(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findBeanSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/a;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/jsontype/a;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object p3

    .line 6
    invoke-interface {p1, p2, v0, p3}, Lcom/fasterxml/jackson/databind/jsontype/e;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/a;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/jsontype/a;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object p3

    .line 5
    invoke-interface {v0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/e;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected p()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    return-object v0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has not properly overridden method \'withAdditionalSerializers\': cannot instantiate subtype with additional serializer definitions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
