.class public final Lcom/fasterxml/jackson/databind/ser/impl/e;
.super Lcom/fasterxml/jackson/databind/g;
.source "TypeWrappedSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/g<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/e;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/jsontype/f;

.field protected final b:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    return-object v0
.end method

.method public b()Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/g;

    return-object v0
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/g;

    .line 2
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/ser/e;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/l;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/g;

    if-ne v0, p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/e;

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-direct {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    return-object p1
.end method

.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/g;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-void
.end method
