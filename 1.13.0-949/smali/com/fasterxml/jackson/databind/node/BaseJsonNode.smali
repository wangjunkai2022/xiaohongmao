.class public abstract Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.super Lcom/fasterxml/jackson/databind/e;
.source "BaseJsonNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/e;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method d()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/d;->b(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/d;

    move-result-object v0

    return-object v0
.end method

.method public final findPath(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/e;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public abstract hashCode()I
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public required(I)Lcom/fasterxml/jackson/databind/e;
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Node of type `%s` has no indexed values"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1
.end method

.method public required(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/e;
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Node of type `%s` has no fields"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1
.end method

.method public abstract serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toPrettyString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/a;->b(Lcom/fasterxml/jackson/databind/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/a;->c(Lcom/fasterxml/jackson/databind/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverse()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/node/e;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/e;)V

    return-object v0
.end method

.method public traverse(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/node/e;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/core/h;)V

    return-object v0
.end method
