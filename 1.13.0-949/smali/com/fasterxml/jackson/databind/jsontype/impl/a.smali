.class public Lcom/fasterxml/jackson/databind/jsontype/impl/a;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/l;
.source "AsArrayTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/a;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->b:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->a:Lcom/fasterxml/jackson/databind/jsontype/c;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic b(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;->D(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
