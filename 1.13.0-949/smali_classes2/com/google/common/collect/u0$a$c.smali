.class Lcom/google/common/collect/u0$a$c;
.super Lcom/google/common/collect/f3$q0;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u0$a;->c()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$q0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/u0$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/u0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/u0$a$c;->b:Lcom/google/common/collect/u0$a;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$q0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ljava/util/Collection;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/u0$a$c;->b:Lcom/google/common/collect/u0$a;

    iget-object v0, v0, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    iget-object v0, v0, Lcom/google/common/collect/u0;->f:Lcom/google/common/collect/h3;

    .line 4
    invoke-interface {v0}, Lcom/google/common/collect/h3;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lcom/google/common/collect/u0$c;

    iget-object v5, p0, Lcom/google/common/collect/u0$a$c;->b:Lcom/google/common/collect/u0$a;

    iget-object v5, v5, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    invoke-direct {v4, v5, v2}, Lcom/google/common/collect/u0$c;-><init>(Lcom/google/common/collect/u0;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/google/common/collect/u0;->l(Ljava/util/Collection;Lcom/google/common/base/b0;)Ljava/util/Collection;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$a$c;->b:Lcom/google/common/collect/u0$a;

    iget-object v0, v0, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->Q0(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u0;->m(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$a$c;->b:Lcom/google/common/collect/u0$a;

    iget-object v0, v0, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/c0;->q(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->Q0(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u0;->m(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method
