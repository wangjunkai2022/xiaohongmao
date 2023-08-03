.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/l;
.super Lcom/fasterxml/jackson/databind/jsontype/f;
.source "TypeSerializerBase.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/jsontype/c;

.field protected final b:Lcom/fasterxml/jackson/databind/BeanProperty;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/c;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->a:Lcom/fasterxml/jackson/databind/jsontype/c;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->b:Lcom/fasterxml/jackson/databind/BeanProperty;

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected B(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->a:Lcom/fasterxml/jackson/databind/jsontype/c;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->A(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method protected C(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->a:Lcom/fasterxml/jackson/databind/jsontype/c;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/c;->e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->A(Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/fasterxml/jackson/databind/jsontype/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->a:Lcom/fasterxml/jackson/databind/jsontype/c;

    return-object v0
.end method

.method public abstract e()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method

.method public o(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->z(Lcom/fasterxml/jackson/core/type/WritableTypeId;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->U1(Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->V1(Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object p1

    return-object p1
.end method

.method protected z(Lcom/fasterxml/jackson/core/type/WritableTypeId;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/core/type/WritableTypeId;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/fasterxml/jackson/core/type/WritableTypeId;->a:Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/fasterxml/jackson/core/type/WritableTypeId;->b:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/l;->C(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iput-object v0, p1, Lcom/fasterxml/jackson/core/type/WritableTypeId;->c:Ljava/lang/Object;

    :cond_1
    return-void
.end method
