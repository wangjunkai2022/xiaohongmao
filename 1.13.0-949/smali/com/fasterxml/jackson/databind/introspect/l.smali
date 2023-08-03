.class public abstract Lcom/fasterxml/jackson/databind/introspect/l;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/l$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract copy()Lcom/fasterxml/jackson/databind/introspect/l;
.end method

.method public abstract forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/b;"
        }
    .end annotation
.end method

.method public abstract forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
.end method

.method public abstract forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
.end method

.method public abstract forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/b;
.end method

.method public abstract forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/b;"
        }
    .end annotation
.end method

.method public abstract forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
.end method
