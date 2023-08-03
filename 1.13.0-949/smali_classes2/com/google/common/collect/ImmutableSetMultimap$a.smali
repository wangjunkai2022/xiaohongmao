.class public final Lcom/google/common/collect/ImmutableSetMultimap$a;
.super Lcom/google/common/collect/ImmutableMultimap$c;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap$c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap$a;->l()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/u3;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->m(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->n(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->p(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->q(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->s(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->t(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/s3;->k(Ljava/util/Comparator;)Lcom/google/common/collect/s3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/s3;->E()Lcom/google/common/collect/s3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/s3;->n(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;->s(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->d(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public n(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->e(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public p(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public q(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/h3;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableSetMultimap$a;->s(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public r(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public varargs t(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->s(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method
