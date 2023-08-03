.class public final synthetic Lcom/fasterxml/jackson/databind/deser/k;
.super Ljava/lang/Object;
.source "NullValueProvider.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/databind/deser/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/deser/l;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
