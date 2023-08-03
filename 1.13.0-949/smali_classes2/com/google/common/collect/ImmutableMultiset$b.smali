.class public Lcom/google/common/collect/ImmutableMultiset$b;
.super Lcom/google/common/collect/ImmutableCollection$b;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/common/collect/q3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q3<",
            "TE;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/q3;->d(I)Lcom/google/common/collect/q3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    .line 8
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    return-void
.end method

.method static n(Ljava/lang/Iterable;)Lcom/google/common/collect/q3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/q3<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/e4;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/e4;

    iget-object p0, p0, Lcom/google/common/collect/e4;->d:Lcom/google/common/collect/q3;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/f;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/google/common/collect/f;

    iget-object p0, p0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->h([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->j(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$b;->l()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultiset$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public varargs h([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/k3;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/l3;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/k3;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset$b;->n(Ljava/lang/Iterable;)Lcom/google/common/collect/q3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-virtual {p1}, Lcom/google/common/collect/q3;->D()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/q3;->D()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/q3;->e(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/q3;->f()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->j(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->l(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ImmutableMultiset$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->t(I)I

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-virtual {v1}, Lcom/google/common/collect/q3;->D()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/q3;->e(I)V

    .line 10
    invoke-interface {p1}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/k3$a;

    .line 11
    invoke-interface {v0}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/k3$a;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMultiset$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    goto :goto_1

    .line 12
    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    :cond_2
    return-object p0
.end method

.method public j(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/common/collect/q3;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-direct {v0, v2}, Lcom/google/common/collect/q3;-><init>(Lcom/google/common/collect/q3;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    .line 3
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    .line 5
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->g(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/q3;->v(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public l()Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-virtual {v0}, Lcom/google/common/collect/q3;->D()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/common/collect/q3;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/q3;-><init>(Lcom/google/common/collect/q3;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    .line 7
    new-instance v0, Lcom/google/common/collect/e4;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/e4;-><init>(Lcom/google/common/collect/q3;)V

    return-object v0
.end method

.method public m(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/common/collect/r3;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-direct {v1, v2}, Lcom/google/common/collect/r3;-><init>(Lcom/google/common/collect/q3;)V

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/google/common/collect/q3;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-direct {v1, v2}, Lcom/google/common/collect/q3;-><init>(Lcom/google/common/collect/q3;)V

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    .line 6
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->d:Z

    .line 7
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    .line 8
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/q3;->w(Ljava/lang/Object;)I

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Lcom/google/common/collect/q3;

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/q3;->v(Ljava/lang/Object;I)I

    :goto_1
    return-object p0
.end method
