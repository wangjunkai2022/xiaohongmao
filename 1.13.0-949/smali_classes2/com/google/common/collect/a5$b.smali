.class Lcom/google/common/collect/a5$b;
.super Lcom/google/common/collect/b5$h;
.source "StandardRowSortedTable.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b5<",
        "TR;TC;TV;>.h;",
        "Ljava/util/SortedMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/a5;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/a5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    invoke-direct {p0, p1}, Lcom/google/common/collect/b5$h;-><init>(Lcom/google/common/collect/b5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/a5;Lcom/google/common/collect/a5$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/a5$b;-><init>(Lcom/google/common/collect/a5;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a5$b;->f()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    invoke-static {v0}, Lcom/google/common/collect/a5;->p(Lcom/google/common/collect/a5;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f3$g0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f3$g0;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    invoke-static {v0}, Lcom/google/common/collect/a5;->p(Lcom/google/common/collect/a5;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/f3$r0;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/a5;

    iget-object v1, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    invoke-static {v1}, Lcom/google/common/collect/a5;->p(Lcom/google/common/collect/a5;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    iget-object v1, v1, Lcom/google/common/collect/b5;->d:Lcom/google/common/base/i0;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/a5;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/i0;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/a5;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a5$b;->g()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    invoke-static {v0}, Lcom/google/common/collect/a5;->p(Lcom/google/common/collect/a5;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/collect/a5;

    iget-object v1, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    invoke-static {v1}, Lcom/google/common/collect/a5;->p(Lcom/google/common/collect/a5;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    iget-object p2, p2, Lcom/google/common/collect/b5;->d:Lcom/google/common/base/i0;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/a5;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/i0;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/a5;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/a5;

    iget-object v1, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    invoke-static {v1}, Lcom/google/common/collect/a5;->p(Lcom/google/common/collect/a5;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/a5$b;->e:Lcom/google/common/collect/a5;

    iget-object v1, v1, Lcom/google/common/collect/b5;->d:Lcom/google/common/base/i0;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/a5;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/i0;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/a5;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
