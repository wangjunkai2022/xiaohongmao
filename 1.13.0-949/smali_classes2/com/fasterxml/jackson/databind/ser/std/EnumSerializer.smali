.class public Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "EnumSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/e;


# annotations
.annotation runtime Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer<",
        "Ljava/lang/Enum<",
        "*>;>;",
        "Lcom/fasterxml/jackson/databind/ser/e;"
    }
.end annotation


# static fields
.field private static final f:J = 0x1L


# instance fields
.field protected final d:Lcom/fasterxml/jackson/databind/util/EnumValues;

.field protected final e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/EnumValues;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->d:Lcom/fasterxml/jackson/databind/util/EnumValues;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lcom/fasterxml/jackson/databind/util/EnumValues;->constructFromName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumValues;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p3, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->v(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    .line 3
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    invoke-direct {p2, p1, p0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumValues;Ljava/lang/Boolean;)V

    return-object p2
.end method

.method protected static v(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;ZLjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;",
            "Z",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object p3

    .line 2
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->SCALAR:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p1, v0, :cond_2

    goto :goto_4

    .line 3
    :cond_2
    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq p1, p3, :cond_7

    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NATURAL:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p1, p3, :cond_3

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->isNumeric()Z

    move-result p3

    if-nez p3, :cond_6

    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p1, p3, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    const/4 p0, 0x2

    if-eqz p2, :cond_5

    const-string p1, "class"

    goto :goto_1

    :cond_5
    const-string p1, "property"

    :goto_1
    aput-object p1, v0, p0

    const-string p0, "Unsupported serialization shape (%s) for Enum %s, not supported as %s annotation"

    .line 7
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 8
    :cond_6
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 9
    :cond_7
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    :goto_4
    return-object p3
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/e;->a()Lcom/fasterxml/jackson/databind/l;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->w(Lcom/fasterxml/jackson/databind/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->r(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;->i(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/l;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 7
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->d:Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/EnumValues;->enums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->d:Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/EnumValues;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/j;

    .line 11
    invoke-interface {v1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/m;->b(Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->k(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->handledType()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->e:Ljava/lang/Boolean;

    invoke-static {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->v(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->e:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->d:Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-direct {p2, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumValues;Ljava/lang/Boolean;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public getEnumValues()Lcom/fasterxml/jackson/databind/util/EnumValues;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->d:Lcom/fasterxml/jackson/databind/util/EnumValues;

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/l;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/e;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->w(Lcom/fasterxml/jackson/databind/l;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "integer"

    .line 2
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->d(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "string"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->d(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/c;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "enum"

    .line 6
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->d:Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/EnumValues;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/j;

    .line 8
    invoke-interface {v1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final serialize(Ljava/lang/Enum;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->w(Lcom/fasterxml/jackson/databind/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a1(I)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->P1(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->d:Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/fasterxml/jackson/core/j;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->N1(Lcom/fasterxml/jackson/core/j;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->serialize(Ljava/lang/Enum;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    return-void
.end method

.method protected final w(Lcom/fasterxml/jackson/databind/l;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    return p1
.end method
