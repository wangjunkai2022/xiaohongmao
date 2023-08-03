.class public Lcom/google/common/collect/ImmutableSet$a;
.super Lcom/google/common/collect/ImmutableCollection$a;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field e:[Ljava/lang/Object;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->l(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    return-void
.end method

.method private m(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/h2;->c(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 5
    aput-object p1, v3, v2

    .line 6
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$a;->f:I

    .line 7
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;

    return-void

    .line 8
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->k(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->l(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$a;->n()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:I

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->l(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->m(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    .line 5
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;

    return-object p0
.end method

.method public varargs j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableSet$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;

    :cond_1
    return-object p0
.end method

.method public k(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    :cond_1
    return-object p0
.end method

.method public l(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public n()Lcom/google/common/collect/ImmutableSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->l(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 3
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    .line 4
    invoke-static {v0, v2}, Lcom/google/common/collect/ImmutableSet;->j(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:[Ljava/lang/Object;

    :goto_0
    move-object v3, v0

    .line 5
    new-instance v0, Lcom/google/common/collect/f4;

    iget v4, p0, Lcom/google/common/collect/ImmutableSet$a;->f:I

    iget-object v5, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/common/collect/f4;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/ImmutableSet;->k(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:I

    .line 8
    :goto_1
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->d:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/google/common/collect/ImmutableSet$a;->e:[Ljava/lang/Object;

    return-object v0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
