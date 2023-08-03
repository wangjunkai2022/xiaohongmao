.class final Lcom/google/common/collect/ImmutableRangeSet$b;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSortedSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final h:Lcom/google/common/collect/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p0<",
            "TC;>;"
        }
    .end annotation
.end field

.field private transient i:Ljava/lang/Integer;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final synthetic j:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/p0<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    .line 2
    invoke-static {}, Lcom/google/common/collect/s3;->B()Lcom/google/common/collect/s3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->h:Lcom/google/common/collect/p0;

    return-void
.end method

.method static synthetic C(Lcom/google/common/collect/ImmutableRangeSet$b;)Lcom/google/common/collect/p0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->h:Lcom/google/common/collect/p0;

    return-object p0
.end method


# virtual methods
.method D(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->b(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$b;->E(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method E(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->h:Lcom/google/common/collect/p0;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableRangeSet;->asSet(Lcom/google/common/collect/p0;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method F(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 1
    invoke-static {p1, p3}, Lcom/google/common/collect/Range;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->b(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    .line 4
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->b(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    .line 5
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$b;->E(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method G(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->b(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$b;->E(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public descendingIterator()Lcom/google/common/collect/k5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lh3/c;
        value = "NavigableSet"
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$b$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$b$b;-><init>(Lcom/google/common/collect/ImmutableRangeSet$b;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lh3/c;
        value = "NavigableSet"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$b;->descendingIterator()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->e()Z

    move-result v0

    return v0
.end method

.method h()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$c;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->h:Lcom/google/common/collect/p0;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeSet$c;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/p0;)V

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    const-wide/16 v0, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/k5;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->h:Lcom/google/common/collect/p0;

    invoke-static {v3, v2}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->x(J)I

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->h:Lcom/google/common/collect/p0;

    invoke-static {v3, v4}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "impossible"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public iterator()Lcom/google/common/collect/k5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$b$a;-><init>(Lcom/google/common/collect/ImmutableRangeSet$b;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$b;->iterator()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method r()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n0;-><init>(Lcom/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public size()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->i:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/k5;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    .line 3
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->h:Lcom/google/common/collect/p0;

    invoke-static {v3, v4}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 4
    :cond_1
    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->x(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->i:Ljava/lang/Integer;

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method bridge synthetic t(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$b;->D(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic v(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableRangeSet$b;->F(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic w(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$b;->G(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method
