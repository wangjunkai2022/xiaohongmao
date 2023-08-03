.class public final Lcom/fasterxml/jackson/databind/node/c$c;
.super Lcom/fasterxml/jackson/databind/node/c;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field protected i:Lcom/fasterxml/jackson/databind/e;

.field protected j:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/c;-><init>(ILcom/fasterxml/jackson/databind/node/c;)V

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/c$c;->j:Z

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/c$c;->i:Lcom/fasterxml/jackson/databind/e;

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

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/c$c;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$c;->i:Lcom/fasterxml/jackson/databind/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public v()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/c$c;->j:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 3
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/c$c;->j:Z

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$c;->i:Lcom/fasterxml/jackson/databind/e;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/m;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/c$c;->i:Lcom/fasterxml/jackson/databind/e;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public x()Lcom/fasterxml/jackson/databind/node/c;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/c$a;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/c$c;->i:Lcom/fasterxml/jackson/databind/e;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/c$a;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v0
.end method

.method public y()Lcom/fasterxml/jackson/databind/node/c;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/c$b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/c$c;->i:Lcom/fasterxml/jackson/databind/e;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/c$b;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v0
.end method
