.class final Lcom/google/common/collect/l3$a;
.super Lcom/google/common/collect/l3$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l3;->y(Lcom/google/common/collect/k3;Lcom/google/common/collect/k3;)Lcom/google/common/collect/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/k3;

.field final synthetic d:Lcom/google/common/collect/k3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k3;Lcom/google/common/collect/k3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/l3$a;->c:Lcom/google/common/collect/k3;

    iput-object p2, p0, Lcom/google/common/collect/l3$a;->d:Lcom/google/common/collect/k3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/l3$n;-><init>(Lcom/google/common/collect/l3$a;)V

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

    iget-object v0, p0, Lcom/google/common/collect/l3$a;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/l3$a;->d:Lcom/google/common/collect/k3;

    invoke-interface {v1}, Lcom/google/common/collect/k3;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/o4;->N(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/o4$m;

    move-result-object v0

    return-object v0
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

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/l3$a;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/l3$a;->d:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->contains(Ljava/lang/Object;)Z

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

.method public count(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/l3$a;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/l3$a;->d:Lcom/google/common/collect/k3;

    invoke-interface {v1, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method d()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$a;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/l3$a;->d:Lcom/google/common/collect/k3;

    invoke-interface {v1}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/google/common/collect/l3$a$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/l3$a$a;-><init>(Lcom/google/common/collect/l3$a;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l3$a;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/l3$a;->d:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
