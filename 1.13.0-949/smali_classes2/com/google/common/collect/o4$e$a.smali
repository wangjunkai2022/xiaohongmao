.class Lcom/google/common/collect/o4$e$a;
.super Lcom/google/common/collect/c;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/o4$e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/BitSet;

.field final synthetic d:Lcom/google/common/collect/o4$e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o4$e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/o4$e$a;->d:Lcom/google/common/collect/o4$e;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/BitSet;

    iget-object p1, p1, Lcom/google/common/collect/o4$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/o4$e$a;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/o4$e$a;->d:Lcom/google/common/collect/o4$e;

    iget v2, v2, Lcom/google/common/collect/o4$e;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/google/common/collect/o4$e$a;->d:Lcom/google/common/collect/o4$e;

    iget-object v3, v3, Lcom/google/common/collect/o4$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v1, v0}, Ljava/util/BitSet;->set(II)V

    .line 8
    iget-object v1, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->clear(II)V

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 11
    new-instance v1, Lcom/google/common/collect/o4$e$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/o4$e$a$a;-><init>(Lcom/google/common/collect/o4$e$a;Ljava/util/BitSet;)V

    return-object v1
.end method
