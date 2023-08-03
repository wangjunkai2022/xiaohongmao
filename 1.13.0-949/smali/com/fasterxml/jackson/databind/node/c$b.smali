.class public final Lcom/fasterxml/jackson/databind/node/c$b;
.super Lcom/fasterxml/jackson/databind/node/c;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field protected i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;>;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/c;-><init>(ILcom/fasterxml/jackson/databind/node/c;)V

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/c$b;->i:Ljava/util/Iterator;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/c$b;->k:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic e()Lcom/fasterxml/jackson/core/f;
    .locals 1

    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/c;->t()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/fasterxml/jackson/databind/e;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$b;->j:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/e;

    :goto_0
    return-object v0
.end method

.method public v()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/c$b;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$b;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/node/c;->g:Ljava/lang/String;

    .line 4
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/node/c$b;->j:Ljava/util/Map$Entry;

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 6
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/c$b;->k:Z

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$b;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$b;->j:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/node/c;->g:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 11
    :cond_2
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/c$b;->k:Z

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$b;->j:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/e;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/m;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/fasterxml/jackson/databind/node/c;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/c$a;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/c$b;->s()Lcom/fasterxml/jackson/databind/e;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/c$a;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v0
.end method

.method public y()Lcom/fasterxml/jackson/databind/node/c;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/c$b;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/c$b;->s()Lcom/fasterxml/jackson/databind/e;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/c$b;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v0
.end method
