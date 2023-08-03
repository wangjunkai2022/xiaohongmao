.class public final Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;
.super Lcom/fasterxml/jackson/databind/d;
.source "TypeWrappedDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/d<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final c:J = 0x1L


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/jsontype/b;

.field protected final b:Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/d;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->a:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->a:Lcom/fasterxml/jackson/databind/jsontype/b;

    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDelegatee()Lcom/fasterxml/jackson/databind/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/d;->getDelegatee()Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/d;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKnownPropertyNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/d;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/d;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/d;->handledType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/d;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    return-object v0
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->b:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/d;->supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
