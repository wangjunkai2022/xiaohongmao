.class abstract Lcom/google/common/collect/o0;
.super Lcom/google/common/collect/s1;
.source "DescendingMultiset.java"

# interfaces
.implements Lcom/google/common/collect/v4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/s1<",
        "TE;>;",
        "Lcom/google/common/collect/v4<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# instance fields
.field private transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient b:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/s1;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    return-object v0
.end method

.method protected Y()Lcom/google/common/collect/k3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

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

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/o0;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/s3;->k(Ljava/util/Comparator;)Lcom/google/common/collect/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/s3;->G()Lcom/google/common/collect/s3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/o0;->a:Ljava/util/Comparator;

    :cond_0
    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

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
    iget-object v0, p0, Lcom/google/common/collect/o0;->b:Ljava/util/NavigableSet;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/common/collect/x4$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x4$b;-><init>(Lcom/google/common/collect/v4;)V

    iput-object v0, p0, Lcom/google/common/collect/o0;->b:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/o0;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/o0;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/o0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/o0;->h0()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/o0;->c:Ljava/util/Set;

    :cond_0
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

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->lastEntry()Lcom/google/common/collect/k3$a;

    move-result-object v0

    return-object v0
.end method

.method h0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/o0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/o0$a;-><init>(Lcom/google/common/collect/o0;)V

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

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/v4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/v4;->descendingMultiset()Lcom/google/common/collect/v4;

    move-result-object p1

    return-object p1
.end method

.method abstract i0()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/l3;->n(Lcom/google/common/collect/k3;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method abstract j0()Lcom/google/common/collect/v4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation
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

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->firstEntry()Lcom/google/common/collect/k3$a;

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

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->pollLastEntry()Lcom/google/common/collect/k3$a;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->pollFirstEntry()Lcom/google/common/collect/k3$a;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    .line 2
    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/v4;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/v4;->descendingMultiset()Lcom/google/common/collect/v4;

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

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/v4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/v4;->descendingMultiset()Lcom/google/common/collect/v4;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->V()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e1;->W([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/o0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
