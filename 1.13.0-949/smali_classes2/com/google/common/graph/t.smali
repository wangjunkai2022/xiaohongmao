.class abstract Lcom/google/common/graph/t;
.super Lcom/google/common/graph/c;
.source "ForwardingGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/c<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/graph/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected M()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/h;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected abstract P()Lcom/google/common/graph/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/h<",
            "TN;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/t;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/h;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/t;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/h;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/h;->e()Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/h;->f(Lcom/google/common/graph/r;)Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/h;->g(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/h;->h()Lcom/google/common/graph/ElementOrder;

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

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/h;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/h;->j()Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/h;->k(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/h;->m()Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/t;->P()Lcom/google/common/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/h;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
