.class Lcom/google/common/collect/ImmutableSortedMap$b$a;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap$b;->n()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/ImmutableSortedMap$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->c:Lcom/google/common/collect/ImmutableSortedMap$b;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$b$a;->o(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->c:Lcom/google/common/collect/ImmutableSortedMap$b;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSortedMap$b;->f:Lcom/google/common/collect/ImmutableSortedMap;

    .line 2
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->n(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/h4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/h4;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->c:Lcom/google/common/collect/ImmutableSortedMap$b;

    iget-object v2, v2, Lcom/google/common/collect/ImmutableSortedMap$b;->f:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSortedMap;->o(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->c:Lcom/google/common/collect/ImmutableSortedMap$b;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedMap$b;->f:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method
