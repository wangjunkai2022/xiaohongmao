.class public Lcom/qennnsad/aknkaksd/data/bean/register/SenList;
.super Ljava/lang/Object;
.source "SenList.java"


# instance fields
.field private count:I

.field private point:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

.field private root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteNodeByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;II)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    .line 2
    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->setNext(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V

    .line 4
    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->deleteNodeByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;II)V

    return-void
.end method

.method private getDataByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;II)Ljava/lang/Double;
    .locals 0

    if-ne p2, p3, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getData()Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->getDataByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;II)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private isContain(Lcom/qennnsad/aknkaksd/data/bean/register/Node;Ljava/lang/Double;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getData()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->isContain(Lcom/qennnsad/aknkaksd/data/bean/register/Node;Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method

.method private print(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->print(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V

    return-void
.end method

.method private setDataByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;IILjava/lang/Double;)V
    .locals 0

    if-ne p2, p3, :cond_0

    .line 1
    invoke-virtual {p1, p4}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->setData(Ljava/lang/Double;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->setDataByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;IILjava/lang/Double;)V

    return-void
.end method

.method private toArrayBy(Lcom/qennnsad/aknkaksd/data/bean/register/Node;[Ljava/lang/Double;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getData()Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p2, p3

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->toArrayBy(Lcom/qennnsad/aknkaksd/data/bean/register/Node;[Ljava/lang/Double;I)V

    return-void
.end method


# virtual methods
.method public add(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->point:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    .line 4
    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getData()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->point:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getData()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->point:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->setNext(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V

    .line 7
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->point:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    .line 8
    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public contain(Ljava/lang/Double;)Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->isContain(Lcom/qennnsad/aknkaksd/data/bean/register/Node;Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method

.method public deleteData(Ljava/lang/Double;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->contain(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-virtual {p0, v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->deleteNodeByData(Lcom/qennnsad/aknkaksd/data/bean/register/Node;Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public deleteNode(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->deleteNodeByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteNodeByData(Lcom/qennnsad/aknkaksd/data/bean/register/Node;Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getData()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    .line 3
    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getData()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->setNext(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V

    .line 6
    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->deleteNodeByData(Lcom/qennnsad/aknkaksd/data/bean/register/Node;Ljava/lang/Double;)V

    return-void
.end method

.method public findReverNode(I)Lcom/qennnsad/aknkaksd/data/bean/register/Node;
    .locals 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    add-int/lit8 v4, p1, -0x1

    if-ge v2, v4, :cond_1

    .line 3
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;->getNext()Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object v1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getData(I)Ljava/lang/Double;
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->getDataByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;II)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public printAll()V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->print(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V

    return-void
.end method

.method public setData(Ljava/lang/Double;I)V
    .locals 2

    if-ltz p2, :cond_1

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->setDataByIndex(Lcom/qennnsad/aknkaksd/data/bean/register/Node;IILjava/lang/Double;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    return v0
.end method

.method public toArray()[Ljava/lang/Double;
    .locals 3

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    new-array v0, v0, [Ljava/lang/Double;

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->toArrayBy(Lcom/qennnsad/aknkaksd/data/bean/register/Node;[Ljava/lang/Double;I)V

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->size()I

    move-result v0

    const-string v1, "toarray:"

    const-string v2, "sensorlist:"

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    new-array v0, v4, [Ljava/lang/Double;

    .line 2
    invoke-virtual {p0, v4}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->findReverNode(I)Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    move-result-object v4

    invoke-direct {p0, v4, v0, v3}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->toArrayBy(Lcom/qennnsad/aknkaksd/data/bean/register/Node;[Ljava/lang/Double;I)V

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->count:I

    new-array v0, v0, [Ljava/lang/Double;

    .line 6
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->root:Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-direct {p0, v4, v0, v3}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->toArrayBy(Lcom/qennnsad/aknkaksd/data/bean/register/Node;[Ljava/lang/Double;I)V

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
