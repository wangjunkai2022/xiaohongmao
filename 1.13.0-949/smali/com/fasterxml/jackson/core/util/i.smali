.class public Lcom/fasterxml/jackson/core/util/i;
.super Lcom/fasterxml/jackson/core/util/h;
.source "JsonParserSequence.java"


# instance fields
.field protected final i:[Lcom/fasterxml/jackson/core/JsonParser;

.field protected final j:Z

.field protected k:I

.field protected l:Z


# direct methods
.method protected constructor <init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/h;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/util/i;->j:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->i1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/i;->l:Z

    .line 5
    iput-object p2, p0, Lcom/fasterxml/jackson/core/util/i;->i:[Lcom/fasterxml/jackson/core/JsonParser;

    .line 6
    iput v1, p0, Lcom/fasterxml/jackson/core/util/i;->k:I

    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/i;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    return-void
.end method

.method public static Y1(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/i;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/fasterxml/jackson/core/util/i;->Z1(ZLcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/i;

    move-result-object p0

    return-object p0
.end method

.method public static Z1(ZLcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/i;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/core/util/i;

    if-nez v0, :cond_0

    instance-of v1, p2, Lcom/fasterxml/jackson/core/util/i;

    if-nez v1, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/util/i;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/util/i;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/fasterxml/jackson/core/util/i;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/util/i;->W1(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    instance-of p1, p2, Lcom/fasterxml/jackson/core/util/i;

    if-eqz p1, :cond_2

    .line 7
    check-cast p2, Lcom/fasterxml/jackson/core/util/i;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/util/i;->W1(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_1
    new-instance p1, Lcom/fasterxml/jackson/core/util/i;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-direct {p1, p0, p2}, Lcom/fasterxml/jackson/core/util/i;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    return-object p1
.end method


# virtual methods
.method public U1()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/i;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    .line 4
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    return-object p0
.end method

.method protected W1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/util/i;->k:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/i;->i:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/i;->i:[Lcom/fasterxml/jackson/core/JsonParser;

    aget-object v2, v2, v0

    .line 3
    instance-of v3, v2, Lcom/fasterxml/jackson/core/util/i;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/fasterxml/jackson/core/util/i;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/util/i;->W1(Ljava/util/List;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public X1()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/i;->i:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v0, v0

    return v0
.end method

.method protected a2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/util/i;->k:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/i;->i:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 2
    iput v2, p0, Lcom/fasterxml/jackson/core/util/i;->k:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 3
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/util/i;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->i1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->v0()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b2()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/util/i;->k:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/i;->i:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 2
    iput v2, p0, Lcom/fasterxml/jackson/core/util/i;->k:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/i;->b2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public y1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/util/i;->l:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/util/i;->l:Z

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/i;->a2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :cond_2
    return-object v0
.end method
