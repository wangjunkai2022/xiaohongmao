.class public final Lcom/fasterxml/jackson/databind/node/c$a;
.super Lcom/fasterxml/jackson/databind/node/c;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field protected i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/fasterxml/jackson/databind/e;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/c;-><init>(ILcom/fasterxml/jackson/databind/node/c;)V

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/e;->elements()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/c$a;->i:Ljava/util/Iterator;

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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$a;->j:Lcom/fasterxml/jackson/databind/e;

    return-object v0
.end method

.method public v()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$a;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$a;->j:Lcom/fasterxml/jackson/databind/e;

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$a;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/e;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$a;->j:Lcom/fasterxml/jackson/databind/e;

    .line 6
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/m;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/fasterxml/jackson/databind/node/c;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/c$a;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/c$a;->j:Lcom/fasterxml/jackson/databind/e;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/c$a;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v0
.end method

.method public y()Lcom/fasterxml/jackson/databind/node/c;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/c$b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/c$a;->j:Lcom/fasterxml/jackson/databind/e;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/c$b;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v0
.end method
