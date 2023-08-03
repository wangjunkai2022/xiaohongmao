.class public abstract Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StaticListSerializerBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection<",
        "*>;>",
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "TT;>;",
        "Lcom/fasterxml/jackson/databind/ser/e;"
    }
.end annotation


# instance fields
.field protected final d:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;)V

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->d:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public abstract _withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;->o(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->v(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b;)V

    :cond_0
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
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
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    .line 3
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1, v3, v2}, Lcom/fasterxml/jackson/databind/l;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->handledType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->k(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 8
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->h(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/l;->findContentValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    .line 10
    :cond_2
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->n(Lcom/fasterxml/jackson/databind/g;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->d:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    .line 12
    :cond_3
    invoke-virtual {p0, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->_withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/c;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    return-object p2
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/l;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/e;
    .locals 1

    const-string p1, "array"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->d(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->w()Lcom/fasterxml/jackson/databind/e;

    move-result-object p2

    const-string v0, "items"

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "TT;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_0

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

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;->serializeWithType(Ljava/util/Collection;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-void
.end method

.method public abstract serializeWithType(Ljava/util/Collection;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract v(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method protected abstract w()Lcom/fasterxml/jackson/databind/e;
.end method
