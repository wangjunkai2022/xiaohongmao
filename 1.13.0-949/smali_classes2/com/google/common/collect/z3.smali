.class final Lcom/google/common/collect/z3;
.super Lcom/google/common/collect/ContiguousSet;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/z3$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/ContiguousSet<",
        "TC;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field private static final j:J


# instance fields
.field private final i:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;",
            "Lcom/google/common/collect/p0<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/common/collect/ContiguousSet;-><init>(Lcom/google/common/collect/p0;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    return-void
.end method

.method static synthetic F(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/z3;->G(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static G(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private I(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-static {p1, v0}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/collect/q0;

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-direct {p1, v0}, Lcom/google/common/collect/q0;-><init>(Lcom/google/common/collect/p0;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method C(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->b(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/z3;->I(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method D(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 2
    new-instance p1, Lcom/google/common/collect/q0;

    iget-object p2, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-direct {p1, p2}, Lcom/google/common/collect/q0;-><init>(Lcom/google/common/collect/p0;)V

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
    invoke-direct {p0, p1}, Lcom/google/common/collect/z3;->I(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method E(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->b(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/z3;->I(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public H()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/k0;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/k0;->o(Lcom/google/common/collect/p0;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/k0;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/k0;->m(Lcom/google/common/collect/p0;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
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

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/z;->c(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public descendingIterator()Lcom/google/common/collect/k5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/z3$b;

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->J()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/z3$b;-><init>(Lcom/google/common/collect/z3;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z3;->descendingIterator()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/z3;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/z3;

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    iget-object v3, v1, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->J()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/z3;->J()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_2
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/Object;
    .locals 4
    .annotation build Lh3/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/z3$d;

    iget-object v1, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/z3$d;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;Lcom/google/common/collect/z3$a;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/o4;->k(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation build Lh3/c;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/z3;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object v1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/p0;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public intersection(Lcom/google/common/collect/ContiguousSet;)Lcom/google/common/collect/ContiguousSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    iget-object v1, p1, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/s3;->B()Lcom/google/common/collect/s3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/s3;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 5
    invoke-static {}, Lcom/google/common/collect/s3;->B()Lcom/google/common/collect/s3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->J()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/s3;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    .line 6
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 7
    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-static {p1, v0}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/common/collect/q0;

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-direct {p1, v0}, Lcom/google/common/collect/q0;-><init>(Lcom/google/common/collect/p0;)V

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/k5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/z3$a;

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/z3$a;-><init>(Lcom/google/common/collect/z3;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z3;->iterator()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->J()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method n()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    iget-boolean v0, v0, Lcom/google/common/collect/p0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/z3$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/z3$c;-><init>(Lcom/google/common/collect/z3;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/ImmutableSet;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public range()Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-virtual {p0, v0, v0}, Lcom/google/common/collect/z3;->range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/k0;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/k0;->r(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/p0;)Lcom/google/common/collect/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/z3;->i:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/k0;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    .line 4
    invoke-virtual {v0, p2, v1}, Lcom/google/common/collect/k0;->s(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/p0;)Lcom/google/common/collect/k0;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->c(Lcom/google/common/collect/k0;Lcom/google/common/collect/k0;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/z3;->J()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/p0;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    return v0
.end method

.method bridge synthetic t(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/z3;->C(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic v(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/z3;->D(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic w(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/z3;->E(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method
