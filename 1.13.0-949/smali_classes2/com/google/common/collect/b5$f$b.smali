.class Lcom/google/common/collect/b5$f$b;
.super Lcom/google/common/collect/f3$q0;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b5$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$q0<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/b5$f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b5$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$q0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    invoke-virtual {v0}, Lcom/google/common/collect/f3$r0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    iget-object p1, p1, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/b5;->i(Lcom/google/common/collect/b5;Ljava/lang/Object;)Ljava/util/Map;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    iget-object v0, v0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0}, Lcom/google/common/collect/b5;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b3;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    iget-object v3, v3, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/b5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    iget-object v1, v1, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-static {v1, v2}, Lcom/google/common/collect/b5;->i(Lcom/google/common/collect/b5;Ljava/lang/Object;)Ljava/util/Map;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    iget-object v0, v0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0}, Lcom/google/common/collect/b5;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b3;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    iget-object v3, v3, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/b5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/b5$f$b;->b:Lcom/google/common/collect/b5$f;

    iget-object v1, v1, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-static {v1, v2}, Lcom/google/common/collect/b5;->i(Lcom/google/common/collect/b5;Ljava/lang/Object;)Ljava/util/Map;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
