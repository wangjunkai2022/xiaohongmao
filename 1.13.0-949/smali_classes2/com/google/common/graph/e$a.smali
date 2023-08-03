.class Lcom/google/common/graph/e$a;
.super Lcom/google/common/graph/c;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/e;->s()Lcom/google/common/graph/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/c<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/e;


# direct methods
.method constructor <init>(Lcom/google/common/graph/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-direct {p0}, Lcom/google/common/graph/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/e$a;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/e$a;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/r<",
            "TN;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/common/graph/c;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/graph/e$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/e$a$a;-><init>(Lcom/google/common/graph/e$a;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->e()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->h()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->j()Z

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
