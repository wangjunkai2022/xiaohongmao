.class public Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
.source "ArrayBlockingQueueDeserializer.java"


# static fields
.field private static final o:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/deser/l;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;)V

    return-void
.end method


# virtual methods
.method protected E0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->E0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 4
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    return-object p1

    .line 5
    :cond_1
    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p2, v0, p3, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZLjava/util/Collection;)V

    return-object p2
.end method

.method protected H0(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic J0(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;->K0(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected K0(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/deser/l;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;"
        }
    .end annotation

    new-instance v8, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->l:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/b;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
