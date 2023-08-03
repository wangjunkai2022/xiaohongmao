.class public interface abstract Lcom/fasterxml/jackson/databind/jsontype/c;
.super Ljava/lang/Object;
.source "TypeIdResolver.java"


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c(Lcom/fasterxml/jackson/databind/JavaType;)V
.end method

.method public abstract d(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end method
