.class public Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
.super Lcom/fasterxml/jackson/databind/ser/f;
.source "SimpleFilterProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final d:J = 0x1L


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/ser/h;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/fasterxml/jackson/databind/ser/h;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/f;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->c:Z

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v1, v1, Lcom/fasterxml/jackson/databind/ser/h;

    if-nez v1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    return-void

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    return-void
.end method

.method private static final a(Lcom/fasterxml/jackson/databind/ser/b;)Lcom/fasterxml/jackson/databind/ser/h;
    .locals 0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->from(Lcom/fasterxml/jackson/databind/ser/b;)Lcom/fasterxml/jackson/databind/ser/h;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/ser/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/ser/h;

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/h;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/ser/b;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/b;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a(Lcom/fasterxml/jackson/databind/ser/b;)Lcom/fasterxml/jackson/databind/ser/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized filter type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/b;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a(Lcom/fasterxml/jackson/databind/ser/b;)Lcom/fasterxml/jackson/databind/ser/h;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/h;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findFilter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Access to deprecated filters not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findPropertyFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/h;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/h;

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->b:Lcom/fasterxml/jackson/databind/ser/h;

    if-nez p2, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No filter configured with id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' (type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getDefaultFilter()Lcom/fasterxml/jackson/databind/ser/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->b:Lcom/fasterxml/jackson/databind/ser/h;

    return-object v0
.end method

.method public removeFilter(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/h;

    return-object p1
.end method

.method public setDefaultFilter(Lcom/fasterxml/jackson/databind/ser/b;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->from(Lcom/fasterxml/jackson/databind/ser/b;)Lcom/fasterxml/jackson/databind/ser/h;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->b:Lcom/fasterxml/jackson/databind/ser/h;

    return-object p0
.end method

.method public setDefaultFilter(Lcom/fasterxml/jackson/databind/ser/h;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->b:Lcom/fasterxml/jackson/databind/ser/h;

    return-object p0
.end method

.method public setDefaultFilter(Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->b:Lcom/fasterxml/jackson/databind/ser/h;

    return-object p0
.end method

.method public setFailOnUnknownId(Z)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->c:Z

    return-object p0
.end method

.method public willFailOnUnknownId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->c:Z

    return v0
.end method
