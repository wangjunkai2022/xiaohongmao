.class public abstract Lcom/google/common/collect/s1;
.super Lcom/google/common/collect/e1;
.source "ForwardingMultiset.java"

# interfaces
.implements Lcom/google/common/collect/k3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/s1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e1<",
        "TE;>;",
        "Lcom/google/common/collect/k3<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/e1;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    return-object v0
.end method

.method protected N(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/l3;->c(Lcom/google/common/collect/k3;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected O()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/x2;->h(Ljava/util/Iterator;)V

    return-void
.end method

.method protected P(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1;->count(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected S(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/s1;->remove(Ljava/lang/Object;I)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected T(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/l3;->p(Lcom/google/common/collect/k3;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected U(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/l3;->s(Lcom/google/common/collect/k3;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected X()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract Y()Lcom/google/common/collect/k3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected Z(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/s1;->add(Ljava/lang/Object;I)I

    return v0
.end method

.method protected a0(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/s1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/k3$a;

    .line 2
    invoke-interface {v1}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/google/common/collect/k3$a;->getCount()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public add(Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/k3;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method protected b0(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/l3;->i(Lcom/google/common/collect/k3;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected c0()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected d0()Ljava/util/Iterator;
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

.method protected e0(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/l3;->v(Lcom/google/common/collect/k3;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/k3;->elementSet()Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected f0(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/l3;->w(Lcom/google/common/collect/k3;Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method protected g0()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/l3;->o(Lcom/google/common/collect/k3;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/k3;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/k3;->remove(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/k3;->setCount(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/k3;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method
