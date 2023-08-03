.class Lcom/google/common/collect/x0;
.super Lcom/google/common/collect/h;
.source "FilteredKeyMultimap.java"

# interfaces
.implements Lcom/google/common/collect/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/x0$c;,
        Lcom/google/common/collect/x0$a;,
        Lcom/google/common/collect/x0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV;>;",
        "Lcom/google/common/collect/z0<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# instance fields
.field final f:Lcom/google/common/collect/h3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/base/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b0<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/h3;

    iput-object p1, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/b0;

    iput-object p1, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    return-object v0
.end method

.method b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->asMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-static {v0, v1}, Lcom/google/common/collect/f3;->G(Ljava/util/Map;Lcom/google/common/base/b0;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/x0$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x0$c;-><init>(Lcom/google/common/collect/x0;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/h;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-interface {v0, p1}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-static {v0, v1}, Lcom/google/common/collect/o4;->i(Ljava/util/Set;Lcom/google/common/base/b0;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/google/common/collect/k3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->keys()Lcom/google/common/collect/k3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-static {v0, v1}, Lcom/google/common/collect/l3;->j(Lcom/google/common/collect/k3;Lcom/google/common/base/b0;)Lcom/google/common/collect/k3;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-interface {v0, p1}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    instance-of v0, v0, Lcom/google/common/collect/n4;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/common/collect/x0$b;

    invoke-direct {v0, p1}, Lcom/google/common/collect/x0$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/common/collect/x0$a;

    invoke-direct {v0, p1}, Lcom/google/common/collect/x0$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a1;-><init>(Lcom/google/common/collect/z0;)V

    return-object v0
.end method

.method i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    instance-of v0, v0, Lcom/google/common/collect/n4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/x0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/x0;->k()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 2
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public v()Lcom/google/common/base/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-static {v0}, Lcom/google/common/collect/f3;->U(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object v0

    return-object v0
.end method
