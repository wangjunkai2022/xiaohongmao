.class abstract Lcom/google/common/collect/l3$i;
.super Lcom/google/common/collect/o4$k;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o4$k<",
        "Lcom/google/common/collect/k3$a<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/o4$k;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/l3$i;->e()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/k3$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/k3$a;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/k3$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/l3$i;->e()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/google/common/collect/k3$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method abstract e()Lcom/google/common/collect/k3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/k3$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/k3$a;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/google/common/collect/k3$a;->getCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/l3$i;->e()Lcom/google/common/collect/k3;

    move-result-object v2

    .line 6
    invoke-interface {v2, v0, p1, v1}, Lcom/google/common/collect/k3;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
