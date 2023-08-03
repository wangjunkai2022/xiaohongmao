.class public Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;
.super Lcom/fasterxml/jackson/databind/deser/i$a;
.source "SimpleDeserializers.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:J = 0x1L


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/i$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/i$a;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->b:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->addDeserializers(Ljava/util/Map;)V

    return-void
.end method

.method private final a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/d;

    return-object p1
.end method


# virtual methods
.method public addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/d<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class p2, Ljava/lang/Enum;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->b:Z

    :cond_1
    return-void
.end method

.method public addDeserializers(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
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

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/d;

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
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

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public findCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public findCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public findEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
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
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p3, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {p3, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/d;

    if-nez p2, :cond_1

    .line 3
    iget-boolean p3, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->b:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    new-instance p2, Lcom/fasterxml/jackson/databind/type/ClassKey;

    const-class p3, Ljava/lang/Enum;

    invoke-direct {p2, p3}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/fasterxml/jackson/databind/d;

    :cond_1
    return-object p2
.end method

.method public findMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/h;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public findMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/h;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public findReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public findTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
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
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p3, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {p3, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/d;

    return-object p1
.end method

.method public hasDeserializerFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v0, p2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
