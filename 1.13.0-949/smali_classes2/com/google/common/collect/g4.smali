.class final Lcom/google/common/collect/g4;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final i:[J

.field static final j:Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient e:Lcom/google/common/collect/h4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/h4<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation
.end field

.field private final transient f:[J

.field private final transient g:I

.field private final transient h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1
    sput-object v0, Lcom/google/common/collect/g4;->i:[J

    .line 2
    new-instance v0, Lcom/google/common/collect/g4;

    .line 3
    invoke-static {}, Lcom/google/common/collect/s3;->B()Lcom/google/common/collect/s3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/g4;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/g4;->j:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/h4;[JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h4<",
            "TE;>;[JII)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    .line 8
    iput-object p2, p0, Lcom/google/common/collect/g4;->f:[J

    .line 9
    iput p3, p0, Lcom/google/common/collect/g4;->g:I

    .line 10
    iput p4, p0, Lcom/google/common/collect/g4;->h:I

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->s(Ljava/util/Comparator;)Lcom/google/common/collect/h4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    .line 3
    sget-object p1, Lcom/google/common/collect/g4;->i:[J

    iput-object p1, p0, Lcom/google/common/collect/g4;->f:[J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/g4;->g:I

    .line 5
    iput p1, p0, Lcom/google/common/collect/g4;->h:I

    return-void
.end method

.method private p(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/common/collect/g4;->f:[J

    iget v1, p0, Lcom/google/common/collect/g4;->g:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    return p1
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/h4;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/g4;->p(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e()Z
    .locals 3

    iget v0, p0, Lcom/google/common/collect/g4;->g:I

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/g4;->h:I

    iget-object v2, p0, Lcom/google/common/collect/g4;->f:[J

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g4;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/g4;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/g4;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/g4;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

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

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/g4;->m(I)Lcom/google/common/collect/k3$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/h4;->D(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/g4;->q(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/g4;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/g4;->m(I)Lcom/google/common/collect/k3$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method m(I)Lcom/google/common/collect/k3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    invoke-virtual {v0}, Lcom/google/common/collect/h4;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/collect/g4;->p(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/l3;->k(Ljava/lang/Object;I)Lcom/google/common/collect/k3$a;

    move-result-object p1

    return-object p1
.end method

.method q(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/g4;->h:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/a0;->f0(III)V

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->o(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/common/collect/g4;->h:I

    if-ne p2, v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/h4;->C(II)Lcom/google/common/collect/h4;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/common/collect/g4;

    iget-object v2, p0, Lcom/google/common/collect/g4;->f:[J

    iget v3, p0, Lcom/google/common/collect/g4;->g:I

    add-int/2addr v3, p1

    sub-int/2addr p2, p1

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/google/common/collect/g4;-><init>(Lcom/google/common/collect/h4;[JII)V

    return-object v1
.end method

.method public size()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g4;->f:[J

    iget v1, p0, Lcom/google/common/collect/g4;->g:I

    iget v2, p0, Lcom/google/common/collect/g4;->h:I

    add-int/2addr v2, v1

    aget-wide v2, v0, v2

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    .line 2
    invoke-static {v2, v3}, Lcom/google/common/primitives/f;->x(J)I

    move-result v0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/g4;->e:Lcom/google/common/collect/h4;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/h4;->E(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/g4;->h:I

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g4;->q(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/v4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method
