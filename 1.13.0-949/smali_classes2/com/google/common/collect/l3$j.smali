.class final Lcom/google/common/collect/l3$j;
.super Lcom/google/common/collect/l3$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l3$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final c:Lcom/google/common/collect/k3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k3<",
            "TE;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/base/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b0<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/k3;Lcom/google/common/base/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/k3<",
            "TE;>;",
            "Lcom/google/common/base/b0<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/l3$n;-><init>(Lcom/google/common/collect/l3$a;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/k3;

    iput-object p1, p0, Lcom/google/common/collect/l3$j;->c:Lcom/google/common/collect/k3;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/b0;

    iput-object p1, p0, Lcom/google/common/collect/l3$j;->d:Lcom/google/common/base/b0;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l3$j;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/l3$j;->d:Lcom/google/common/base/b0;

    invoke-static {v0, v1}, Lcom/google/common/collect/o4;->i(Ljava/util/Set;Lcom/google/common/base/b0;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$j;->d:Lcom/google/common/base/b0;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/l3$j;->d:Lcom/google/common/base/b0;

    const-string v2, "Element %s does not match predicate %s"

    .line 3
    invoke-static {v0, v2, p1, v1}, Lcom/google/common/base/a0;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/l3$j;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/k3;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method c()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$j;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/l3$j;->d:Lcom/google/common/base/b0;

    invoke-interface {v2, p1}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$j;->c:Lcom/google/common/collect/k3;

    .line 2
    invoke-interface {v0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/l3$j$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/l3$j$a;-><init>(Lcom/google/common/collect/l3$j;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/o4;->i(Ljava/util/Set;Lcom/google/common/base/b0;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public e()Lcom/google/common/collect/k5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l3$j;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/l3$j;->d:Lcom/google/common/base/b0;

    invoke-static {v0, v1}, Lcom/google/common/collect/x2;->x(Ljava/util/Iterator;Lcom/google/common/base/b0;)Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/l3$j;->e()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const-string v0, "occurrences"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/collect/y;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l3$j;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/l3$j;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/k3;->remove(Ljava/lang/Object;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
