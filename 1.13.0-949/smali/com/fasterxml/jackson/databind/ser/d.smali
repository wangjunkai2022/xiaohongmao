.class public abstract Lcom/fasterxml/jackson/databind/ser/d;
.super Ljava/lang/Object;
.source "BeanSerializerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    return-object p3
.end method

.method public b(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p4
.end method

.method public c(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p4
.end method

.method public d(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p4
.end method

.method public e(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p4
.end method

.method public f(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p4
.end method

.method public g(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p4
.end method

.method public h(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p4
.end method

.method public i(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    return-object p3
.end method

.method public j(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    return-object p3
.end method

.method public k(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/ser/c;)Lcom/fasterxml/jackson/databind/ser/c;
    .locals 0

    return-object p3
.end method
