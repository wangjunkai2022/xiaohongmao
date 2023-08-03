.class public Lcom/qennnsad/aknkaksd/data/bean/PageBean;
.super Ljava/lang/Object;
.source "PageBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private page:I

.field private page_cnt:I

.field private page_count:I

.field private page_index:I

.field private page_size:I

.field private row_count:I

.field private size:I

.field private sum_coin:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sum_coin"
    .end annotation
.end field

.field private total:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page:I

    return v0
.end method

.method public getPage_cnt()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_cnt:I

    return v0
.end method

.method public getPage_count()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_count:I

    return v0
.end method

.method public getPage_index()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_index:I

    return v0
.end method

.method public getPage_size()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_size:I

    return v0
.end method

.method public getRow_count()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->row_count:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->size:I

    return v0
.end method

.method public getSum_coin()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->sum_coin:Ljava/lang/Long;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->total:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page:I

    return-void
.end method

.method public setPage_cnt(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_cnt:I

    return-void
.end method

.method public setPage_count(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_count:I

    return-void
.end method

.method public setPage_index(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_index:I

    return-void
.end method

.method public setPage_size(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_size:I

    return-void
.end method

.method public setRow_count(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->row_count:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->size:I

    return-void
.end method

.method public setSum_coin(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->sum_coin:Ljava/lang/Long;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageBean{sum_coin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->sum_coin:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", row_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->row_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->page_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
