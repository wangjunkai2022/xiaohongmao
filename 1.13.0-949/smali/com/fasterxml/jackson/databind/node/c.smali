.class abstract Lcom/fasterxml/jackson/databind/node/c;
.super Lcom/fasterxml/jackson/core/f;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/node/c$b;,
        Lcom/fasterxml/jackson/databind/node/c$a;,
        Lcom/fasterxml/jackson/databind/node/c$c;
    }
.end annotation


# instance fields
.field protected final f:Lcom/fasterxml/jackson/databind/node/c;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/fasterxml/jackson/databind/node/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/f;-><init>()V

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/c;->f:Lcom/fasterxml/jackson/databind/node/c;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic e()Lcom/fasterxml/jackson/core/f;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/c;->t()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/c;->h:Ljava/lang/Object;

    return-void
.end method

.method public abstract s()Lcom/fasterxml/jackson/databind/e;
.end method

.method public final t()Lcom/fasterxml/jackson/databind/node/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/c;->f:Lcom/fasterxml/jackson/databind/node/c;

    return-object v0
.end method

.method public final u()Lcom/fasterxml/jackson/databind/node/c;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/c;->s()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/fasterxml/jackson/databind/node/c$a;

    invoke-direct {v1, v0, p0}, Lcom/fasterxml/jackson/databind/node/c$a;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/fasterxml/jackson/databind/node/c$b;

    invoke-direct {v1, v0, p0}, Lcom/fasterxml/jackson/databind/node/c$b;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current node of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract v()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/c;->g:Ljava/lang/String;

    return-void
.end method

.method public abstract x()Lcom/fasterxml/jackson/databind/node/c;
.end method

.method public abstract y()Lcom/fasterxml/jackson/databind/node/c;
.end method
