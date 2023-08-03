.class public Lcom/fasterxml/jackson/databind/deser/impl/j;
.super Ljava/lang/Object;
.source "ReadableObjectId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/j$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;

.field protected final b:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

.field protected c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fasterxml/jackson/databind/deser/impl/j$a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/fasterxml/jackson/annotation/c0;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->b:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/deser/impl/j$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:Ljava/util/LinkedList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->d:Lcom/fasterxml/jackson/annotation/c0;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->b:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    invoke-interface {v0, v1, p1}, Lcom/fasterxml/jackson/annotation/c0;->a(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->b:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    iget-object v0, v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:Ljava/util/LinkedList;

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/impl/j$a;

    invoke-virtual {v2, v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/j$a;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->b:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    return-object v0
.end method

.method public d()Lcom/fasterxml/jackson/annotation/c0;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->d:Lcom/fasterxml/jackson/annotation/c0;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/deser/impl/j$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->d:Lcom/fasterxml/jackson/annotation/c0;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->b:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/annotation/c0;->c(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public h(Lcom/fasterxml/jackson/annotation/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->d:Lcom/fasterxml/jackson/annotation/c0;

    return-void
.end method

.method public i(Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->b:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
