.class public Lcom/fasterxml/jackson/databind/jsontype/impl/e;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/l;
.source "AsWrapperTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-void
.end method


# virtual methods
.method protected D(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final E(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->T1(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public F(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/e;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->b:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->a:Lcom/fasterxml/jackson/databind/jsontype/c;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic b(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/e;->F(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/e;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
