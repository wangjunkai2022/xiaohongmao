.class Lcom/google/common/collect/j3$j;
.super Lcom/google/common/collect/h;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final f:Lcom/google/common/collect/h3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/h3<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/collect/f3$t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f3$t<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/h3;Lcom/google/common/collect/f3$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h3<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/f3$t<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/h3;

    iput-object p1, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/f3$t;

    iput-object p1, p0, Lcom/google/common/collect/j3$j;->g:Lcom/google/common/collect/f3$t;

    return-void
.end method


# virtual methods
.method b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV2;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    .line 2
    invoke-interface {v0}, Lcom/google/common/collect/h3;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j3$j$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/j3$j$a;-><init>(Lcom/google/common/collect/j3$j;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/f3;->x0(Ljava/util/Map;Lcom/google/common/collect/f3$t;)Ljava/util/Map;

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
            "TK;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$a;-><init>(Lcom/google/common/collect/h;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/google/common/collect/k3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->keys()Lcom/google/common/collect/k3;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/j3$j;->k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    .line 2
    invoke-interface {v0}, Lcom/google/common/collect/h3;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/j3$j;->g:Lcom/google/common/collect/f3$t;

    invoke-static {v1}, Lcom/google/common/collect/f3;->h(Lcom/google/common/collect/f3$t;)Lcom/google/common/base/q;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/z;->n(Ljava/util/Collection;Lcom/google/common/base/q;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    .line 2
    invoke-interface {v0}, Lcom/google/common/collect/h3;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/j3$j;->g:Lcom/google/common/collect/f3$t;

    invoke-static {v1}, Lcom/google/common/collect/f3;->g(Lcom/google/common/collect/f3$t;)Lcom/google/common/base/q;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/x2;->c0(Ljava/util/Iterator;Lcom/google/common/base/q;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->isEmpty()Z

    move-result v0

    return v0
.end method

.method k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$j;->g:Lcom/google/common/collect/f3$t;

    invoke-static {v0, p1}, Lcom/google/common/collect/f3;->n(Lcom/google/common/collect/f3$t;Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object p1

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/common/collect/b3;->D(Ljava/util/List;Lcom/google/common/base/q;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p2, p1}, Lcom/google/common/collect/z;->n(Ljava/util/Collection;Lcom/google/common/base/q;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV2;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lcom/google/common/collect/h3;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV2;>;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j3$j;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/j3$j;->k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->size()I

    move-result v0

    return v0
.end method
