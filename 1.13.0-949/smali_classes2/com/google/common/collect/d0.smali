.class Lcom/google/common/collect/d0;
.super Lcom/google/common/collect/b0;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b0<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final r:I = -0x2


# instance fields
.field private transient n:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient o:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient p:I

.field private transient q:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/b0;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/b0;-><init>(I)V

    return-void
.end method

.method public static G()Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d0;

    invoke-direct {v0}, Lcom/google/common/collect/d0;-><init>()V

    return-object v0
.end method

.method public static H(Ljava/util/Collection;)Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/d0;->J(I)Lcom/google/common/collect/d0;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs I([Ljava/lang/Object;)Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/d0;->J(I)Lcom/google/common/collect/d0;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static J(I)Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d0;-><init>(I)V

    return-object v0
.end method

.method private K(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Lcom/google/common/collect/d0;->p:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d0;->o:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/google/common/collect/d0;->q:I

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/d0;->n:[I

    aput p1, v0, p2

    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/b0;->clear()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/d0;->p:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/d0;->q:I

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/d0;->n:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/d0;->o:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method d(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b0;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method l()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/d0;->p:I

    return v0
.end method

.method o(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d0;->o:[I

    aget p1, v0, p1

    return p1
.end method

.method q(IF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/b0;->q(IF)V

    .line 2
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/common/collect/d0;->n:[I

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/d0;->o:[I

    const/4 p1, -0x1

    .line 4
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iget-object p2, p0, Lcom/google/common/collect/d0;->o:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    const/4 p1, -0x2

    .line 6
    iput p1, p0, Lcom/google/common/collect/d0;->p:I

    .line 7
    iput p1, p0, Lcom/google/common/collect/d0;->q:I

    return-void
.end method

.method r(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/b0;->r(ILjava/lang/Object;I)V

    .line 2
    iget p2, p0, Lcom/google/common/collect/d0;->q:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/d0;->K(II)V

    const/4 p2, -0x2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/d0;->K(II)V

    return-void
.end method

.method s(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/collect/b0;->s(I)V

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/d0;->n:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/common/collect/d0;->o:[I

    aget v2, v2, p1

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/d0;->K(II)V

    if-eq v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/d0;->n:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/d0;->K(II)V

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/d0;->o:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/d0;->K(II)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/d0;->n:[I

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 7
    iget-object p1, p0, Lcom/google/common/collect/d0;->o:[I

    aput v1, p1, v0

    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/p3;->l(Ljava/util/Collection;)[Ljava/lang/Object;

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
    invoke-static {p0, p1}, Lcom/google/common/collect/p3;->m(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method z(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b0;->z(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d0;->n:[I

    array-length v1, v0

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/d0;->n:[I

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/d0;->o:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/d0;->o:[I

    if-ge v1, p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/d0;->n:[I

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/d0;->o:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :cond_0
    return-void
.end method
