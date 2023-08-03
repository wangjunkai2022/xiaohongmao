.class final Lcom/google/common/collect/j3$i;
.super Lcom/google/common/collect/j3$j;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/a3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
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
        "Lcom/google/common/collect/j3$j<",
        "TK;TV1;TV2;>;",
        "Lcom/google/common/collect/a3<",
        "TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/a3;Lcom/google/common/collect/f3$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/f3$t<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j3$j;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/collect/f3$t;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j3$i;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/j3$i;->l(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j3$i;->l(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method l(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/common/collect/j3$j;->g:Lcom/google/common/collect/f3$t;

    invoke-static {v0, p1}, Lcom/google/common/collect/f3;->n(Lcom/google/common/collect/f3$t;Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/collect/b3;->D(Ljava/util/List;Lcom/google/common/base/q;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j3$i;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/j3$j;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/j3$i;->l(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j3$i;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
