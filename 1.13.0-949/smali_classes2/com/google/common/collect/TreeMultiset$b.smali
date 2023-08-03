.class Lcom/google/common/collect/TreeMultiset$b;
.super Ljava/lang/Object;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/k3$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/TreeMultiset$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/k3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->k(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/k3$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->m(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/k3$a;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/k3$a;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$f;->l(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->n(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$f;->l(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    :goto_0
    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->l(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/e2;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$f;->y()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/e2;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$f;

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->a()Lcom/google/common/collect/k3$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/k3$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/y;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/k3$a;

    invoke-interface {v2}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/k3$a;

    return-void
.end method
