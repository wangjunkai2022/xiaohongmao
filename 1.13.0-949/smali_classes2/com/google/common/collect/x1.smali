.class public abstract Lcom/google/common/collect/x1;
.super Lcom/google/common/collect/e1;
.source "ForwardingSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e1<",
        "TE;>;",
        "Ljava/util/Set<",
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

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->Y()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->Y()Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/google/common/collect/o4;->I(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected abstract Y()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected Z(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/o4;->g(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected a0()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/o4;->k(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->Y()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->Y()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method
