.class final Lcom/google/common/collect/m5;
.super Lcom/google/common/collect/l3$m;
.source "UnmodifiableSortedMultiset.java"

# interfaces
.implements Lcom/google/common/collect/v4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l3$m<",
        "TE;>;",
        "Lcom/google/common/collect/v4<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private transient e:Lcom/google/common/collect/m5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m5<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/v4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v4<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/l3$m;-><init>(Lcom/google/common/collect/k3;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic Y()Lcom/google/common/collect/k3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/v4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m5;->e:Lcom/google/common/collect/m5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/m5;

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/v4;->descendingMultiset()Lcom/google/common/collect/v4;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/m5;-><init>(Lcom/google/common/collect/v4;)V

    .line 3
    iput-object p0, v0, Lcom/google/common/collect/m5;->e:Lcom/google/common/collect/m5;

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/m5;->e:Lcom/google/common/collect/m5;

    :cond_0
    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/google/common/collect/l3$m;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/m5;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/m5;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/k3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->firstEntry()Lcom/google/common/collect/k3$a;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic h0()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->i0()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/v4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/l3;->B(Lcom/google/common/collect/v4;)Lcom/google/common/collect/v4;

    move-result-object p1

    return-object p1
.end method

.method i0()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/o4;->O(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected j0()Lcom/google/common/collect/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/l3$m;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/v4;

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/k3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->lastEntry()Lcom/google/common/collect/k3$a;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/k3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/k3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/v4;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/l3;->B(Lcom/google/common/collect/v4;)Lcom/google/common/collect/v4;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m5;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/v4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/l3;->B(Lcom/google/common/collect/v4;)Lcom/google/common/collect/v4;

    move-result-object p1

    return-object p1
.end method
