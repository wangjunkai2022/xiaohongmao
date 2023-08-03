.class public abstract Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/k;
.source "BasicSerializerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 5
    const-class v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers;->a(Ljava/util/Map;)V

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    const-class v4, Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    const-class v4, Ljava/math/BigDecimal;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 18
    instance-of v5, v4, Lcom/fasterxml/jackson/databind/g;

    if-eqz v5, :cond_0

    .line 19
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/fasterxml/jackson/databind/g;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    check-cast v4, Ljava/lang/Class;

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_1
    const-class v2, Lcom/fasterxml/jackson/databind/util/t;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sput-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->b:Ljava/util/HashMap;

    .line 24
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/k;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    return-void
.end method


# virtual methods
.method protected A(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/f;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p3

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3
    sget-object p3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-eq p2, p3, :cond_2

    .line 4
    sget-object p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 5
    :cond_2
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2
    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->c(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    .line 4
    :goto_0
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_8

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$a;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v3, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/fasterxml/jackson/databind/l;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/l;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 8
    :cond_4
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move-object v4, p1

    goto :goto_1

    .line 10
    :cond_6
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/d;->b(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 13
    :cond_7
    :goto_1
    invoke-virtual {p3, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p1

    return-object p1

    .line 14
    :cond_8
    :goto_2
    sget-object p2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 15
    invoke-virtual {p3, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p3
.end method

.method protected b(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
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
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/l;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildCollectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    return-object v0
.end method

.method public buildEnumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public buildIndexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    return-object v0
.end method

.method protected c(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/b;->v(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p4, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    .line 4
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p3, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$a;->b:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x4

    if-eq p3, p4, :cond_0

    const/4 p4, 0x6

    if-eq p3, p4, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withContentInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withContentFilter(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public createKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasKeySerializers()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->keySerializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/l;

    .line 23
    invoke-interface {v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/l;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    if-nez v2, :cond_2

    if-nez p3, :cond_3

    .line 24
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->c(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object p3

    if-nez p3, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->b(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v2

    .line 26
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/d;

    .line 28
    invoke-virtual {v2, p1, p2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/d;->f(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p3

    goto :goto_1

    :cond_4
    return-object p3
.end method

.method public createKeySerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
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
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasKeySerializers()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->keySerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/l;

    .line 5
    invoke-interface {v4, v0, p2, v1}, Lcom/fasterxml/jackson/databind/ser/l;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v3

    :cond_2
    :goto_0
    if-nez v4, :cond_7

    .line 6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->d(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-nez v2, :cond_6

    if-nez p3, :cond_8

    .line 7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->c(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-nez v2, :cond_6

    .line 8
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/b;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    if-nez v2, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/b;->p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createKeySerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    .line 11
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 12
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p3

    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 13
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    .line 14
    invoke-static {p3, v4}, Lcom/fasterxml/jackson/databind/util/g;->i(Ljava/lang/reflect/Member;Z)V

    .line 15
    :cond_4
    new-instance p3, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    invoke-direct {p3, v2, v3, p1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->b(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p3

    goto :goto_1

    :cond_6
    move-object p3, v2

    goto :goto_1

    :cond_7
    move-object p3, v4

    .line 17
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/d;

    .line 19
    invoke-virtual {v2, v0, p2, v1, p3}, Lcom/fasterxml/jackson/databind/ser/d;->f(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p3

    goto :goto_2

    :cond_9
    return-object p3
.end method

.method public abstract createSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
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
.end method

.method public createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1, v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v1

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/a;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/a;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_1

    return-object v2

    .line 7
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/e;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
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
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/l;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected e(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
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

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->p()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/l;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/l;->findArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    if-nez v0, :cond_5

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p6, :cond_2

    .line 5
    invoke-static {p6}, Lcom/fasterxml/jackson/databind/util/g;->a0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    :cond_2
    const-class v0, [Ljava/lang/String;

    if-ne v0, v1, :cond_3

    .line 7
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->a(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 9
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-direct {v0, v1, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    .line 10
    :cond_5
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 11
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/fasterxml/jackson/databind/ser/d;

    .line 12
    invoke-virtual {p5, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/d;->b(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public findReferenceSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
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
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v8

    move-object/from16 v15, p0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v15, v8, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v1

    :cond_0
    move-object v14, v1

    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/g;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->p()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/l;

    move-object v3, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    move-object v7, v0

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/l;->findReferenceSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 8
    :cond_2
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object v15, v0

    .line 9
    invoke-virtual/range {v9 .. v15}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->h(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFactoryConfig()Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    return-object v0
.end method

.method protected h(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
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
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->c(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    .line 4
    :goto_0
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$a;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v3, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, v4, p3}, Lcom/fasterxml/jackson/databind/l;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/l;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    .line 8
    :cond_4
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move-object v4, p1

    goto :goto_2

    .line 10
    :cond_6
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/d;->b(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v3, 0x0

    .line 13
    :cond_8
    :goto_2
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    invoke-direct {p1, p2, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/ReferenceType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    .line 14
    invoke-virtual {p1, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object p1

    return-object p1
.end method

.method protected i(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1
    const-class v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v12

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->p()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move-object v1, v14

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/l;

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/l;->findCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    if-nez v1, :cond_8

    .line 4
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->v(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-nez v1, :cond_8

    .line 5
    invoke-virtual {v7, v14}, Lcom/fasterxml/jackson/databind/b;->l(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v2, v3, :cond_2

    return-object v14

    .line 7
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 8
    const-class v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumImplType()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v14, v1

    .line 11
    :goto_0
    invoke-virtual {p0, v14}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildEnumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 13
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->z(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v3, v11, :cond_5

    .line 14
    invoke-static/range {p6 .. p6}, Lcom/fasterxml/jackson/databind/util/g;->a0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v1, v8, v9, v10}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIndexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v1

    goto :goto_1

    :cond_6
    if-ne v3, v11, :cond_7

    .line 17
    invoke-static/range {p6 .. p6}, Lcom/fasterxml/jackson/databind/util/g;->a0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    :cond_7
    :goto_1
    if-nez v1, :cond_8

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v1, v8, v9, v10}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v1

    .line 20
    :cond_8
    :goto_2
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/d;

    move-object/from16 v4, p2

    .line 22
    invoke-virtual {v3, v12, v4, v7, v1}, Lcom/fasterxml/jackson/databind/ser/d;->d(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_3

    :cond_9
    return-object v1
.end method

.method protected j(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 18
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

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    if-nez p4, :cond_1

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->useStaticType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move/from16 v2, p4

    .line 4
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 5
    invoke-virtual {v8, v0, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v16

    if-eqz v16, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v4, v2

    .line 6
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 7
    invoke-virtual {v8, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->b(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v17

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 9
    move-object/from16 v2, p2

    check-cast v2, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->d(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    .line 11
    instance-of v6, v2, Lcom/fasterxml/jackson/databind/type/MapType;

    if-eqz v6, :cond_3

    .line 12
    check-cast v2, Lcom/fasterxml/jackson/databind/type/MapType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->o(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    return-object v0

    .line 13
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->p()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/fasterxml/jackson/databind/ser/l;

    move-object v10, v0

    move-object v11, v2

    move-object/from16 v12, p3

    move-object v13, v5

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    .line 14
    invoke-interface/range {v9 .. v15}, Lcom/fasterxml/jackson/databind/ser/l;->findMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_5
    if-nez v3, :cond_6

    .line 15
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->v(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 16
    iget-object v1, v8, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, v8, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/d;

    .line 18
    invoke-virtual {v4, v0, v2, v7, v3}, Lcom/fasterxml/jackson/databind/ser/d;->g(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    goto :goto_2

    :cond_7
    return-object v3

    .line 19
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 20
    move-object/from16 v9, p2

    check-cast v9, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    .line 21
    instance-of v2, v9, Lcom/fasterxml/jackson/databind/type/CollectionType;

    if-eqz v2, :cond_9

    .line 22
    move-object v2, v9

    check-cast v2, Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->i(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    return-object v0

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->p()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/l;

    move-object v3, v0

    move-object v4, v9

    move-object/from16 v5, p3

    move-object/from16 v6, v16

    move-object v11, v7

    move-object/from16 v7, v17

    .line 24
    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/l;->findCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    move-object v7, v11

    goto :goto_3

    :cond_b
    move-object v11, v7

    :goto_4
    if-nez v3, :cond_c

    .line 25
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->v(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    :cond_c
    if-eqz v3, :cond_d

    .line 26
    iget-object v1, v8, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 27
    iget-object v1, v8, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/d;

    .line 28
    invoke-virtual {v2, v0, v9, v11, v3}, Lcom/fasterxml/jackson/databind/ser/d;->c(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    goto :goto_5

    :cond_d
    return-object v3

    :cond_e
    move-object v11, v7

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    move-object/from16 v2, p2

    check-cast v2, Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->e(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    return-object v0

    :cond_f
    return-object v3
.end method

.method protected k(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/b;->l(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v2, v3, :cond_0

    .line 3
    check-cast p3, Lcom/fasterxml/jackson/databind/introspect/j;

    const-string p1, "declaringClass"

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/introspect/j;->Y(Ljava/lang/String;)Z

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-static {v0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/d;

    .line 8
    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/d;->e(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected l(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
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

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;

    invoke-virtual {p0, p1, p5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    invoke-direct {p2, p5, p4, p1}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;)V

    return-object p2
.end method

.method protected m(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
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

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;

    invoke-virtual {p0, p1, p5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    invoke-direct {p2, p5, p4, p1}, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;)V

    return-object p2
.end method

.method protected n(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
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
    const-class p2, Ljava/util/Map$Entry;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/l;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/b;->l(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 3
    invoke-static {v1, p2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->merge(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object p2

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p2, v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {p0, v1, p6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p5

    move-object v5, p6

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p4

    .line 8
    const-class p5, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->c(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p3

    if-nez p3, :cond_1

    .line 9
    sget-object p5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p5

    .line 10
    :goto_0
    sget-object p6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p5, p6, :cond_9

    sget-object p6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p5, p6, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    sget-object p6, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$a;->b:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, p6, p5

    const/4 p6, 0x1

    if-eq p5, p6, :cond_7

    const/4 v1, 0x2

    if-eq p5, v1, :cond_6

    const/4 p4, 0x3

    if-eq p5, p4, :cond_5

    const/4 p4, 0x4

    if-eq p5, p4, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/fasterxml/jackson/databind/l;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/l;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result p6

    goto :goto_1

    .line 14
    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p4}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move-object v0, p1

    goto :goto_1

    .line 16
    :cond_7
    invoke-static {p4}, Lcom/fasterxml/jackson/databind/util/d;->b(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    :cond_8
    :goto_1
    invoke-virtual {p2, v0, p6}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_2
    return-object p2
.end method

.method protected o(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    const/4 v9, 0x0

    .line 1
    invoke-virtual {v8, v9}, Lcom/fasterxml/jackson/databind/b;->l(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v1, v2, :cond_0

    return-object v9

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v10

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->p()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v1, v9

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/l;

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 5
    invoke-interface/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/ser/l;->findMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    if-nez v1, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->v(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-nez v1, :cond_5

    .line 7
    invoke-virtual {v0, v10, v8}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->s(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;)Ljava/lang/Object;

    move-result-object v18

    .line 8
    const-class v1, Ljava/util/Map;

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 10
    invoke-virtual {v10, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v11, v9

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v1

    move-object v11, v1

    .line 12
    :goto_0
    const-class v1, Ljava/util/Map;

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 14
    invoke-virtual {v10, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v9

    :goto_1
    move-object v12, v9

    move-object/from16 v13, p2

    move/from16 v14, p4

    move-object/from16 v15, p6

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    .line 16
    invoke-static/range {v11 .. v18}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v1

    move-object/from16 v2, p1

    .line 17
    invoke-virtual {v0, v2, v8, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v1

    .line 18
    :cond_5
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/d;

    move-object/from16 v4, p2

    .line 20
    invoke-virtual {v3, v10, v4, v8, v1}, Lcom/fasterxml/jackson/databind/ser/d;->h(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method protected abstract p()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/l;",
            ">;"
        }
    .end annotation
.end method

.method protected q(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/util/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/h<",
            "Ljava/lang/Object;",
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
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/c;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/h;

    move-result-object p1

    return-object p1
.end method

.method protected r(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
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
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->q(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/util/h;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p3

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/fasterxml/jackson/databind/util/h;->b(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    return-object v0
.end method

.method protected s(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected t(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 0
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

    sget-object p4, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method protected final u(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
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
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    array-length v1, v0

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_1
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->m(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    array-length v1, v0

    if-eq v1, v3, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    aget-object v0, v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_3
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->l(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    const-class p1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final v(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
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
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/f;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/b;->p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->canOverrideAccessModifiers()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p3

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 7
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    .line 8
    invoke-static {p3, v0}, Lcom/fasterxml/jackson/databind/util/g;->i(Ljava/lang/reflect/Member;Z)V

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->y(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/g;

    .line 12
    :cond_2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v1

    .line 14
    :cond_3
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    invoke-direct {p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final w(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/g;

    if-nez p2, :cond_0

    .line 4
    sget-object p3, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/util/g;->n(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/ser/k;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/k;

    move-result-object p1

    return-object p1
.end method

.method public final withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/ser/k;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/k;

    move-result-object p1

    return-object p1
.end method

.method public abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/k;
.end method

.method public final withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/d;)Lcom/fasterxml/jackson/databind/ser/k;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->a:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/d;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/k;

    move-result-object p1

    return-object p1
.end method

.method protected final x(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;
    .locals 10
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
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->k(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->t(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 5
    :cond_1
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    return-object p1

    .line 7
    :cond_2
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    return-object p1

    .line 9
    :cond_3
    const-class v1, Ljava/util/Map$Entry;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 10
    const-class v0, Ljava/util/Map$Entry;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 12
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 13
    invoke-virtual/range {v3 .. v9}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->n(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    const-class p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;-><init>()V

    return-object p1

    .line 16
    :cond_5
    const-class p1, Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;-><init>()V

    return-object p1

    .line 18
    :cond_6
    const-class p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/InetSocketAddressSerializer;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ser/std/InetSocketAddressSerializer;-><init>()V

    return-object p1

    .line 20
    :cond_7
    const-class p1, Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;-><init>()V

    return-object p1

    .line 22
    :cond_8
    const-class p1, Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 23
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    return-object p1

    .line 24
    :cond_9
    const-class p1, Ljava/lang/Number;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_c

    .line 25
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/b;->l(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    .line 26
    sget-object p2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$a;->a:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_b

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_a

    .line 27
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    return-object p1

    :cond_a
    return-object p4

    .line 28
    :cond_b
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    return-object p1

    .line 29
    :cond_c
    const-class p1, Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 30
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;

    invoke-direct {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object p1

    :cond_d
    return-object p4
.end method

.method protected y(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
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
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/l;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->r(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method protected z(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/util/RandomAccess;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
