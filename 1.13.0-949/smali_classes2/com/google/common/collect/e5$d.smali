.class Lcom/google/common/collect/e5$d;
.super Lcom/google/common/collect/q;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q<",
        "TR;TC;TV2;>;"
    }
.end annotation


# instance fields
.field final c:Lcom/google/common/collect/d5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV1;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/d5;Lcom/google/common/base/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV1;>;",
            "Lcom/google/common/base/q<",
            "-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/d5;

    iput-object p1, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/q;

    iput-object p1, p0, Lcom/google/common/collect/e5$d;->d:Lcom/google/common/base/q;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/e5$d;->e()Lcom/google/common/base/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/x2;->c0(Ljava/util/Iterator;Lcom/google/common/base/q;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/e5$d;->d:Lcom/google/common/base/q;

    invoke-static {v0, v1}, Lcom/google/common/collect/z;->n(Ljava/util/Collection;Lcom/google/common/base/q;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->clear()V

    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->d:Lcom/google/common/base/q;

    invoke-static {p1, v0}, Lcom/google/common/collect/f3;->B0(Ljava/util/Map;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV2;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e5$d$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e5$d$c;-><init>(Lcom/google/common/collect/e5$d;)V

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v1}, Lcom/google/common/collect/d5;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/f3;->B0(Ljava/util/Map;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/d5;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method e()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/q<",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV1;>;",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e5$d$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e5$d$a;-><init>(Lcom/google/common/collect/e5$d;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e5$d;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->d:Lcom/google/common/base/q;

    iget-object v1, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/d5;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV2;)TV2;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lcom/google/common/collect/d5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5<",
            "+TR;+TC;+TV2;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e5$d;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->d:Lcom/google/common/base/q;

    iget-object v1, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/d5;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->d:Lcom/google/common/base/q;

    invoke-static {p1, v0}, Lcom/google/common/collect/f3;->B0(Ljava/util/Map;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV2;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e5$d$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e5$d$b;-><init>(Lcom/google/common/collect/e5$d;)V

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v1}, Lcom/google/common/collect/d5;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/f3;->B0(Ljava/util/Map;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e5$d;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->size()I

    move-result v0

    return v0
.end method
