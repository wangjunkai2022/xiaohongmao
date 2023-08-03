.class public Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

.field private static final j:J = 0x1L

.field private static final k:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->k:[Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    return-void
.end method

.method private U(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Map;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

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


# virtual methods
.method protected T(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
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
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/d;->a(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/UnsupportedTypeDeserializer;

    invoke-direct {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/UnsupportedTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected V(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->a()Lcom/fasterxml/jackson/databind/jsontype/impl/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/i;->b(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)V

    return-void
.end method

.method protected W(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->e()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->r()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 5
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->e0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lcom/fasterxml/jackson/databind/deser/a;->g(Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected X(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/a;->y()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    if-eqz v13, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->getIgnoreUnknown()Z

    move-result v1

    .line 8
    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/deser/a;->D(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/deser/a;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_3
    move-object v5, v0

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v1

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 19
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/deser/a;->j(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v6, v0

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 20
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->d()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v7, v8, v9, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->c0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/deser/a;->C(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;)V

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->F()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/deser/a;->i(Ljava/lang/String;)V

    goto :goto_5

    .line 25
    :cond_7
    :goto_6
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 26
    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    .line 27
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->u()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->h0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 29
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 30
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/b;

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v2, v3, v9, v0}, Lcom/fasterxml/jackson/databind/deser/b;->k(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    .line 32
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 33
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->y()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 34
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 36
    invoke-virtual {v7, v8, v9, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->e0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    goto :goto_b

    .line 37
    :cond_b
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->v()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 38
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 40
    invoke-virtual {v7, v8, v9, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->e0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    goto :goto_b

    .line 41
    :cond_c
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    if-eqz v2, :cond_f

    if-eqz v16, :cond_e

    .line 42
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->U(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 43
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/deser/a;->z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_a

    .line 44
    :cond_d
    invoke-virtual {v7, v8, v9, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->f0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    goto :goto_b

    .line 45
    :cond_e
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->u()Z

    move-result v2

    if-nez v2, :cond_f

    .line 46
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->getMergeInfo()Lcom/fasterxml/jackson/databind/PropertyMetadata$a;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 48
    invoke-virtual {v7, v8, v9, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->f0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v15, :cond_16

    .line 49
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->u()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 50
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v3

    .line 51
    array-length v4, v13

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_11

    aget-object v6, v13, v5

    .line 52
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    instance-of v12, v6, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    if-eqz v12, :cond_10

    .line 53
    check-cast v6, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    goto :goto_d

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_13

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    array-length v4, v13

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_12

    aget-object v6, v13, v5

    .line 56
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_12
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/g;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v14

    aput-object v2, v4, v11

    const-string v2, "Could not find creator property with name %s (known Creator properties: %s)"

    .line 58
    invoke-virtual {v8, v9, v1, v2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_13
    if-eqz v2, :cond_14

    .line 59
    invoke-virtual {v6, v2}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->setFallbackSetter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 60
    :cond_14
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->g()[Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_15

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->j()[Ljava/lang/Class;

    move-result-object v1

    .line 62
    :cond_15
    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setViews([Ljava/lang/Class;)V

    .line 63
    invoke-virtual {v10, v6}, Lcom/fasterxml/jackson/databind/deser/a;->h(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_9

    :cond_16
    if-eqz v2, :cond_a

    .line 64
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->g()[Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_17

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/b;->j()[Ljava/lang/Class;

    move-result-object v1

    .line 66
    :cond_17
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setViews([Ljava/lang/Class;)V

    .line 67
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/deser/a;->m(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_9

    :cond_18
    return-void
.end method

.method protected Y(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->n()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 4
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    .line 5
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->z()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v2, p3

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/a;->k(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected Z(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->G()Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->c()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/fasterxml/jackson/databind/c;->objectIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/introspect/p;)Lcom/fasterxml/jackson/annotation/c0;

    move-result-object v8

    .line 4
    const-class v2, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->d()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 6
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/deser/a;->r(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    .line 8
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;)V

    move-object v3, p2

    move-object v5, v1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    const/4 p2, 0x1

    .line 11
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->g0(Lcom/fasterxml/jackson/databind/PropertyName;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    const-string p2, "Invalid Object Id definition for %s: cannot find property with name %s"

    .line 12
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    const-class v4, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v2, v1, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    aget-object v1, v1, v3

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/c;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/introspect/p;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object p2

    move-object v5, p2

    move-object v3, v1

    :goto_0
    move-object v7, v2

    .line 16
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v6

    .line 17
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/p;->d()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 18
    invoke-static/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/c0;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/deser/a;->E(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    return-void
.end method

.method protected a0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->W(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    return-void
.end method

.method protected b0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->d0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/deser/a;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/a;->G(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 5
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->X(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 6
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->Z(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 7
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->W(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 8
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->Y(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 9
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/b;->t()Lc2/e$a;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v1, "build"

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p1, Lc2/e$a;->a:Ljava/lang/String;

    .line 11
    :goto_0
    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/b;->r(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/util/g;->i(Ljava/lang/reflect/Member;Z)V

    .line 14
    :cond_1
    invoke-virtual {v3, v0, p1}, Lcom/fasterxml/jackson/databind/deser/a;->F(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lc2/e$a;)V

    .line 15
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/b;

    .line 17
    invoke-virtual {v0, v2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/b;->j(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)Lcom/fasterxml/jackson/databind/deser/a;

    move-result-object v3

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v3, p2, v1}, Lcom/fasterxml/jackson/databind/deser/a;->p(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/b;

    .line 21
    invoke-virtual {v0, v2, p3, p1}, Lcom/fasterxml/jackson/databind/deser/b;->d(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    goto :goto_2

    :cond_3
    return-object p1

    :catch_0
    move-exception p2

    .line 22
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 23
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 25
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/impl/c;

    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/c;-><init>(Ljava/lang/NoClassDefFoundError;)V

    return-object p2
.end method

.method public buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
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
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->d0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/deser/a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/a;->G(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 4
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->X(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 5
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->Z(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 6
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->W(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 7
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->Y(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/b;

    .line 11
    invoke-virtual {v3, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/b;->j(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)Lcom/fasterxml/jackson/databind/deser/a;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canInstantiate()Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/a;->o()Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object p2

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/a;->n()Lcom/fasterxml/jackson/databind/d;

    move-result-object p2

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/b;

    .line 17
    invoke-virtual {v1, p1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/b;->d(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p2

    goto :goto_2

    :cond_2
    return-object p2

    :catch_0
    move-exception p2

    .line 18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 19
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v0, p3, v1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 22
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/impl/c;

    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/c;-><init>(Ljava/lang/NoClassDefFoundError;)V

    return-object p2
.end method

.method public buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
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
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->d0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/deser/a;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/a;->G(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 4
    invoke-virtual {p0, p1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->X(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)V

    .line 5
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->k:[Ljava/lang/Class;

    const-string v2, "initCause"

    invoke-virtual {p3, v2, v1}, Lcom/fasterxml/jackson/databind/b;->r(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v4, "cause"

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lcom/fasterxml/jackson/databind/util/r;->F(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/util/r;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 8
    invoke-virtual {p0, p1, p3, v2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->e0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/a;->l(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)V

    :cond_0
    const-string p1, "localizedMessage"

    .line 10
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/a;->i(Ljava/lang/String;)V

    const-string p1, "suppressed"

    .line 11
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/a;->i(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/b;

    .line 14
    invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/b;->j(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;)Lcom/fasterxml/jackson/databind/deser/a;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/a;->n()Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    .line 16
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;)V

    move-object p1, v0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/b;

    .line 20
    invoke-virtual {v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/deser/b;->d(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method protected c0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    instance-of v1, p3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    move-object v1, p3

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 3
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 4
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->R(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 6
    new-instance v9, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v6, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v1, v9

    move-object v3, v8

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, p3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_6

    .line 8
    move-object v1, p3

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 9
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 10
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->R(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 12
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 13
    new-instance v9, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v6, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v1, v9

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    move-object v3, v8

    .line 14
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->O(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/h;

    move-result-object v2

    if-nez v2, :cond_1

    .line 15
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/h;

    :cond_1
    if-nez v2, :cond_2

    .line 16
    invoke-virtual {p1, v7, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/h;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_2
    instance-of v4, v2, Lcom/fasterxml/jackson/databind/deser/d;

    if-eqz v4, :cond_3

    .line 18
    check-cast v2, Lcom/fasterxml/jackson/databind/deser/d;

    .line 19
    invoke-interface {v2, p1, v1}, Lcom/fasterxml/jackson/databind/deser/d;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/h;

    move-result-object v2

    :cond_3
    :goto_1
    move-object v4, v2

    .line 20
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->M(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v2

    if-nez v2, :cond_4

    .line 21
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/d;

    :cond_4
    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {p1, v2, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_5
    move-object v5, v2

    .line 23
    :goto_2
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 24
    new-instance v7, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-object v0, v7

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;)V

    return-object v7

    .line 25
    :cond_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unrecognized mutator type for any setter: %s"

    .line 27
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    return-object v0
.end method

.method public createBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
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
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->r(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/b;

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v0, v2, p3, v1}, Lcom/fasterxml/jackson/databind/deser/b;->d(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isThrowable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->l0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->i0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->k0(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->V(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->T(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    .line 16
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public createBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
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
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_BUILDER_TYPE_BINDINGS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p4, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->b0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method protected d0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/deser/a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/a;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/a;-><init>(Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-object v0
.end method

.method protected e0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/k;->p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No non-constructor mutator available"

    .line 2
    invoke-virtual {p1, p2, p3, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->R(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 5
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    .line 7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->z()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-object v3, v1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    .line 9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->z()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-object v3, v1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->N(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p2

    if-nez p2, :cond_2

    .line 11
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/d;

    :cond_2
    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p1, p2, v1, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    .line 14
    :cond_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/k;->f()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 17
    :cond_4
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/k;->d()Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/p;)V

    :cond_5
    return-object v1
.end method

.method protected f0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/k;->m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v6

    .line 2
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->R(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 3
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 4
    new-instance v8, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    .line 5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->z()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v4

    move-object v0, v8

    move-object v1, p3

    move-object v2, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 6
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->N(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p2

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/d;

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1, p2, v8, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    .line 9
    invoke-virtual {v8, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v8

    :cond_1
    return-object v8
.end method

.method protected g0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/deser/a;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
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

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->h0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected h0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/a;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/deser/a;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2, p5, p6}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->c(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->u()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->s()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->j0(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/deser/a;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected i0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/b;

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v1, v2, p3, p2}, Lcom/fasterxml/jackson/databind/deser/b;->d(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected j0(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    const-class p2, Ljava/lang/String;

    if-eq p3, p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/b;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_3

    .line 5
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_3

    .line 7
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    :cond_3
    :goto_1
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected k0(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ") as a Bean"

    const-string v2, " (of type "

    const-string v3, "Cannot deserialize Class "

    if-nez v0, :cond_2

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->e0(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/g;->b0(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot deserialize Proxy class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a Bean"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected l0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/a;

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/fasterxml/jackson/databind/a;->resolveAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->b:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    const-string v1, "withConfig"

    invoke-static {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/g;->z0(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    return-object v0
.end method
