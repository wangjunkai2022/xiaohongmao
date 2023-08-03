.class public Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "UnresolvedForwardReference.java"


# static fields
.field private static final k:J = 0x1L


# instance fields
.field private i:Lcom/fasterxml/jackson/databind/deser/impl/j;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Lcom/fasterxml/jackson/databind/deser/impl/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 2
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->i:Lcom/fasterxml/jackson/databind/deser/impl/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Lcom/fasterxml/jackson/databind/deser/impl/j;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 6
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->i:Lcom/fasterxml/jackson/databind/deser/impl/j;

    return-void
.end method


# virtual methods
.method public addUnresolvedId(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonLocation;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->j:Ljava/util/List;

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/n;

    invoke-direct {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/n;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized fillInStackTrace()Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .locals 0

    monitor-enter p0

    .line 2
    monitor-exit p0

    return-object p0
.end method

.method public bridge synthetic fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->fillInStackTrace()Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->j:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/n;

    .line 7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ", "

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x2e

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoid()Lcom/fasterxml/jackson/databind/deser/impl/j;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->i:Lcom/fasterxml/jackson/databind/deser/impl/j;

    return-object v0
.end method

.method public getUnresolvedId()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->i:Lcom/fasterxml/jackson/databind/deser/impl/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/j;->c()Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object v0

    iget-object v0, v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnresolvedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->j:Ljava/util/List;

    return-object v0
.end method

.method public withStackTrace()Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .locals 0

    invoke-super {p0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p0
.end method
