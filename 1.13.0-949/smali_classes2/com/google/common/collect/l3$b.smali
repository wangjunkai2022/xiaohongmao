.class final Lcom/google/common/collect/l3$b;
.super Lcom/google/common/collect/l3$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l3;->m(Lcom/google/common/collect/k3;Lcom/google/common/collect/k3;)Lcom/google/common/collect/k3;
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

    iput-object p1, p0, Lcom/google/common/collect/l3$b;->c:Lcom/google/common/collect/k3;

    iput-object p2, p0, Lcom/google/common/collect/l3$b;->d:Lcom/google/common/collect/k3;

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

    iget-object v0, p0, Lcom/google/common/collect/l3$b;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/l3$b;->d:Lcom/google/common/collect/k3;

    invoke-interface {v1}, Lcom/google/common/collect/k3;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/o4;->n(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/o4$m;

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

.method public count(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$b;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/l3$b;->d:Lcom/google/common/collect/k3;

    invoke-interface {v1, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
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

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$b;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/l3$b$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/l3$b$a;-><init>(Lcom/google/common/collect/l3$b;Ljava/util/Iterator;)V

    return-object v1
.end method
