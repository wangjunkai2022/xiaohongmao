.class public abstract Lcom/fasterxml/jackson/core/l;
.super Ljava/lang/Object;
.source "TreeCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createArrayNode()Lcom/fasterxml/jackson/core/m;
.end method

.method public abstract createObjectNode()Lcom/fasterxml/jackson/core/m;
.end method

.method public missingNode()Lcom/fasterxml/jackson/core/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public nullNode()Lcom/fasterxml/jackson/core/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/core/m;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract treeAsTokens(Lcom/fasterxml/jackson/core/m;)Lcom/fasterxml/jackson/core/JsonParser;
.end method

.method public abstract writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/m;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method
