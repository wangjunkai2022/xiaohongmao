.class public Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "StdDelegatingDeserializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/c;
.implements Lcom/fasterxml/jackson/databind/deser/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/c;",
        "Lcom/fasterxml/jackson/databind/deser/m;"
    }
.end annotation


# static fields
.field private static final i:J = 0x1L


# instance fields
.field protected final f:Lcom/fasterxml/jackson/databind/util/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/h<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final g:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final h:Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V

    .line 10
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    .line 11
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 12
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/h<",
            "*TT;>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/h<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 6
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    .line 7
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 8
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    return-void
.end method


# virtual methods
.method protected C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot update object of type %s (using deserializer for type %s)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected D0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/h;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected E0(Lcom/fasterxml/jackson/databind/util/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/h<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    const-string v1, "withDelegate"

    invoke-static {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/g;->z0(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)V

    return-object v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p2, v0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->E0(Lcom/fasterxml/jackson/databind/util/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/h;->a(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->f:Lcom/fasterxml/jackson/databind/util/h;

    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->E0(Lcom/fasterxml/jackson/databind/util/h;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->D0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->D0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    return-object v0
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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/d;->handledType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/d;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/m;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/m;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/deser/m;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_0
    return-void
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->h:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/d;->supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
