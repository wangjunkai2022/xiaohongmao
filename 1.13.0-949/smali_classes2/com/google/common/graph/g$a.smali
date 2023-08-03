.class Lcom/google/common/graph/g$a;
.super Lcom/google/common/graph/c;
.source "AbstractValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/g;->s()Lcom/google/common/graph/w;
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
.field final synthetic a:Lcom/google/common/graph/g;


# direct methods
.method constructor <init>(Lcom/google/common/graph/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-direct {p0}, Lcom/google/common/graph/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/g$a;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/g$a;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->b(Ljava/lang/Object;)Ljava/util/Set;

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

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-virtual {v0}, Lcom/google/common/graph/g;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-interface {v0}, Lcom/google/common/graph/t0;->e()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/g;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
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

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-interface {v0}, Lcom/google/common/graph/t0;->h()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/g;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-interface {v0}, Lcom/google/common/graph/t0;->j()Z

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

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->k(Ljava/lang/Object;)Ljava/util/Set;

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

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-interface {v0}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/g$a;->a:Lcom/google/common/graph/g;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/g;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
