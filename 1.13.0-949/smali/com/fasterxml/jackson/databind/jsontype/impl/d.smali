.class public Lcom/fasterxml/jackson/databind/jsontype/impl/d;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/a;
.source "AsPropertyTypeSerializer.java"


# instance fields
.field protected final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic D(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->E(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/d;

    move-result-object p1

    return-object p1
.end method

.method public E(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/d;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->b:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->a:Lcom/fasterxml/jackson/databind/jsontype/c;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/d;-><init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic b(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->E(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/d;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
