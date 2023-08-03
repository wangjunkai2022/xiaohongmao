.class public abstract Lcom/fasterxml/jackson/core/type/b;
.super Ljava/lang/Object;
.source "TypeReference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/fasterxml/jackson/core/type/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 4
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/reflect/Type;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: TypeReference constructed without actual type information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/type/b;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/b<",
            "TT;>;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/core/type/b;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/type/b;->a(Lcom/fasterxml/jackson/core/type/b;)I

    move-result p1

    return p1
.end method
