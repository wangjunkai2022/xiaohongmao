.class abstract Lcom/google/common/graph/u;
.super Lcom/google/common/graph/e;
.source "ForwardingNetwork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/e<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/graph/e;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Lcom/google/common/graph/r;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->C(Lcom/google/common/graph/r;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/k0;->D(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/Object;)Lcom/google/common/graph/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/r<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    return-object p1
.end method

.method public G()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->G()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public H(Lcom/google/common/graph/r;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->H(Lcom/google/common/graph/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->J(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected abstract Q()Lcom/google/common/graph/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/u;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/u;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

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
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/k0;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->e()Z

    move-result v0

    return v0
.end method

.method public f(Lcom/google/common/graph/r;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->f(Lcom/google/common/graph/r;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->g(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->h()Lcom/google/common/graph/ElementOrder;

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

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->l(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->m()Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->u(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->v(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/k0;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/u;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->x()Z

    move-result v0

    return v0
.end method
