.class Lcom/google/common/collect/ArrayTable$a;
.super Lcom/google/common/collect/b;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "Lcom/google/common/collect/d5$a<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$a;->c:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$a;->b(I)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)Lcom/google/common/collect/d5$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$a;->c:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0, p1}, Lcom/google/common/collect/ArrayTable;->e(Lcom/google/common/collect/ArrayTable;I)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method
