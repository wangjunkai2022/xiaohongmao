.class public final Lcom/google/common/collect/ImmutableListMultimap$a;
.super Lcom/google/common/collect/ImmutableMultimap$c;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableListMultimap;
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

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableListMultimap$a;->l()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->m(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->n(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$a;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->p(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->q(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$a;->s(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$a;->t(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap$c;->a()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public m(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->d(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public n(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->e(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public p(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public q(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->h(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public r(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$a;
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
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public varargs t(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->k(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method
